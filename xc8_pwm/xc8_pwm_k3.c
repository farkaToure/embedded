//
// PIC18F14K50 50Hz PWM example program
// Written by Ted Burke (http://batchloaf.com)
// Last updated 22-4-2013
//
// To compile with XC8:
//     xc8 --chip=18F46K20 xc8_pwm.c
//
 
#include <xc.h>
#include "p18f46k20.h"


//PIC18F46K20
#pragma config FOSC = INTIO7, FCMEN = OFF, IESO = OFF                       // CONFIG1H
#pragma config PWRT = OFF, BOREN = OFF, BORV = 30                        // CONFIG2L
#pragma config WDTEN = OFF, WDTPS = 32768                                    // CONFIG2H
#pragma config MCLRE = ON, LPT1OSC = OFF, PBADEN = OFF, CCP2MX = PORTC       // CONFIG3H
#pragma config STVREN = ON, LVP = OFF, XINST = OFF				// CONFIG4L
#pragma config CP0 = OFF, CP1 = OFF, CP2 = OFF, CP3 = OFF                   // CONFIG5L
#pragma config CPB = OFF, CPD = OFF                                         // CONFIG5H
#pragma config WRT0 = OFF, WRT1 = OFF, WRT2 = OFF, WRT3 = OFF                // CONFIG6L
#pragma config WRTB = OFF, WRTC = OFF, WRTD = OFF                            // CONFIG6H
#pragma config EBTR0 = OFF, EBTR1 = OFF, EBTR2 = OFF, EBTR3 = OFF           // CONFIG7L
#pragma config EBTRB = OFF      

#define Button1		PORTAbits.RA0	// Teclado
#define Button2		PORTAbits.RA1
#define Button3		PORTAbits.RA2

int main(void)
{
	unsigned int pulse = 12; //8==-60degrees; 11==0degrees; 16==+60degrees
	ADCON1=0x0F;			// Configuramos todos los pines 
							// como digitales
	ANSEL = 0;
	ANSELH = 0;
	TRISA = 0b00000111; // A1-A3 INPUT FOR BUTTONS
	
	// Set clock frequency to 500kHz, therefore Tcy = 8us
	OSCCONbits.IRCF2 = 0;
	OSCCONbits.IRCF1 = 1;
	OSCCONbits.IRCF0 = 0;
	
	OSCCONbits.SCS1= 1;
	
	// Set up PWM1
	CCP1CON = 0b00001100;   // Enable PWM on CCP1
	TRISC = 0b11111001;		// Make CCP1 an output
	//TRISCbits.TRISC2 = 0; //TRISC2 = 1;
	T2CON = 0b10000110;     // Enable TMR2 with prescaler = 16
	PR2 = 155;	// PWM period = (PR2+1) * prescaler * Tcy = 19.968ms
	//CCPR1L = 8;	// pulse width = CCPR1L * prescaler * Tcy = 1.024ms
	
	//Set up PWM2
	CCP2CON = 0b00001100; //Enable PWM on CCP2
	TRISC1 = 0;
	//CCPR2L = 8; 
	CCPR1L = pulse;
	
	while(1){
	  while(Button1 != 1 && Button2 != 1 && Button3 != 1);
	  // 50% duty cycle for 500ms
	  if (Button1==1)
	    pulse = pulse < 16 ? pulse+1 : 16;
	  if (Button2==1)
	    pulse = pulse > 8 ? pulse-1 : 8;
	  if (Button3)
	    pulse =12;
	  CCPR1L = pulse;
	  while(Button1 != 0 || Button2 != 0 || Button3 != 0);
    }
}
