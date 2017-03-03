//
// PIC18F4620 1kHz PWM example program
// Written by Ted Burke (http://batchloaf.com)
// Last updated 4-4-2013
//
// To compile with XC8:
//     xc8 --chip=18F4620 main.c
//
 
#include <xc.h>
 
#pragma config OSC=INTIO67,MCLRE=OFF,WDT=OFF,LVP=OFF,BOREN=OFF
#define Button1		PORTAbits.RA0	// Teclado
#define Button2		PORTAbits.RA1
#define Button3		PORTAbits.RA2

int main(void)
{
    unsigned int brightness = 0;
    
    TRISA = 0b00000111;     // PORTA bit 0, 1 y 2 entrada
    
    // Set up PWM (see section 15.4 of the PIC18F4620 datasheet)
    CCP1CON = 0b00001100;   // Enable PWM on CCP1
    TRISC = 0b11111001;     // Make pin 17 (RC1/CCP2) an output
    T2CON = 0b00000111;     // Enable TMR2 with prescaler 1:16
    PR2 = 249;   // PWM period = (PR2+1) * prescaler * Tcy = 1ms
    CCPR1L = 25; // pulse width = CCPR1L * prescaler * Tcy = 100us
     
    while(1)
    {
      // 50% duty cycle for 500ms
      if (Button1==1)
	brightness = brightness < 125 ? brightness++ : 125;
      if (Button2==1)
	brightness = brightness > 0 ? brightness-- : 0;
      if (Button3==1)
	brightness = 0;
      CCPR1L = brightness;
    }
}

