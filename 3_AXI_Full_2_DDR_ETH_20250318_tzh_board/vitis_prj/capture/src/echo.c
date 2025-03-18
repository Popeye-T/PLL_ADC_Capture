/*
 * Copyright (C) 2009 - 2019 Xilinx, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 *
 */

#include <stdio.h>
#include <string.h>
#include "user_config.h"
#include "lwip/err.h"
#include "lwip/tcp.h"
#if defined(__arm__) || defined(__aarch64__)
#include "xil_printf.h"
#endif

int transfer_data()
{
    return 0;
}

void print_app_header()
{
#if (LWIP_IPV6 == 0)
    xil_printf("\n\r\n\r-----lwIP TCP echo server ------\n\r");
#else
    xil_printf("\n\r\n\r-----lwIPv6 TCP echo server ------\n\r");
#endif
    xil_printf("TCP packets sent to port 6001 will be echoed back\n\r");
}

err_t recv_callback(void *arg, struct tcp_pcb *tpcb, struct pbuf *p, err_t err)
{
    if (err != ERR_OK || p == NULL)
    {
        if (p == NULL)
        {
            tcp_close(tpcb);
            tcp_recv(tpcb, NULL);
            return ERR_OK;
        }
        LWIP_DEBUGF(TCP_DEBUG, ("echo_callback: error %d\n", err));
        return err;
    }

    tcp_recved(tpcb, p->len);

    /* 回显接收到的数据 */
    //err = tcp_write(tpcb, p->payload, p->len, TCP_WRITE_FLAG_COPY);
    /*if (err != ERR_OK)
    {
        LWIP_DEBUGF(TCP_DEBUG, ("echo_callback: tcp_write error for payload %d\n", err));
        tcp_close(tpcb);
        return err;
    }
*/
    // 写指令的气势
    Gpiopl_toggle();
    // 传输已经写入DDR的数据
    send_hardware_data(tpcb);

    pbuf_free(p);
    return ERR_OK;
}

err_t accept_callback(void *arg, struct tcp_pcb *newpcb, err_t err)
{
    static int connection = 1;

    /* set the receive callback for this connection */
    tcp_recv(newpcb, recv_callback);

    /* just use an integer number indicating the connection id as the
       callback argument */
    tcp_arg(newpcb, (void *)(UINTPTR)connection);

    /* increment for subsequent accepted connections */
    connection++;

    return ERR_OK;
}

int start_application()
{
    struct tcp_pcb *pcb;
    err_t err;
    unsigned port = 7;

    /* create new TCP PCB structure */
    pcb = tcp_new_ip_type(IPADDR_TYPE_ANY);
    if (!pcb)
    {
        xil_printf("Error creating PCB. Out of Memory\n\r");
        return -1;
    }

    /* bind to specified @port */
    err = tcp_bind(pcb, IP_ANY_TYPE, port);
    if (err != ERR_OK)
    {
        xil_printf("Unable to bind to port %d: err = %d\n\r", port, err);
        return -2;
    }

    /* we do not need any arguments to callback functions */
    tcp_arg(pcb, NULL);

    /* listen for connections */
    pcb = tcp_listen(pcb);
    if (!pcb)
    {
        xil_printf("Out of memory while tcp_listen\n\r");
        return -3;
    }

    /* specify callback to use for incoming connections */
    tcp_accept(pcb, accept_callback);

    xil_printf("TCP echo server started @ port %d\n\r", port);

    return 0;
}

void send_hardware_data(struct tcp_pcb *tpcb)
{
    uint32_t base_address = 0x10003000; // 初始硬件地址
    uint32_t data;
    for (int i = 0; i < 10000; i++)
    {
        /* 刷新硬件缓存 */
        Xil_DCacheInvalidateRange(base_address, 32);
        /* 硬件地址递增 */
        base_address += 4;
    }
    base_address = 0x10003000;
    for (int i = 0; i < 10000; i++)
    {
        /* 读取数据 */
        data = Xil_In32(base_address);

        /* 格式化为 16 进制字符串并加回车符 */
        char data_trans[160];
        int data_trans_len = snprintf(data_trans, sizeof(data_trans), "%08X",data);
        if (data_trans_len >= sizeof(data_trans) || data_trans_len < 0)
        {
            LWIP_DEBUGF(TCP_DEBUG, ("send_hardware_data: snprintf error\n"));
            return ERR_BUF;
        }

        /* 检查 TCP 缓冲区 */
        if (tcp_sndbuf(tpcb) < data_trans_len)
        {
            LWIP_DEBUGF(TCP_DEBUG, ("send_hardware_data: No space in tcp_sndbuf\n"));
            continue; // 跳过发送，继续处理下一个地址
        }

        /* 发送数据 */
        err_t err = tcp_write(tpcb, data_trans, data_trans_len, TCP_WRITE_FLAG_COPY);
        if (err != ERR_OK)
        {
            LWIP_DEBUGF(TCP_DEBUG, ("send_hardware_data: tcp_write error %d\n", err));
            tcp_close(tpcb);
            return err;
        }

        /* 硬件地址递增 */
        base_address += 4;
    }

    //    return ERR_OK;
}
