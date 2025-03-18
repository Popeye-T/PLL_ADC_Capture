#include "user_config.h"

XGpio Gpio;

int Gpiopl_init(XGpio *InstancePtr, u32 DeviceId)
{

	int Status;

	Status = XGpio_Initialize(InstancePtr, DeviceId);
	if (Status != XST_SUCCESS) {
		xil_printf("AXI GPIO config failed!\r\n");
		return XST_FAILURE;
	}


	XGpio_SetDataDirection(InstancePtr, 1, 0x0);

	XGpio_DiscreteWrite(&Gpio, 1, 0x0);

    return 1;
}

void Gpiopl_toggle()
{

	XGpio_DiscreteWrite(&Gpio, 1, 0x1);

	sleep(1);

	XGpio_DiscreteWrite(&Gpio, 1, 0x0);
}
