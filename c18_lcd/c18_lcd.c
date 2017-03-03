// *******************************************************************
// 				MCE Starter Kit Student Advanced
//						Demo version 1.00
//----------------------------------------------------------------------------------------------------
// Archivo Nombre:  Demo4620v1.c
// Dependencies:    p18f4620.h
//		Demo4620v1.h
//                  delays.h
//                  xlcd.h
//                  stdlib.h
// Processor:       PIC18F46k20
// Compiler:        C18
// Company:         Mcelectronics.
// Version:         1.0
// *******************************************************************

 

//PIC18F46K20
#pragma config FOSC = HS, FCMEN = OFF, IESO = OFF                       // CONFIG1H
#pragma config PWRT = OFF, BOREN = OFF, BORV = 30                        // CONFIG2L
#pragma config WDTEN = OFF, WDTPS = 32768                                    // CONFIG2H
#pragma config MCLRE = ON, LPT1OSC = OFF, PBADEN = OFF, CCP2MX = PORTC       // CONFIG3H
#pragma config STVREN = ON, LVP = OFF, XINST = OFF			 // CONFIG4L
#pragma config CP0 = OFF, CP1 = OFF, CP2 = OFF, CP3 = OFF                   // CONFIG5L
#pragma config CPB = OFF, CPD = OFF                                         // CONFIG5H
#pragma config WRT0 = OFF, WRT1 = OFF, WRT2 = OFF, WRT3 = OFF                // CONFIG6L
#pragma config WRTB = OFF, WRTC = OFF, WRTD = OFF                            // CONFIG6H
#pragma config EBTR0 = OFF, EBTR1 = OFF, EBTR2 = OFF, EBTR3 = OFF           // CONFIG7L
#pragma config EBTRB = OFF                                                   // CONFIG7H
/* Includes */

#include "p18f46k20.h"
#include "delays.h"
#include "float.h"




#include "stdlib.h" //Libreria que contiene la funcion itoa

#include <xlcd.h>//Lireria modificada par la placa MCE Starter Kit Student y Student Advanced

/* Programa Princicpal ***/
//#pragma code


#define bitset(var, bitno) ((var) |= 1UL << (bitno))
#define bitclr(var, bitno) ((var) &= ~(1UL << (bitno))) 

void main(void)
{
  
	double d=1.2345;
	cos(d); 
	
	
	ADCON1=0x0F;			// Configuramos todos los pines 
							// como digitales
	ANSEL = 0;
	ANSELH = 0;
	TRISA = 0b00000111;     // PORTA bit 0, 1 y 2 entrada
	TRISD = 0b00000000;		// PORTD salida

	Delay1KTCYx(10);		//Retardo para iniciar el LCD
	Delay1KTCYx(10);		//Retardo para iniciar el LCD

	// Secuecia de mensajes de inicio
	OpenXLCD( FOUR_BIT & LINES_5X7); //Inicializamos LCD
	WriteCmdXLCD(CLEAR_DISPLAY);
	putrsXLCD("Juan y Manu ");	// Enviamos mensaje al LCD
	Delay1KTCYx(10);	
	//WriteCmdXLCD(CURSOR_OFF & BLINK_OFF);
	WriteCmdXLCD(CURSOR_OFF);
	// Cambiamos de linea
	WriteCmdXLCD(NEXT_LINE);		// Cambiamos de linea
	putrsXLCD("Funciona...");	// Enviamos mensaje al LCD
	// Una vez escrito el mensaje, borramos el cursor y el
	// parpadeo del mismo
	//WriteCmdXLCD(CURSOR_OFF & BLINK_OFF);
	Delay10KTCYx(500);		//Retardo de 1 segundo(1.000.000 de instrucciones)
	WriteCmdXLCD(BLINK_OFF);
//	WriteCmdXLCD(CLEAR_DISPLAY);	// Borramos Display
//	putrsXLCD("Esta vivo.......");	// Enviamos mensaje al LCD
//	WriteCmdXLCD(CURSOR_OFF & BLINK_OFF);
	Delay10KTCYx(100);		//Retardo de 1 segundo(1.000.000 de instrucciones)
		
	WriteCmdXLCD(CURSOR_OFF & BLINK_OFF );
	while(1){}
	  
	
}	




void DelayFor18TCY( void )
{
  	Delay100TCYx(20);	// Retardo de 100uSeg
}

void DelayPORXLCD(void)
{
	Delay1KTCYx(30);	// Delay de 15mS
						// ciclos = (TimeDelay * Fosc)/4
						// ciclos = (15mS * 4Mhz)/4
						// ciclos = 15000
}

void DelayXLCD(void)
{
	Delay1KTCYx(10);		// Delay de 5mS
						// ciclos = (TimeDelay * Fosc)/4
						// ciclos = (5mS * 4Mhz)/4
						// ciclos = 5000
}

