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
#include"AD9516.h"
#include <stdio.h>
#include "sleep.h"
#include "xparameters.h"

#include "netif/xadapter.h"

#include "platform.h"
#include "platform_config.h"
#if defined (__arm__) || defined(__aarch64__)
#include "xil_printf.h"
#endif

#include "lwip/tcp.h"
#include "xil_cache.h"
#include "echo.h"
#include "user_config.h"
#if LWIP_IPV6==1
#include "lwip/ip.h"
#else
#if LWIP_DHCP==1
#include "lwip/dhcp.h"
#endif
#endif

/* defined by each RAW mode application */
void print_app_header();
int start_application();
int transfer_data();
void tcp_fasttmr(void);
void tcp_slowtmr(void);
#define AXI_GPIO_DEV_ID	        XPAR_AXI_GPIO_0_DEVICE_ID
/* missing declaration in lwIP */
extern XGpio Gpio;
#if LWIP_IPV6==0
#if LWIP_DHCP==1
extern volatile int dhcp_timoutcntr;
err_t dhcp_start(struct netif *netif);
#endif
#endif

extern volatile int TcpFastTmrFlag;
extern volatile int TcpSlowTmrFlag;
static struct netif server_netif;
struct netif *echo_netif;

#if LWIP_IPV6==1
void print_ip6(char *msg, ip_addr_t *ip)
{
	print(msg);
	xil_printf(" %x:%x:%x:%x:%x:%x:%x:%x\n\r",
			IP6_ADDR_BLOCK1(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK2(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK3(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK4(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK5(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK6(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK7(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK8(&ip->u_addr.ip6));

}
#else
void
print_ip(char *msg, ip_addr_t *ip)
{
	print(msg);
	xil_printf("%d.%d.%d.%d\n\r", ip4_addr1(ip), ip4_addr2(ip),
			ip4_addr3(ip), ip4_addr4(ip));
}

void
print_ip_settings(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{

	print_ip("Board IP: ", ip);
	print_ip("Netmask : ", mask);
	print_ip("Gateway : ", gw);
}
#endif

#if defined (__arm__) && !defined (ARMR5)
#if XPAR_GIGE_PCS_PMA_SGMII_CORE_PRESENT == 1 || XPAR_GIGE_PCS_PMA_1000BASEX_CORE_PRESENT == 1
int ProgramSi5324(void);
int ProgramSfpPhy(void);
#endif
#endif

#ifdef XPS_BOARD_ZCU102
#ifdef XPAR_XIICPS_0_DEVICE_ID
int IicPhyReset(void);
#endif
#endif

unsigned char cdata = 0;
unsigned char slave_address[2];
unsigned char test_buf[10];
int main()
{
	Gpiopl_init(&Gpio, AXI_GPIO_DEV_ID);

#if LWIP_IPV6==0
	ip_addr_t ipaddr, netmask, gw;

#endif
	/* the mac address of the board. this should be unique per board */
	unsigned char mac_ethernet_address[] =
	{ 0x00, 0x0a, 0x35, 0x00, 0x01, 0x02 };

	echo_netif = &server_netif;
#if defined (__arm__) && !defined (ARMR5)
#if XPAR_GIGE_PCS_PMA_SGMII_CORE_PRESENT == 1 || XPAR_GIGE_PCS_PMA_1000BASEX_CORE_PRESENT == 1
	ProgramSi5324();
	ProgramSfpPhy();
#endif
#endif

/* Define this board specific macro in order perform PHY reset on ZCU102 */
#ifdef XPS_BOARD_ZCU102
	if(IicPhyReset()) {
		xil_printf("Error performing PHY reset \n\r");
		return -1;
	}
#endif

	init_platform();
	Gpio_Init(GPIO_DEVICE_ID);
	usleep(100);


	     NSS_H();
	     cdata = SERIAL_DEFAULT | SERIAL_SDO_ACTIVE;
	     	WriteReg(SERIAL_PORT_CONFIGURATION,&cdata,ONE_BYTE,1);
	     	UpdateRegister();

	     	usleep(100);
	     	ReadReg(0x003,slave_address,ONE_BYTE,1);
	     	UpdateRegister();

	     	printf("0x%x\n\r",slave_address[0]);//打印寄存器地址信息
	     	//设置VCO内部参考时钟
	     		cdata = 0x02;
	     		WriteReg(0x1e1,&cdata,ONE_BYTE,1);
	     		ReadReg(0x1e1,test_buf,ONE_BYTE,1);
	     		printf("0x1e1 = 0x%x\n\r",test_buf[0]);
	     		UpdateRegister();

	     		//设置时钟差分
	     		cdata = 0x07;
	     		WriteReg(0x01c,&cdata,ONE_BYTE,1);
	     		ReadReg(0x01c,test_buf,ONE_BYTE,1);
	     		printf("0x01c = 0x%x\n\r",test_buf[0]);
	     		UpdateRegister();

	     		//PLL使能
	     		cdata = 0x7c;
	     		WriteReg(0x010,&cdata,ONE_BYTE,1);
	     		ReadReg(0x010,test_buf,ONE_BYTE,1);
	     		printf("0x010 = 0x%x\n\r",test_buf[0]);
	     		UpdateRegister();

	     		//R=1
	     		cdata = 0x01;
	     		WriteReg(0x011,&cdata,ONE_BYTE,1);
	     		ReadReg(0x011,test_buf,ONE_BYTE,1);
	     		printf("R = 0x%x\n\r",test_buf[0]);
	     		UpdateRegister();

	     		cdata = 0x00;
	     		WriteReg(0x012,&cdata,ONE_BYTE,1);
	     		ReadReg(0x012,test_buf,ONE_BYTE,1);
	     		printf("R = 0x%x\n\r",test_buf[0]);
	     		UpdateRegister();

	     		//P
	     		cdata = 0x06;
	     		WriteReg(0x016,&cdata,ONE_BYTE,1);
	     		ReadReg(0x016,test_buf,ONE_BYTE,1);
	     		printf("P = 0x%x\n\r",test_buf[0]);
	     		UpdateRegister();

	     		//A=0
	     		cdata = 0x00;
	     		WriteReg(0x013,&cdata,ONE_BYTE,1);
	     		ReadReg(0x013,test_buf,ONE_BYTE,1);
	     		printf("A = 0x%x\n\r",test_buf[0]);
	     		UpdateRegister();

	     		//B=57
	     		cdata = 0x03;
	     		WriteReg(0x014,&cdata,ONE_BYTE,1);
	     		ReadReg(0x014,test_buf,ONE_BYTE,1);
	     		printf("B = 0x%x\n\r",test_buf[0]);
	     		UpdateRegister();

	     		//VCO分频，Dvco=2,这里会被除以2
	     		cdata = 0x00;
	     		WriteReg(0x1e0,&cdata,ONE_BYTE,1);
	     		ReadReg(0x1e0,test_buf,ONE_BYTE,1);
	     		printf("Dvco = 0x%x\n\r",test_buf[0]);
	     		UpdateRegister();


	     	/*
	     	 * D0、D1、D2用于out0-out5分频使用，此处未用到，绕过
	     	 * */
	     		//绕过D0，默认绕过
	     		cdata = 0x80;
	     		WriteReg(0x191,&cdata,ONE_BYTE,1);
	     		ReadReg(0x191,test_buf,ONE_BYTE,1);
	     		printf("DX = 0x%x\n\r",test_buf[0]);
	     		UpdateRegister();
	     		//绕过D1
	     		cdata = 0x80;
	     		WriteReg(0x194,&cdata,ONE_BYTE,1);
	     		ReadReg(0x194,test_buf,ONE_BYTE,1);
	     		printf("DX = 0x%x\n\r",test_buf[0]);
	     		UpdateRegister();
	     		//绕过D2，默认绕过
	     		cdata = 0x80;
	     		WriteReg(0x197,&cdata,ONE_BYTE,1);
	     		ReadReg(0x197,test_buf,ONE_BYTE,1);
	     		printf("DX = 0x%x\n\r",test_buf[0]);
	     		UpdateRegister();


	     		/*
	     		 * 200M 0X10 0X00
	     		 * 120M	0x12 0x00
	     		 * 100M 0X13 0X00
	     		 * */

	     	/*
	     	 *D3、D4用于out6-out9分频使用，需要对寄存器进行配置，可以配置相位、占空比等等
	     	 */
	     		//D3.1,			ADC1		210MHz
	     		cdata = 0X13;
	     		WriteReg(0x199,&cdata,ONE_BYTE,1);
	     		ReadReg(0x199,test_buf,ONE_BYTE,1);
	     		printf("0x199 = 0x%x\n\r",test_buf[0]);
	     		UpdateRegister();
	     		//D3.2,			ADC2		210MHz
	     		cdata = 0x00;
	     		WriteReg(0x19b,&cdata,ONE_BYTE,1);
	     		ReadReg(0x19b,test_buf,ONE_BYTE,1);
	     		printf("0x19b = 0x%x\n\r",test_buf[0]);
	     		UpdateRegister();


	     		//D4.1,			MGT			125MHz
	     		cdata = 0X13;//120MHz
	     		WriteReg(0x19e,&cdata,ONE_BYTE,1);
	     		ReadReg(0x19e,test_buf,ONE_BYTE,1);
	     		printf("0x19e = 0x%x\n\r",test_buf[0]);
	     		UpdateRegister();
	     		//D4.2,			FPGA		100MHz		0x28		已实现
	     		cdata = 0x00;
	     		WriteReg(0x1a0,&cdata,ONE_BYTE,1);
	     		ReadReg(0x1a0,test_buf,ONE_BYTE,1);
	     		printf("0x1a0 = 0x%x\n\r",test_buf[0]);
	     		UpdateRegister();



	     	/*
	     	 * 对out0-9的输出状态、输出模式进行配置
	     	 * 下面的配置对着手册查应该是没有问题的，重点是计算上面的分频值
	     	 */
	     		//****************************
	     		//out0-5是LVPECL模式
	     		//****************************

	     		//关闭out0
	     		cdata = 0x0a;//查数据手册
	     		WriteReg(0x0f0,&cdata,ONE_BYTE,1);
	     		ReadReg(0x0f0,test_buf,ONE_BYTE,1);
	     		printf("0x0f0 = 0x%x\n\r",test_buf[0]);
	     		UpdateRegister();

	     		//关闭out1
	     		cdata = 0x0a;//查数据手册
	     		WriteReg(0x0f1,&cdata,ONE_BYTE,1);
	     		ReadReg(0x0f1,test_buf,ONE_BYTE,1);
	     		printf("0x0f1 = 0x%x\n\r",test_buf[0]);
	     		UpdateRegister();

	     		//关闭out2
	     		cdata = 0x0a;//查数据手册
	     		WriteReg(0x0f2,&cdata,ONE_BYTE,1);
	     		ReadReg(0x0f2,test_buf,ONE_BYTE,1);
	     		printf("0x0f2 = 0x%x\n\r",test_buf[0]);
	     		UpdateRegister();

	     		//关闭out3
	     		cdata = 0x0a;//查数据手册
	     		WriteReg(0x0f3,&cdata,ONE_BYTE,1);
	     		ReadReg(0x0f3,test_buf,ONE_BYTE,1);
	     		printf("0x0f3 = 0x%x\n\r",test_buf[0]);
	     		UpdateRegister();

	     		//关闭out4
	     		cdata = 0x0a;//查数据手册
	     		WriteReg(0x0f4,&cdata,ONE_BYTE,1);
	     		ReadReg(0x0f4,test_buf,ONE_BYTE,1);
	     		printf("0x0f4 = 0x%x\n\r",test_buf[0]);
	     		UpdateRegister();

	     		//关闭out5
	     		cdata = 0x0a;//查数据手册
	     		WriteReg(0x0f5,&cdata,ONE_BYTE,1);
	     		ReadReg(0x0f5,test_buf,ONE_BYTE,1);
	     		printf("0x0f5 = 0x%x\n\r",test_buf[0]);
	     		UpdateRegister();

	     		//****************************
	     		//out6-9	LVDS/CMOS可选
	     		//****************************

	     		//打开out6,LVDS
	     		cdata = 0xDA;//查数据手册
	     		WriteReg(0x140,&cdata,ONE_BYTE,1);
	     		ReadReg(0x140,test_buf,ONE_BYTE,1);
	     		printf("0x140 = 0x%x\n\r",test_buf[0]);
	     		UpdateRegister();

	     		//打开out7,LVDS
	     		cdata = 0xDA;//查数据手册
	     		WriteReg(0x141,&cdata,ONE_BYTE,1);
	     		ReadReg(0x141,test_buf,ONE_BYTE,1);
	     		printf("0x141 = 0x%x\n\r",test_buf[0]);
	     		UpdateRegister();

	     		//关闭out8
	     		cdata = 0x5A;//查数据手册
	     		WriteReg(0x142,&cdata,ONE_BYTE,1);
	     		ReadReg(0x142,test_buf,ONE_BYTE,1);
	     		printf("0x142 = 0x%x\n\r",test_buf[0]);
	     		UpdateRegister();

	     		//关闭out9
	     		cdata = 0x5A;//查数据手册
	     		WriteReg(0x143,&cdata,ONE_BYTE,1);
	     		ReadReg(0x143,test_buf,ONE_BYTE,1);
	     		printf("0x143 = 0x%x\n\r",test_buf[0]);
	     		UpdateRegister();

	     		//拉低片选开始工作
	     		NSS_L();
#if LWIP_IPV6==0
#if LWIP_DHCP==1
    ipaddr.addr = 0;
	gw.addr = 0;
	netmask.addr = 0;
#else
	/* initialize IP addresses to be used */
	IP4_ADDR(&ipaddr,  192, 168,   1, 10);
	IP4_ADDR(&netmask, 255, 255, 255,  0);
	IP4_ADDR(&gw,      192, 168,   1,  1);
#endif
#endif
	print_app_header();

	lwip_init();

#if (LWIP_IPV6 == 0)
	/* Add network interface to the netif_list, and set it as default */
	if (!xemac_add(echo_netif, &ipaddr, &netmask,
						&gw, mac_ethernet_address,
						PLATFORM_EMAC_BASEADDR)) {
		xil_printf("Error adding N/W interface\n\r");
		return -1;
	}
#else
	/* Add network interface to the netif_list, and set it as default */
	if (!xemac_add(echo_netif, NULL, NULL, NULL, mac_ethernet_address,
						PLATFORM_EMAC_BASEADDR)) {
		xil_printf("Error adding N/W interface\n\r");
		return -1;
	}
	echo_netif->ip6_autoconfig_enabled = 1;

	netif_create_ip6_linklocal_address(echo_netif, 1);
	netif_ip6_addr_set_state(echo_netif, 0, IP6_ADDR_VALID);

	print_ip6("\n\rBoard IPv6 address ", &echo_netif->ip6_addr[0].u_addr.ip6);

#endif
	netif_set_default(echo_netif);

	/* now enable interrupts */
	platform_enable_interrupts();

	/* specify that the network if is up */
	netif_set_up(echo_netif);

#if (LWIP_IPV6 == 0)
#if (LWIP_DHCP==1)
	/* Create a new DHCP client for this interface.
	 * Note: you must call dhcp_fine_tmr() and dhcp_coarse_tmr() at
	 * the predefined regular intervals after starting the client.
	 */
	dhcp_start(echo_netif);
	dhcp_timoutcntr = 24;

	while(((echo_netif->ip_addr.addr) == 0) && (dhcp_timoutcntr > 0))
		xemacif_input(echo_netif);

	if (dhcp_timoutcntr <= 0) {
		if ((echo_netif->ip_addr.addr) == 0) {
			xil_printf("DHCP Timeout\r\n");
			xil_printf("Configuring default IP of 192.168.1.10\r\n");
			IP4_ADDR(&(echo_netif->ip_addr),  192, 168,   1, 10);
			IP4_ADDR(&(echo_netif->netmask), 255, 255, 255,  0);
			IP4_ADDR(&(echo_netif->gw),      192, 168,   1,  1);
		}
	}

	ipaddr.addr = echo_netif->ip_addr.addr;
	gw.addr = echo_netif->gw.addr;
	netmask.addr = echo_netif->netmask.addr;
#endif

	print_ip_settings(&ipaddr, &netmask, &gw);

#endif
	/* start the application (web server, rxtest, txtest, etc..) */
	start_application();

	/* receive and process packets */
	while (1) {
		if (TcpFastTmrFlag) {
			tcp_fasttmr();
			TcpFastTmrFlag = 0;
		}
		if (TcpSlowTmrFlag) {
			tcp_slowtmr();
			TcpSlowTmrFlag = 0;
		}
		xemacif_input(echo_netif);
		transfer_data();
	}

	/* never reached */
	cleanup_platform();

	return 0;
}
