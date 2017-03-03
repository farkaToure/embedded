#include "init.h"
#include <htc.h>

void moveto(char); // Declare prototypes
void wait(int);

void main(void)
{
	char k;
	
	OSCCON = 0b00010000; // Set up clock to 125 kHz
	init(); // Call init function created by C-Wiz
	CCP1CON = CCP1CON & 0b11001111; // Clear LSB of PWM duty cycle
	PORTA = 0; // Clear all outputs on PortA and PortC
	PORTC = 0;
	
	while(1)
	{
		/* These two loops moves the servo between endpoints.
		 * A duty cycle of 17 corresponds to lower endpoint,
		 * a duty cycle of 76 corresponds to higher endpoint.
		 * The function moveto() is called to set duty cycle.
		 * A delay function, wait() is called between every movement. */
		for (k = 17; k <= 76; k++)
		{
			moveto(k);
			wait(30);
		}
		
		for (k = 76; k >= 17; k--)
		{
			moveto(k);
			wait(30);
		}
	}
}

/* This function takes a char as input and sets the bits
 * of the two registers CCPR1L (for MSB) and CCP1CON<5:4> (for LSB) */
void moveto(char position)
{
	char low, high;
	
	low = position & 0b00000011;
	low = low << 4;
	CCP1CON = CCP1CON & 0b11001111;
	CCP1CON = CCP1CON | low;
	high = position & 0b11111100;
	high = high >> 2; 
	CCPR1L = high;
}

/* This is a simple delay function taking an int as input. */
void wait(int time)
{
	int i;

	for (i = 0; i < time; i++)
	{
	}
}