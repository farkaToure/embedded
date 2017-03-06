#include <xc.h>

//////OSCILADOR
#pragma config FOSC = INTIO7   //Internal oscillator block, CLKOUT function on RA6, port function on RA7
//#pragma config CPUDIV = OSC1_PLL2
#pragma config FCMEN = OFF   //no fail safe clock monitor
#pragma config IESO = OFF   //oscillator switchover disabled
#pragma config PWRT = ON           //oscillator power up timer enabled (release version only)
#pragma config BOREN  = OFF      //hardware brown out reset
#pragma config MCLRE = ON    //MCLR pin enabled
#pragma config PBADEN = OFF   //portB 0to 4 digital - not analogue
#pragma config LVP = OFF     //low voltage programming disabled
#pragma config XINST = OFF         //do not allow PIC18 extended instructions
#pragma config STVREN = ON         //stack overflow will cause reset

#define INPUT 0x01
#define OUTPUT 0x00
#define BAUD_9600_at_8MHZ 51

#define LED_PORT LATB
#define LED_TRIS TRISB

#define TMRIF INTCONbits.TMR0IF
#define SINGLE_SEG_TMR0_ISR 57724

unsigned char timer_counter = 0;

void interrupt high_isr(void) {
    if (TMRIF) {
        TMRIF = 0;

        if (timer_counter == 60) {
            timer_counter = 0;
        } else {
            timer_counter++;
            LED_PORT = timer_counter;
        }

        TMR0 = SINGLE_SEG_TMR0_ISR;

    }
}

void config() {
    OSCCON = 0b11100110; //idle on SLEEP / 8MHz internal / internal / internal

    OpenUSART(USART_TX_INT_OFF & USART_RX_INT_OFF & USART_ASYNCH_MODE & USART_EIGHT_BIT & USART_SINGLE_RX & USART_BRGH_HIGH, BAUD_9600_at_8MHZ);
    RCSTAbits.CREN = 1;

    TRISCbits.TRISC6 = 1; //TX
    TRISCbits.TRISC7 = 1; //RX
    //PINOUT
    putrsUSART("\r\n\r\nPIC18F46K20 TEST\r\n");

    INTCONbits.GIE = 1;
    INTCONbits.PEIE = 1;
    RCONbits.IPEN = 1;

    T0CON = 0b00000111; //16 bits / internal  / prescaler / 256
    TMR0 = SINGLE_SEG_TMR0_ISR;

    INTCONbits.TMR0IE = 1;
    INTCONbits.TMR0IF = 0;
    INTCON2bits.TMR0IP = 1;

    LED_TRIS = OUTPUT;

}

void main() {

    config();
    T0CONbits.TMR0ON = TRUE;
    putrsUSART("\r\n\r\nPIC18F46K20 TEST\r\n");


    while (1) {
    }
}
