#include <htc.h>

/* Program device configuration word
 * Oscillator = Internal RC No Clock
 * Watchdog Timer = Off
 * Power Up Timer = Off
 * Master Clear Enable = Internal
 * Code Protect = Off
 * Data EE Read Protect = Off
 * Brown Out Detect = BOD and SBOREN disabled
 * Internal External Switch Over Mode = Disabled
 * Monitor Clock Fail-safe = Enabled
 */
__CONFIG(INTIO & WDTDIS & PWRTDIS & MCLRDIS & UNPROTECT & UNPROTECT & BORDIS & IESODIS & FCMEN);

// Peripheral initialization function
void init(void){
	/***** Common Code ****
	 *  Timer 2 interrupt disabled.
	 *  CCP Module 1 interrupt disabled.
	 */
	PIE1	= 0b00000000;
	/*
	 *  Peripheral interrupts not enabled
	 *  Global interrupt disabled during initialization
	 */
	INTCON	= 0b00000000;
	/*
	 *  Port directions: 1=input, 0=output
	 */
	TRISC	= 0b00011111;
	
	/***** CCP Module 1 Code ****
	 *  CCP Module 1 enabled
	 *  CCP Module 1 in PWM mode
	 */
	CCP1CON	= 0b00011100;
	/*
	 *  DutyCycle set to 128.0 uSec
	 */
	CCPR1L	= 0b00000000;
	
	/***** Timer 2 Code ****
	 *  Prescale ratio set at 1:4
	 *  Timer2 module activated
	 *  Postscale ratio set at 1:1
	 */
	T2CON	= 0b00000101;
	/*
	 *  Period register set to 0x9B
	 */
	PR2	= 0b10011011;
	
}