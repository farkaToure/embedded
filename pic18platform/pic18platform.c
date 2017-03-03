#include <xc.h>
#include <stdio.h>
//#include <plib/pconfig.h>

//#include <plib/usart.h>


#include "macros.h"

#define OSC4MHZ

#include "platform.h"

void increment( volatile unsigned char *p_port)
{
    (*p_port)++;

}

int main(void)
{
    volatile  unsigned char *port;
    unsigned int dead_cycles;



    initializeOscillator() ;



    OpenUSART(USART_TX_INT_OFF & USART_RX_INT_OFF & USART_ASYNCH_MODE & USART_EIGHT_BIT & USART_SINGLE_RX & USART_BRGH_HIGH, BAUD_9600);
    RCSTAbits.CREN = 1;

    TRISCbits.TRISC6 = 1; //TX
    TRISCbits.TRISC7 = 1; //RX
    putrsUSART("\r\n\r\nPIC18F46K20 platform\r\n");


    TRISBbits.RB0 = 0; //OUTWARD
    TRISBbits.RB1 = 0; //OUTWARD
    TRISBbits.RB2 = 0; //OUTWARD

    port = &LATB;

    LATB = 0b0000110;
    //*port= 0b0000010; //1 << pin;
    //(*port) ++;
    //LATB = *port;
    for(dead_cycles=0; dead_cycles < 5000; dead_cycles++);
    (*port) ++;

    while(1)
    {
        // printf("LATB == %d", LATB);
        for(dead_cycles=0; dead_cycles < 5000; dead_cycles++);
        if ((*port)== 0b00000111)

            (*port) = 0;

        else
            //(*port) ++ ;
            increment(&LATB);
        printf( "LATB  %s\r\n", byte2string(LATB) );
    }
}

