//
// PIC18F14K50 50Hz PWM example program
// Written by Ted Burke (http://batchloaf.com)
// Last updated 22-4-2013
//
// To compile with XC8:
//     xc8 --chip=18F46K20 xc8_pwm.c
//
 
#include <xc.h>
//#include "p18f46k20.h"


//PIC18F46K20
/*#pragma config FOSC = HS, FCMEN = OFF, IESO = OFF                       // CONFIG1H
#pragma config PWRT = OFF, BOREN = OFF, BORV = 30                        // CONFIG2L
#pragma config WDTEN = OFF, WDTPS = 32768                                    // CONFIG2H
#pragma config MCLRE = ON, LPT1OSC = OFF, PBADEN = OFF, CCP2MX = PORTC       // CONFIG3H
#pragma config STVREN = ON, LVP = OFF, XINST = OFF				// CONFIG4L
#pragma config CP0 = OFF, CP1 = OFF, CP2 = OFF, CP3 = OFF                   // CONFIG5L
#pragma config CPB = OFF, CPD = OFF                                         // CONFIG5H
#pragma config WRT0 = OFF, WRT1 = OFF, WRT2 = OFF, WRT3 = OFF                // CONFIG6L
#pragma config WRTB = OFF, WRTC = OFF, WRTD = OFF                            // CONFIG6H
#pragma config EBTR0 = OFF, EBTR1 = OFF, EBTR2 = OFF, EBTR3 = OFF           // CONFIG7L
#pragma config EBTRB = OFF      */

 #pragma config OSC=HS,MCLRE=OFF,WDT=OFF,LVP=OFF,BOREN=OFF
 

int main(void)
{
	// Set clock frequency to 500kHz, therefore Tcy = 8us
//	OSCCONbits.IRCF = 0b010; //PIC18
	
	OSCCONbits.IRCF2 = 0;
	OSCCONbits.IRCF1 = 1;
	OSCCONbits.IRCF0 = 0;
	
	// Set up PWM
	CCP1CON = 0b00001100;   // Enable PWM on CCP1
	//TRISC = 0b11011111;	// Make CCP1 an output was 0b11011111
	TRISCbits.TRISC2 = 0;
	T2CON = 0b00000110;     // Enable TMR2 with prescaler = 16
	PR2 = 156;	// PWM period = (PR2+1) * prescaler * Tcy = 19.968ms
	CCPR1L = 8;	// pulse width = CCPR1L * prescaler * Tcy = 1.024ms
	
	while(1)
	{
		if (PORTCbits.RC4) CCPR1L = 12;	// 1.536ms pulses, i.e. 90 degrees
		else CCPR1L = 8;				// 1.024ms pulses, i.e. 0 degrees
	}
}
