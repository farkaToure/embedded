
 #include "htc.h"

//PIC18F46K20
#pragma config FOSC = HS, FCMEN = OFF, IESO = OFF                       // CONFIG1H HS
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

#include "stdlib.h" //Libreria que contiene la funcion itoa

#include <xlcd.h>//Lireria modificada par la placa MCE Starter Kit Student y Student Advanced

#define bitset(var, bitno) ((var) |= 1UL << (bitno))
#define bitclr(var, bitno) ((var) &= ~(1UL << (bitno))) 
#define bittoggle(var, bitno) var ^= (1UL << bitno)

void interrupt isr() {                                                                                                         /* interrupt service routine */
   
  if(T0IF){
    T0IF = 0;// Clear the Timer 0 interrupt.
    bittoggle(PORTB,1);	// Toggle the state of the LSB of the port bits
  }
}

void main() {
    
  //TRISA = 0x00;	// All Port A latch outputs are enabled.

  T0CS = 0;	// Clear to enable timer mode.
  PSA = 0;	// Clear to assign prescaler to Timer 0.
  T0PS2 = 1;	// Set up prescaler   
  T0PS1 = 1;
  T0PS0 = 1;

  INTCON = 0;	// Clear interrupt flag bits.
  GIE = 1;	// Enable all interrupts.
  T0IE = 1;	// Set Timer 0 to 0.  
  TMR0 = 0;	// Enable peripheral interrupts.  
  
  bitclr(TRISB, 1); 
  bitclr(TRISB, 2);
    
  bitset(PORTB, 2);  
  while(1);
  
}



