/******************************************************************
* NOTES:
* Code uses the Peripheral library support available with MCC18 Compiler
* Code Tested on:
* PicDem2+ demo board with PIC18F4685 controller
* PWM output is obtained on CCP1 pin. duty cycle is gievn by
*
*Formula for Period and Duty cycle calculatio
*
* PWM period = [(period ) + 1] x 4 x Tosc x TMR2 prescaler
*
* PWM x Duty cycle = (DCx<9:0>) x Tosc
*
* Resolution (bits) = log(Fosc/Fpwm) / log(2)
**********************************************************************/
#define USE_OR_MASKS
#include <p18cxxx.h>
#include "pwm.h"
void main(void)
{
  char period=0x00;
  unsigned char outputconfig=0,outputmode=0,config=0;
  unsigned int duty_cycle=0;
//----Configure pwm ----
  period = 0xFF;
  OpenPWM1( period); //Configure PWM module and initialize PWM period
//-----set duty cycle----
  duty_cycle = 0x0F00;
  SetDCPWM1(duty_cycle); //set the duty cycle
//----set pwm output----
  outputconfig = FULL_OUT_FWD ;
  outputmode = PWM_MODE_1;
  SetOutputPWM1( outputconfig, outputmode); //output PWM in respective modes
  while(1); //observe output on CCP1 pin
//-----close pwm----
  ClosePWM1();
}

void PWM(void)
{
	unsigned char brillo = 0; 
	
	TRISCbits.TRISC2 = 0; 	//RC2 salida

	//Configuracion Timer 2
	T2CON = 0b00000111;// Prescale = 1:16, timer on

	// Periodo de la señal
	PR2 = 249;         // Timer 2 Registro Periodo = 250 cuentas
	// Periodo = 250*1uS*16 = 4mS
	//Duty Cycle
	// Ciclo 50% = 0,5*(250*4)= 500
	//CCPR1L = 0x7D;
	//Registro CCP1CON
	CCP1CON = 0b00001100;
	CCPR1L=brillo;

	Delay1KTCYx(5);		//Retardo para iniciar el LCD
		
	WriteCmdXLCD(LINE_0); 	// Nos posicionamos en la dereccion 0
	putrsXLCD("PWM con P18F4620"); 	// Enviamos un mensaje
	WriteCmdXLCD(NEXT_LINE + 1);  	// Cambiamos de linea y nos 
								  	// colocamos en la posicion 1
	putrsXLCD("RA0: + RA1: -");				
	// Una vez escrito el mensaje, borramos el cursor y el
	// parpadeo del mismo
	WriteCmdXLCD(CURSOR_OFF & BLINK_OFF);

	while(1)
	{// Nos quedamos esperando a que se presionen los pulsadores
		while(Tecla1 != 1 && Tecla2 != 1 && Tecla3 != 1);

		Delay1KTCYx(50); 		// generamos un retardo de 50mSeg
								// para evitar el rebote de la señal

		if (Tecla1 == 1 && Tecla2 == 1)
		{
			brillo = 0;
			CCPR1L = brillo;
		}
		else if(Tecla1 == 1)
		{
			brillo += 8;	// Aumentamos brillo
			CCPR1L = brillo;// modificamos en ancho de pulso
		}
		else if(Tecla2 == 1)
		{
			brillo -= 8;	// Decrementamos brillo
			CCPR1L = brillo;// modificamos en ancho de pulso
		}
		
		if(Tecla3 == 1)
				break;

		while(Tecla1 != 0 || Tecla2 != 0 );

		Delay1KTCYx(50); 		// generamos un retardo de 50mSeg
								// para evitar el rebote de la señal
	}
}
