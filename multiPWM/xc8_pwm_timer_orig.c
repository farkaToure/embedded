//
// PIC18F14K50 50Hz PWM example program
// Written by Ted Burke (http://batchloaf.com)
// Last updated 22-4-2013
//
// To compile with XC8:
//     xc8 --chip=18F46k20 xc8_pwm_timer.c
//     xc8 --chip=18F4620 xc8_pwm_timer.c	
 
#include <xc.h>
#include "macros.h"

#define f4620

#include "platform.h"

//#define PWMARRAY_SIZE 2
//#include "softpwm.h"



#define Button1		PORTAbits.RA0	// Teclado
#define Button2		PORTAbits.RA1
#define Button3		PORTAbits.RA2

#define PWM1 		PORTBbits.RB1
#define PWM2 		PORTBbits.RB2
#define PWM_CYCLE	PORTBbits.RB0


struct pwm_counter { 
  unsigned reset_value;
  unsigned tick_count;
};

struct pwm_counter pulse1, pulse2;
struct pwm_counter cycle; //cycle has to be equal or greater than pulse


void interrupt isr(void)
{
  unsigned char* p_port;
  p_port = & PORTBbits;
  
  if(T0IF)
    PWM_CYCLE = (PWM_CYCLE == 0)? 1 : 0; 
    T0IF = 0; //Clear timer interrupt

    pulse1.tick_count--;
    pulse2.tick_count--;
    cycle.tick_count--;
  
      if(pulse1.tick_count == 0){
      // DO SOMETHING with pulse
      //PWM1=0;
      BIT_SET(*p_port, 1);
	
      }
    
      if(pulse2.tick_count == 0){
      // DO SOMETHING with pulse
      PWM2=0;      
      }

    if(cycle.tick_count == 0){
      // DO SOMETHING with cycle
      PWM1=1;
      PWM2=1;
      
      pulse1.tick_count = pulse1.reset_value;
      pulse2.tick_count = pulse2.reset_value;
      cycle.tick_count = cycle.reset_value;
    }    
    
  return;
}

void initialize(){
 
  //CCP2CON = 0b00001010; //CCPxIF = 1; CCPx not affected
  //TRISCbits.RC1 = 0; //CCP2 as output
  //T3CON = 0b10100001; //16BIT.TMR3->CCP2.~PRESCALER.*.INTERNALCLOCK.ENABLE TMR3
  
  T0CS = 0;	// Timer Source 0 == Internal
  
  PSA = 0;	// Clear to assign prescaler to Timer 0.
  T0PS2 = 1;	// Set up prescaler   
  T0PS1 = 1;
  T0PS0 = 1;

  INTCON = 0;	// Clear interrupt flag bits.
  GIE = 1;	// Enable all interrupts.
  T0IE = 1;	// Set Timer 0 to 0.  
  TMR0 = 0;	// Enable peripheral interrupts.  
  
  TRISBbits.RB0 = 0; //RB0 as output
  TRISBbits.RB1 = 0; //RB1 as output
  TRISBbits.RB2 = 0; //RB2 as output
  
  PWM1=1;
  PWM2=1;
  PWM_CYCLE = 1; 
  cycle.tick_count = cycle.reset_value = 	0b00011111;
  pulse1.tick_count = pulse1.reset_value = 	0b00000111;
  pulse2.tick_count = pulse2.reset_value = 	0b00000011;
}


int main(void)
{
//	unsigned int pulse = 12; //8==-60degrees; 11==0degrees; 16==+60degrees
//	CCPR2L=0xcc;
//	CCPR2H=0;
	
	initialize();
	while(1){
	  //while(Button1 != 1 && Button2 != 1 && Button3 != 1);
	  // 50% duty cycle for 500ms
	  /*if (Button1==1)
	    pulse = pulse < 0xff ? pulse+1 : 0xff;
	  if (Button2==1)
	    pulse = pulse > 0x10 ? pulse-1 : 0x10;
	  if (Button3)
	    pulse = 0xcc;
	  CCPR2L = pulse;*/
	  //while(Button1 != 0 || Button2 != 0 || Button3 != 0);
    }
}
