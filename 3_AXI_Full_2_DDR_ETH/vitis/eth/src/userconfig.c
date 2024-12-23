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

	//����1bit��Ϊ���ģʽ
	XGpio_SetDataDirection(InstancePtr, 1, 0x0);//channel 1 output

	XGpio_DiscreteWrite(&Gpio, 1, 0x0);

    return 1;
}

void Gpiopl_toggle()
{
	//��ʾ�Ѿ����ܵ�ָ�����
	XGpio_DiscreteWrite(&Gpio, 1, 0x1);
	//�ȴ�1s����pl��д������
	sleep(1);
	//���ͱ�ʾ����д��һ��
	XGpio_DiscreteWrite(&Gpio, 1, 0x0);
}


//err_t trans_ddr_data(void *arg, struct tcp_pcb *tpcb, struct pbuf *p, err_t err)
//{
//    /* ����Ƿ��д���������Ƿ��ѹر� */
//    if (err != ERR_OK || p == NULL) {
//        if (p == NULL) {
//            tcp_close(tpcb);             // �ر�����
//            tcp_recv(tpcb, NULL);        // ֹͣ�������ݻص�
//            return ERR_OK;
//        }
//        /* ������չ����еĴ��� */
//        LWIP_DEBUGF(TCP_DEBUG, ("trans_ddr_data: error %d\n", err));
//        return err;
//    }
//
//    /* ��ȡӲ������ */
//    uint16_t data = Xil_In16(0x10000000);  // ��ȡӲ����ַ����
//    char data_to_send[32];                 // ����һ��������
//    int data_len = snprintf(data_to_send, sizeof(data_to_send), "%u", data); // ��ʽ��Ϊ�ַ���
//
//    /* ʹ��ָ��������������� */
//    char *data_ptr = data_to_send;         // ʹ��ָ���������
//
//    /* ��Ƭ�������� */
//    while (data_len > 0) {
//        u16_t send_len = tcp_sndbuf(tpcb) > data_len ? data_len : tcp_sndbuf(tpcb);
//        err = tcp_write(tpcb, data_ptr, send_len, TCP_WRITE_FLAG_COPY);
//        if (err != ERR_OK) {
//            LWIP_DEBUGF(TCP_DEBUG, ("trans_ddr_data: tcp_write error %d\n", err));
//            return err;
//        }
//        data_ptr += send_len; // �ƶ�ָ��
//        data_len -= send_len; // ʣ�����ݳ���
//    }
//
//    /* �ͷŽ��յ��� pbuf�������ڴ�й© */
//    pbuf_free(p);
//
//    return ERR_OK;
//}
//

