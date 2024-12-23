#include "user_config.h"

XGpio Gpio;

int Gpiopl_init(XGpio *InstancePtr, u32 DeviceId)
{

	int Status;
	/* Initialize AXI GPIO */
	Status = XGpio_Initialize(InstancePtr, DeviceId);
	if (Status != XST_SUCCESS) {
		xil_printf("AXI GPIO config failed!\r\n");
		return XST_FAILURE;
	}

	//设置1bit，为输出模式
	XGpio_SetDataDirection(InstancePtr, 1, 0x0);//channel 1 output

	XGpio_DiscreteWrite(&Gpio, 1, 0x0);

    return 1;
}

void Gpiopl_toggle()
{
	//表示已经接受到指令，拉高
	XGpio_DiscreteWrite(&Gpio, 1, 0x1);
	//等待1s，让pl端写完数据
	sleep(1);
	//拉低表示数据写完一次
	XGpio_DiscreteWrite(&Gpio, 1, 0x0);
}


//err_t trans_ddr_data(void *arg, struct tcp_pcb *tpcb, struct pbuf *p, err_t err)
//{
//    /* 检查是否有错误或连接是否已关闭 */
//    if (err != ERR_OK || p == NULL) {
//        if (p == NULL) {
//            tcp_close(tpcb);             // 关闭连接
//            tcp_recv(tpcb, NULL);        // 停止接收数据回调
//            return ERR_OK;
//        }
//        /* 处理接收过程中的错误 */
//        LWIP_DEBUGF(TCP_DEBUG, ("trans_ddr_data: error %d\n", err));
//        return err;
//    }
//
//    /* 读取硬件数据 */
//    uint16_t data = Xil_In16(0x10000000);  // 读取硬件地址数据
//    char data_to_send[32];                 // 定义一个缓冲区
//    int data_len = snprintf(data_to_send, sizeof(data_to_send), "%u", data); // 格式化为字符串
//
//    /* 使用指针变量来操作数组 */
//    char *data_ptr = data_to_send;         // 使用指针操作数组
//
//    /* 分片发送数据 */
//    while (data_len > 0) {
//        u16_t send_len = tcp_sndbuf(tpcb) > data_len ? data_len : tcp_sndbuf(tpcb);
//        err = tcp_write(tpcb, data_ptr, send_len, TCP_WRITE_FLAG_COPY);
//        if (err != ERR_OK) {
//            LWIP_DEBUGF(TCP_DEBUG, ("trans_ddr_data: tcp_write error %d\n", err));
//            return err;
//        }
//        data_ptr += send_len; // 移动指针
//        data_len -= send_len; // 剩余数据长度
//    }
//
//    /* 释放接收到的 pbuf，避免内存泄漏 */
//    pbuf_free(p);
//
//    return ERR_OK;
//}
//

