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

void eeprom_read_object(unsigned int ee_addr, void *obj_p, size_t obj_size) //0x01, &data, 2
{
    unsigned char *p = obj_p;

    while (obj_size--)
    {
        *p++ = Read_b_eep(ee_addr++);
        Busy_eep();
    }
}

void eeprom_write_object(unsigned int ee_addr, void *obj_p, size_t obj_size)
{
    unsigned char *p = obj_p;

    while (obj_size--)
    {
        Write_b_eep(ee_addr++, *p++);
        Busy_eep();
    }
}


void write_int(unsigned int address, unsigned int data)
{
    eeprom_write_object(address, (void *)&data, 2);

}
int read_int(unsigned int address)
{
    int result;
    eeprom_read_object(address, (void *) &result, 2);
    return result;

}


int main(void)
{
    volatile  unsigned char *port;
    unsigned int dead_cycles;
    unsigned char loops;
    unsigned int int_obj;


    initializeOscillator() ;


    //initialize USART for minicom
    OpenUSART(USART_TX_INT_OFF & USART_RX_INT_OFF & USART_ASYNCH_MODE & USART_EIGHT_BIT & USART_SINGLE_RX & USART_BRGH_HIGH, BAUD_9600);
    RCSTAbits.CREN = 1;
    TRISCbits.TRISC6 = 1; //TX
    TRISCbits.TRISC7 = 1; //RX

    putrsUSART("\r\n\r\nPIC18F46K20 platform\r\n");
    //printf("\r\n pic18EEPROM \r\n");

    TRISBbits.RB0 = 0; //OUTWARD
    TRISBbits.RB1 = 0; //OUTWARD
    TRISBbits.RB2 = 0; //OUTWARD

    port = &LATB;

    LATB = 0b0000110;
    //*port= 0b0000010; //1 << pin;
    //(*port) ++;
    //LATB = *port;
//    for(dead_cycles=0; dead_cycles < 5000; dead_cycles++);
//    (*port) ++;

    loops = Read_b_eep(0x2F);
    Busy_eep();
    printf("loops = %d \r\n", loops);

    if (loops == 255)
        loops = 0;

    write_int(0x01, 1024);

    //Write_b_eep(0x01, 0); //Write on memory address 0x2F
    //Write_b_eep(0x02, 254); //Write on memory address 0x2F
    //Busy_eep();
    printf("EEPROM 0x01 %d : ", Read_b_eep(0x01));
    printf("EEPROM 0x02 %d \r\n", Read_b_eep(0x02));
    //printf("EEPROM to INT 0x01 %d \r\n", read_int(0x01));

    eeprom_read_object(0x01, &int_obj, 2);
    printf("EEPROM to INT 0x01 %u \r\n", int_obj);





    while(1)
    {
        // printf("LATB == %d", LATB);
        for(dead_cycles=0; dead_cycles < 5000; dead_cycles++);
        if ((*port)== 0b00000111)
        {

            (*port) = 0;
            Write_b_eep(0x2F, ++loops); //Write on memory address 0x2F
            Busy_eep();
        }
        else
            //(*port) ++ ;
            increment(&LATB);
        //printf( "LATB  %s\r\n", byte2string(LATB) );
    }
}

