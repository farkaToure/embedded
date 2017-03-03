#include <xc.h>

//////OSCILADOR
#pragma config FOSC = INTIO7
//#pragma config CPUDIV = OSC1_PLL2
#pragma config FCMEN = OFF   //no fail safe clock monitor
#pragma config IESO = OFF   //oscillator switchover disabled
#pragma config PWRT = ON           //oscillator power up timer enabled (release version only)
#pragma config BOREN  = OFF      //hardware brown out reset
//#pragma config WDTPS  = OFF   //watchdog timer disabled
#pragma config MCLRE = ON    //MCLR pin enabled
#pragma config PBADEN = OFF   //portB 0to 4 digital - not analogue
#pragma config LVP = OFF     //low voltage programming disabled
#pragma config XINST = OFF         //do not allow PIC18 extended instructions
#pragma config  STVREN = ON         //stack overflow will cause reset

#define INPUT 0x01
#define OUTPUT 0x00

#define TMRIF INTCONbits.TMR0IF

void interrupt high_isr(void) {
    if (TMRIF) {
        TMRIF = 0;
        TMR0 = 0;

        if (LATAbits.LA0) {
            LATAbits.LATA0 = 0;
        } else {
            LATAbits.LATA0 = 1;
        }
    }
}

void main() {
//    OSCCONbits.IRCF0 = 1;
//    OSCCONbits.IRCF1 = 1;
//    OSCCONbits.IRCF2 = 1;
//    OSCCONbits.SCS=1;
//    OSCTUNE|=0b01000000;

    INTCONbits.GIE = 1;
    INTCONbits.PEIE = 1;
    RCONbits.IPEN = 1;

    INTCONbits.TMR0IE = 1;
    INTCONbits.TMR0IF = 0;
    INTCON2bits.TMR0IP = 1;

    T0CONbits.T08BIT = 0;
    T0CONbits.T0CS = 0;
    T0CONbits.T0SE = 0;
    T0CONbits.PSA = 1;
    T0CONbits.TMR0ON = 1;


    TRISAbits.RA0 = OUTPUT;
    LATAbits.LA0 = 0;

    while (1) {
    }
}
