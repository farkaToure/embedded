//
// PIC18F14K50 50Hz PWM example program
// Written by Ted Burke (http://batchloaf.com)
// Last updated 22-4-2013
//
// To compile with XC8:
//     xc8 --chip=18F46k20 xc8_pwm_timer.c
//     xc8 --chip=18F4620 xc8_pwm_timer.c
//DEFINES COMING FROM THE MAKEFILE
//#define f4620
//#define f46k20


#include <xc.h>
#include "macros.h"

#include "platform.h"

#define PWMARRAY_SIZE 1

#define PWMPERIOD_TYPE unsigned long
#define PWMCOUNTER_TYPE unsigned long
#define PWM_PERIOD 20

#include "pwmhub.h"
#include "servoTG9.h"

#define Button1		PORTAbits.RA0	// MODE KEY
#define Button2		PORTAbits.RA1   // + KEY
#define Button3		PORTAbits.RA2   // -KEY
#define HOOKPOWER   LATAbits.LA5   //HOOK POWER out ->1
#define HOOK    	PORTBbits.RB0   //HOOK
#define PWM1        LATBbits.LB7   // PWM SIGNAL out
#define PWMPOWER    LATBbits.LB6   // PWM POWER out -> 1


#define OSC4MHZ
#define TIMERRESET 203

struct pwm_array pwm_module;
struct servo yaw_servo;
volatile unsigned char tick_flag = 0;

void interrupt isr(void)
{
    if(TMR0IE && TMR0IF)
    {
        //Clear timer interrupt flag
        //TMR0 = 10; //TIMERRESET;

        tick_flag = 1;
        TMR0IF = 0;
        return;
    }
    if (INT0IE && INT0IF)
    {
        INT0IF = 0;

        // handle hook_off condition
        if (INTEDG0)
        {
            //set_angle(&yaw_servo, 0);
            *(yaw_servo.pwm_reset_value) = PWM_PERIOD;
            INTEDG0 = 0;
            //PWMPOWER = 0;

        }
        else
        {
            //set_angle(&yaw_servo, 60);
            *(yaw_servo.pwm_reset_value) = PWM_PERIOD;
            INTEDG0 = 1;
            //PWMPOWER = 1;

        }
    }
    return;
}



void initializeOscillator()
{
    // fuse = INTOSCIO67 => INTOSCIO
#ifdef OSC1MHZ
    OSCCON = 0b10111100; //page29 datasheet
#endif

#ifdef OSC4MHZ
    OSCCON = 0b11011000 ; //page29 datasheet
#endif
#ifdef OSC8MHZ
    OSCCON = 0b11101000; //page29 datasheet
#endif
#ifdef OSC16MHZ
    OSCCON = 0b11111000 ; //page29 datasheet
#endif

    OSCTUNE = 0b10000000; //HFINTOSC & -PLL & FACTORY CALIBRATION
}

void initializeTimer()
{
    T0CS = 0;	// Timer Source 0 == Internal
    PSA = 0;	    // Clear to assign prescaler to Timer0. 1 => no prescaler 0 => prescaler
    T0PS2 = 0;	//  prescaler 000 => 1:2
    T0PS1 = 0;  // 001 => 1:4
    T0PS0 = 1;
    T0SE=1; //T0 increments
    T08BIT= 1; //T0 is 8bits
}

void initializeInterrupt()
{

    INTCON = 0;	// Clear interrupt flag bits.
    IPEN = 0;     //INITIALIZE SINGLE INTERRUPT FOR INT0

    TMR0ON = 1;

    TMR0IE = 1;    //TMR0 Overflow Interrupt Enable bit

    TMR0 = TIMERRESET;	// Enable TIMER0 interrupts.

    //INTCON=0x10;                  // Enable INT0
    INT0IE = 1;   //INT0 External Interrupt Enable bit
    INTCON2=0;

    IPEN = 0;     //Disable Priority levels
    GIE = 1;	    // Enable all interrupts.
}

void initializeServo1()
{

    //TODO: El servo deberia inicializar su PWM_pulse y que sea transparente
    pwm_module.period.reset_value = PWM_PERIOD;

    initialize_pwm_pulse(&(pwm_module.pulse_array[0]),(int) PWM_PERIOD/2, &LATB, 7);
    initialize_pwm(&pwm_module);
    HOOKPOWER = 1;
    //PWMPOWER = 1;

    yaw_servo.pwm_reset_value = &(pwm_module.pulse_array[0].reset_value);

    //set_angle(&yaw_servo, 0);
}


void initialize()
{
    //Initialize TIMER0 TO BE USED WITH PWMHUB

    TRISAbits.RA0 = INWARD;	// MODE KEY
    TRISAbits.RA1 = INWARD;  // + KEY
    TRISAbits.RA2 = INWARD;  // -KEY
    TRISAbits.RA5 = OUTWARD;  //HOOK POWER out ->1
    TRISBbits.RB0 = INWARD;  //HOOK
    TRISBbits.RB7 = OUTWARD;  // PWM SIGNAL
    TRISBbits.RB6 = OUTWARD;  // PWM POWER out -> 1


    initializeOscillator();
    initializeTimer();
    initializeInterrupt();
    initializeServo1();

}

int main(void)
{
    initialize();

    TRISBbits.RB2 = OUTWARD;
    lat_clear(&LATB, 2);
    //LATBbits.LB6 = 1;
    //BIT_SET(LATB, 6);
    while(1)
    {

        if (tick_flag == 1)
        {
            tick_flag --;
            lat_set(&LATB, 2);

            handle_tick(&pwm_module);

            //lat_clear(&LATB, 6);
        }
        //BIT_TOGGLE(LATB, 6);
    }
}
