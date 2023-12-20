/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWA RE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include"AD9516.h"
#include "sleep.h"

unsigned char cdata = 0;
unsigned char slave_address[2];
unsigned char test_buf[10];

int main()
{
    init_platform();

    xil_printf("Hello World\n\r");
    xil_printf("Successfully ran Hello World application\n\r");

    Gpio_Init(GPIO_DEVICE_ID);

    usleep(100);


    NSS_H();

/*
 * ���ó�ʼ��Ϣ����ӡ�Ĵ�����ַ����д�����Ƿ�����
 */
	cdata = SERIAL_DEFAULT | SERIAL_SDO_ACTIVE;
	WriteReg(SERIAL_PORT_CONFIGURATION,&cdata,ONE_BYTE,1);
	UpdateRegister();

	usleep(100);
	ReadReg(0x003,slave_address,ONE_BYTE,1);
	UpdateRegister();

	printf("0x%x\n\r",slave_address[0]);//��ӡ�Ĵ�����ַ��Ϣ

/*
 * ����ʱ�ӡ���Ƶ��ֵ����Ҫ���������ֲ���м���
 */
	//����VCO�ڲ��ο�ʱ��
	cdata = 0x02;
	WriteReg(0x1e1,&cdata,ONE_BYTE,1);
	ReadReg(0x1e1,test_buf,ONE_BYTE,1);
	printf("0x1e1 = 0x%x\n\r",test_buf[0]);
	UpdateRegister();

	//����ʱ�Ӳ��
	cdata = 0x07;
	WriteReg(0x01c,&cdata,ONE_BYTE,1);
	ReadReg(0x01c,test_buf,ONE_BYTE,1);
	printf("0x01c = 0x%x\n\r",test_buf[0]);
	UpdateRegister();

	//PLLʹ��
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

	//VCO��Ƶ��Dvco=2,����ᱻ����2
	cdata = 0x00;
	WriteReg(0x1e0,&cdata,ONE_BYTE,1);
	ReadReg(0x1e0,test_buf,ONE_BYTE,1);
	printf("Dvco = 0x%x\n\r",test_buf[0]);
	UpdateRegister();


/*
 * D0��D1��D2����out0-out5��Ƶʹ�ã��˴�δ�õ����ƹ�
 * */
	//�ƹ�D0��Ĭ���ƹ�
	cdata = 0x80;
	WriteReg(0x191,&cdata,ONE_BYTE,1);
	ReadReg(0x191,test_buf,ONE_BYTE,1);
	printf("DX = 0x%x\n\r",test_buf[0]);
	UpdateRegister();
	//�ƹ�D1
	cdata = 0x80;
	WriteReg(0x194,&cdata,ONE_BYTE,1);
	ReadReg(0x194,test_buf,ONE_BYTE,1);
	printf("DX = 0x%x\n\r",test_buf[0]);
	UpdateRegister();
	//�ƹ�D2��Ĭ���ƹ�
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
 *D3��D4����out6-out9��Ƶʹ�ã���Ҫ�ԼĴ����������ã�����������λ��ռ�ձȵȵ�
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
	//D4.2,			FPGA		100MHz		0x28		��ʵ��
	cdata = 0x00;
	WriteReg(0x1a0,&cdata,ONE_BYTE,1);
	ReadReg(0x1a0,test_buf,ONE_BYTE,1);
	printf("0x1a0 = 0x%x\n\r",test_buf[0]);
	UpdateRegister();

//	cdata = 0x06;
//	WriteReg(0x018,&cdata,ONE_BYTE,1);
//	ReadReg(0x018,test_buf,ONE_BYTE,1);
//	printf("0x018 = 0x%x\n\r",test_buf[0]);
//	UpdateRegister();
//
//
//	cdata = 0x07;
//	WriteReg(0x018,&cdata,ONE_BYTE,1);
//	ReadReg(0x018,test_buf,ONE_BYTE,1);
//	printf("0x018 = 0x%x\n\r",test_buf[0]);
//	UpdateRegister();

/*
 * ��out0-9�����״̬�����ģʽ��������
 * ��������ö����ֲ��Ӧ����û������ģ��ص��Ǽ�������ķ�Ƶֵ
 */
	//****************************
	//out0-5��LVPECLģʽ
	//****************************

	//�ر�out0
	cdata = 0x0a;//�������ֲ�
	WriteReg(0x0f0,&cdata,ONE_BYTE,1);
	ReadReg(0x0f0,test_buf,ONE_BYTE,1);
	printf("0x0f0 = 0x%x\n\r",test_buf[0]);
	UpdateRegister();

	//�ر�out1
	cdata = 0x0a;//�������ֲ�
	WriteReg(0x0f1,&cdata,ONE_BYTE,1);
	ReadReg(0x0f1,test_buf,ONE_BYTE,1);
	printf("0x0f1 = 0x%x\n\r",test_buf[0]);
	UpdateRegister();

	//�ر�out2
	cdata = 0x0a;//�������ֲ�
	WriteReg(0x0f2,&cdata,ONE_BYTE,1);
	ReadReg(0x0f2,test_buf,ONE_BYTE,1);
	printf("0x0f2 = 0x%x\n\r",test_buf[0]);
	UpdateRegister();

	//�ر�out3
	cdata = 0x0a;//�������ֲ�
	WriteReg(0x0f3,&cdata,ONE_BYTE,1);
	ReadReg(0x0f3,test_buf,ONE_BYTE,1);
	printf("0x0f3 = 0x%x\n\r",test_buf[0]);
	UpdateRegister();

	//�ر�out4
	cdata = 0x0a;//�������ֲ�
	WriteReg(0x0f4,&cdata,ONE_BYTE,1);
	ReadReg(0x0f4,test_buf,ONE_BYTE,1);
	printf("0x0f4 = 0x%x\n\r",test_buf[0]);
	UpdateRegister();

	//�ر�out5
	cdata = 0x0a;//�������ֲ�
	WriteReg(0x0f5,&cdata,ONE_BYTE,1);
	ReadReg(0x0f5,test_buf,ONE_BYTE,1);
	printf("0x0f5 = 0x%x\n\r",test_buf[0]);
	UpdateRegister();

	//****************************
	//out6-9	LVDS/CMOS��ѡ
	//****************************

	//��out6,LVDS
	cdata = 0xDA;//�������ֲ�
	WriteReg(0x140,&cdata,ONE_BYTE,1);
	ReadReg(0x140,test_buf,ONE_BYTE,1);
	printf("0x140 = 0x%x\n\r",test_buf[0]);
	UpdateRegister();

	//��out7,LVDS
	cdata = 0xDA;//�������ֲ�
	WriteReg(0x141,&cdata,ONE_BYTE,1);
	ReadReg(0x141,test_buf,ONE_BYTE,1);
	printf("0x141 = 0x%x\n\r",test_buf[0]);
	UpdateRegister();

	//�ر�out8
	cdata = 0x5A;//�������ֲ�
	WriteReg(0x142,&cdata,ONE_BYTE,1);
	ReadReg(0x142,test_buf,ONE_BYTE,1);
	printf("0x142 = 0x%x\n\r",test_buf[0]);
	UpdateRegister();

	//�ر�out9
	cdata = 0x5A;//�������ֲ�
	WriteReg(0x143,&cdata,ONE_BYTE,1);
	ReadReg(0x143,test_buf,ONE_BYTE,1);
	printf("0x143 = 0x%x\n\r",test_buf[0]);
	UpdateRegister();

	//����Ƭѡ��ʼ����
	NSS_L();

	while(1)
	{

	}
}



