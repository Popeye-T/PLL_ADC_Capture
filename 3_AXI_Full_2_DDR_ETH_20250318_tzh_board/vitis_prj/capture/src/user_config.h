#ifndef __USER_CONFIG_H_
#define __USER_CONFIG_H_

#include <stdio.h>
#include "xscugic.h"
#include "xil_types.h"
#include "xparameters.h"
#include "xgpio.h"
#include "lwip/err.h"
#include "lwip/tcp.h"
#define AXI_GPIO_DEV_ID	        XPAR_AXI_GPIO_0_DEVICE_ID

int Gpiopl_init(XGpio *InstancePtr, u32 DeviceId);
void Gpiopl_toggle();
//void send_hardware_data(struct tcp_pcb *tpcb);

#endif
