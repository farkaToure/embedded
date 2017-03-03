//
// PIC18F4620 1kHz PWM example program
// Written by Ted Burke (http://batchloaf.com)
// Last updated 4-4-2013
//
// To compile with XC8:
//     xc8 --chip=18F4620 main.c
//
 
#include <xc.h>
#include <pic18f46k20.h>

#pragma config FOSC = HS, FCMEN = OFF, IESO = OFF                       // CONFIG1H
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
    unsigned int brightness = 0;
    ADCON1=0x0F;			// Configuramos todos los pines 
							// como digitales
    ANSEL = 0;
    ANSELH = 0;
    TRISA = 0b00000111;     // PORTA bit 0, 1 y 2 entrada
    
    // Set up PWM (see section 15.4 of the PIC18F4620 datasheet)
    CCP1CON = 0b00001100;   // Enable PWM on CCP1
    TRISC = 0b11111001;     // Make pin 17 (RC1/CCP2) an output
    T2CON = 0b00000111;     // Enable TMR2 with prescaler 1:16
    PR2 = 249;   // PWM period = (PR2+1) * prescaler * Tcy = 1ms
    //CCPR1L = 25; // pulse width = CCPR1L * prescaler * Tcy = 100us
    CCPR1L = brightness; 
    while(1)
    {
      while(Button1 != 1 && Button2 != 1 && Button3 != 1);
      // 50% duty cycle for 500ms
      if (Button1==1)
	brightness = brightness < 117 ? brightness+8 : 125;
      if (Button2==1)
	brightness = brightness > 8 ? brightness-8 : 0;
      if (Button3)
	brightness = 0;
      CCPR1L = brightness;
      while(Button1 != 0 || Button2 != 0 || Button3 != 0);
    }
}


/*
// 50% duty cycle for 500ms
        CCPR1L = 125;
        _delay(125000);
        CCPR1L = 100;
	_delay(125000);	
	CCPR1L = 75;
        _delay(125000);
	CCPR1L = 50;
	_delay(125000);
        // 10% duty cycle for 500ms
        CCPR1L = 25;
        _delay(125000);
         
        // 0% duty cycle for 500ms
        CCPR1L = 0;
        _delay(125000);
*/
