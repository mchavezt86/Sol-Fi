/*
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A 
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR 
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION 
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE 
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO 
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO 
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE 
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY 
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 */

/*
 * 
 *
 * This file is a generated sample test application.
 *
 * This application is intended to test and/or illustrate some 
 * functionality of your system.  The contents of this file may
 * vary depending on the IP in your system and may use existing
 * IP driver functions.  These drivers will be generated in your
 * SDK application project when you run the "Generate Libraries" menu item.
 *
 */

#include <stdio.h>
#include <unistd.h>

#include "xparameters.h"
#include "xil_cache.h"
#include "xgpio.h"
//#include "gpio_header.h"
#define WRITE_CHANNEL 1
#define READ_CHANNEL 2

#define STX 0b00000100
#define ETX 0b00000101
#define ETB 0b00001111
#define IDLE 0b00010101

XGpio GpioOutput;
#define BYTE_SIZE 8
unsigned int reverseBits(unsigned int num)
{
    unsigned int reverse_num = 0, i, temp;

    for (i = 0; i < BYTE_SIZE; i++)
    {
        temp = (num & (1 << i));
        if (temp)
            reverse_num |= (1 << ((BYTE_SIZE - 1) - i));
    }

    return reverse_num;
}

void write_message(char * msg, int length, int rt){
	unsigned int i, int_msg;
	for (i = 0; i < length + 4; i++){
		if (i == 0)
			int_msg = STX;
		else if (i == length + 1)
			int_msg = ETX;
		else if (i == length + 2)
			int_msg = rt;
		else if (i == length + 3)
			int_msg = ETB;
		else
			int_msg = (unsigned int) msg[i-1];
		int_msg = reverseBits(int_msg);
		int write_msg = 0x80000000|(0x00FF & int_msg);
		XGpio_DiscreteWrite(&GpioOutput, WRITE_CHANNEL, write_msg);
		while ((XGpio_DiscreteRead(&GpioOutput, READ_CHANNEL)& 0b1) == 0){
		}
		while ((XGpio_DiscreteRead(&GpioOutput, READ_CHANNEL)& 0b1) == 1){
		}
	}
}

void write_data(int data){
	XGpio_DiscreteWrite(&GpioOutput, WRITE_CHANNEL, 0x80000000|data);
	while ((XGpio_DiscreteRead(&GpioOutput, READ_CHANNEL)& 0b1) == 0){
	}
	while ((XGpio_DiscreteRead(&GpioOutput, READ_CHANNEL)& 0b1) == 1){
	}

}

void write_freq(int freq){
	XGpio_DiscreteWrite(&GpioOutput, WRITE_CHANNEL, 0x40000000|freq);
	while (((XGpio_DiscreteRead(&GpioOutput, READ_CHANNEL)) & 0b1) == 0){
	}
	while (((XGpio_DiscreteRead(&GpioOutput, READ_CHANNEL)) & 0b1) == 1){
	}

}

void write_freq_multiply(int mult1, int mult2){
	XGpio_DiscreteWrite(&GpioOutput, WRITE_CHANNEL, 0x60000000|(0x03FF & mult2)|((0x03FF & mult1) << 10));
	while (((XGpio_DiscreteRead(&GpioOutput, READ_CHANNEL)) & 0b1) == 0){
	}
	while (((XGpio_DiscreteRead(&GpioOutput, READ_CHANNEL)) & 0b1) == 1){
	}

}

int main () 
{
	 int Status;
	 Status = XGpio_Initialize(&GpioOutput, XPAR_AXI_GPIO_0_DEVICE_ID);
	 if (Status != XST_SUCCESS)  {
		  return XST_FAILURE;
	 }

	 XGpio_SetDataDirection(&GpioOutput, WRITE_CHANNEL, 0x0);
	 XGpio_SetDataDirection(&GpioOutput, READ_CHANNEL, 0x1);
	 XGpio_DiscreteWrite(&GpioOutput, WRITE_CHANNEL, 0x80000000|(0x00FF & IDLE));

	 //char msg[] = "Hello World! It's a good day today.";
	 char msg[] = "Hello world!";

	 //int clock_freq = 36000000;
	 //int baud_rate = 2000; //100 bits
	 //int mult1 = 2, mult2 = 3;
	 //int count1 = (int)(clock_freq/baud_rate/mult1), count2 = (int)(clock_freq/baud_rate/mult2);

	 //write_freq(0x10000000 | (0x0FFFFFFF & count2));
	 //write_freq(0x0FFFFFFF & count1);

	 //write_freq_multiply(mult1, mult2);`

	 XGpio_DiscreteWrite(&GpioOutput, WRITE_CHANNEL, 0x80000000|(0x00FF & reverseBits(IDLE)));
	 usleep(4000);

	 while (1){
		 for (int i = 0; i < 100; i++){
			 write_message(msg, strlen(msg), i);
			 XGpio_DiscreteWrite(&GpioOutput, WRITE_CHANNEL, 0x80000000|(0x00FF & reverseBits(IDLE)));
			 usleep(4000);
		 }
	 }
	 return 0;
}

