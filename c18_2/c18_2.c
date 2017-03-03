// *******************************************************************
//             MCE Starter Kit Student Advanced
//              Autor: Fernando R. Tagliaferri
//----------------------------------------------------------------------------------------------------




//PIC18F46K20
#pragma config FOSC = HS, FCMEN = OFF, IESO = OFF                       // CONFIG1H
#pragma config PWRT = OFF, BOREN = OFF, BORV = 30                        // CONFIG2L
#pragma config WDTEN = OFF, WDTPS = 32768                                    // CONFIG2H
#pragma config MCLRE = ON, LPT1OSC = OFF, PBADEN = OFF, CCP2MX = PORTC       // CONFIG3H
#pragma config STVREN = ON, LVP = OFF, XINST = OFF                           // CONFIG4L
#pragma config CP0 = OFF, CP1 = OFF, CP2 = OFF, CP3 = OFF                   // CONFIG5L
#pragma config CPB = OFF, CPD = OFF                                         // CONFIG5H
#pragma config WRT0 = OFF, WRT1 = OFF, WRT2 = OFF, WRT3 = OFF                // CONFIG6L
#pragma config WRTB = OFF, WRTC = OFF, WRTD = OFF                            // CONFIG6H
#pragma config EBTR0 = OFF, EBTR1 = OFF, EBTR2 = OFF, EBTR3 = OFF           // CONFIG7L
#pragma config EBTRB = OFF                                                   // CONFIG7H
/* Includes */
#include <htc.h>
#include "p18f46k20.h"
#include "delays.h"
#include "stdlib.h" //Libreria que contiene la funcion itoa
//#include "Demo4620v1.h"
#include "addup.h"


/* Programa Princicpal ***/
//#pragma code
void main(void)
{

   ADCON1=0x0F;         // Configuramos todos los pines 
			// como digitales
   ANSEL = 0;
   ANSELH = 0;
   
   TRISB = 0b00000000;
   LATBbits.LATB7 = 1;
   LATBbits.LATB6 = ~LATBbits.LATB7;

/*Programa Principal*/
    while (1)
   {
      LATBbits.LATB7 = ~LATBbits.LATB7; // complemento Bit
      Delay1KTCYx(1000);      // Delay 200 x 1000 = 200,000 ciclos;
                              // 200ms @ 4MHz
      LATBbits.LATB6 = ~LATBbits.LATB6;
      LATBbits.LATB0 = LATBbits.LATB6;
      addup(1, 1);
      increment(2);
   }   
   
   
}