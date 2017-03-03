// *******************************************************************
// 				MCE Starter Kit Student Advanced
//						Demo version 1.00
//----------------------------------------------------------------------------------------------------
// Archivo Nombre:  Demo4620v1.c
// Dependencies:    p18f4620.h
//		Demo4620v1.h
//                  delays.h
//                  xlcd.h
//                  stdlib.h
// Processor:       PIC18F4620
// Compiler:        C18
// Company:         Mcelectronics.
// Version:         1.0
// *******************************************************************

/* Bits de Configuracion */


//PIC18F46K20
#pragma config FOSC = HS, FCMEN = OFF, IESO = OFF                       // CONFIG1H
#pragma config PWRT = OFF, BOREN = OFF, BORV = 30                        // CONFIG2L
#pragma config WDTEN = OFF, WDTPS = 32768                                    // CONFIG2H
#pragma config MCLRE = ON, LPT1OSC = OFF, PBADEN = OFF, CCP2MX = PORTC       // CONFIG3H
#pragma config STVREN = ON, LVP = OFF, XINST = OFF							      // CONFIG4L
#pragma config CP0 = OFF, CP1 = OFF, CP2 = OFF, CP3 = OFF                   // CONFIG5L
#pragma config CPB = OFF, CPD = OFF                                         // CONFIG5H
#pragma config WRT0 = OFF, WRT1 = OFF, WRT2 = OFF, WRT3 = OFF                // CONFIG6L
#pragma config WRTB = OFF, WRTC = OFF, WRTD = OFF                            // CONFIG6H
#pragma config EBTR0 = OFF, EBTR1 = OFF, EBTR2 = OFF, EBTR3 = OFF           // CONFIG7L
#pragma config EBTRB = OFF                                                   // CONFIG7H
/* Includes */

//#include "p18f4620.h"
#include "p18f46k20.h"
#include "delays.h"
#include "xlcd.h"	//Lireria modificada par la placa MCE Starter Kit Student y Student Advanced
#include "stdlib.h" //Libreria que contiene la funcion itoa
#include "Demo4620v1.h"

#pragma udata
//Menu
char opcion;
//Contador 2 digitos
unsigned char Unidad;  // variable de 8 bits sin signo
unsigned char Decena;
unsigned char Contador; // variable para el conteo
//Conversor AD
unsigned char Canal3;  // variable de 8 bits sin signo
unsigned char Canal4;  // variable de 8 bits sin signo
char Resultado[3];
//Reloj RTC
unsigned int segundos,minutos,horas;
char Caracter[2]; // Cadena de String

//----------------------------------------------------------------------------
// Vector de interrupcion

#pragma code Interrupciones = 0x08
void Interrupciones (void)
{
  _asm
	goto Interrupcion	//salta a la rutina de interrupcion
  _endasm
}
//---------------------------------------------------------------------------


/* Programa Princicpal ***/
#pragma code
void main(void)
{
	opcion = 0;
	
	ADCON1=0x0F;			// Configuramos todos los pines 
							// como digitales
	ANSEL = 0;
	ANSELH = 0;
	TRISA = 0b00000111;     // PORTA bit 0, 1 y 2 entrada
	TRISD = 0b00000000;	// PORTD salida

	Delay1KTCYx(10);	//Retardo para iniciar el LCD

	// Secuecia de mensajes de inicio
	OpenXLCD( FOUR_BIT & LINES_5X7); //Inicializamos LCD
	putrsXLCD("Student Advanced");	// Enviamos mensaje al LCD
	// Cambiamos de linea
	WriteCmdXLCD(NEXT_LINE);		// Cambiamos de linea
	putrsXLCD("  Demo v1.00");	// Enviamos mensaje al LCD
	// Una vez escrito el mensaje, borramos el cursor y el
	// parpadeo del mismo
	WriteCmdXLCD(CURSOR_OFF & BLINK_OFF);
	Delay10KTCYx(100);		//Retardo de 1 segundo(1.000.000 de instrucciones)
	
	WriteCmdXLCD(CLEAR_DISPLAY);	// Borramos Display
	putrsXLCD("Iniciando Menu..");	// Enviamos mensaje al LCD
	WriteCmdXLCD(CURSOR_OFF & BLINK_OFF);
	Delay10KTCYx(100);		//Retardo de 1 segundo(1.000.000 de instrucciones)
	
	//PWM-----------
	PWM();
	CCP1CON = 0b00000000; 	//Deshabilito modulo PWM
		
}

void PWM(void)
{
	unsigned char brillo = 0; 
	
	TRISCbits.TRISC2 = 0; 	//RC2 salida

	//Configuracion Timer 2
	T2CON = 0b00000111;// Prescale = 1:16, timer on

	// Periodo de la señal
	PR2 = 249;         // Timer 2 Registro Periodo = 250 cuentas
	// Periodo = 250*1uS*16 = 4mS
	//Duty Cycle
	// Ciclo 50% = 0,5*(250*4)= 500
	//CCPR1L = 0x7D;
	//Registro CCP1CON
	CCP1CON = 0b00001100;
	CCPR1L=brillo;

	Delay1KTCYx(5);		//Retardo para iniciar el LCD
		
	WriteCmdXLCD(LINE_0); 	// Nos posicionamos en la dereccion 0
	putrsXLCD("PWM con P18F4620"); 	// Enviamos un mensaje
	WriteCmdXLCD(NEXT_LINE + 1);  	// Cambiamos de linea y nos 
								  	// colocamos en la posicion 1
	putrsXLCD("RA0: + RA1: -");				
	// Una vez escrito el mensaje, borramos el cursor y el
	// parpadeo del mismo
	WriteCmdXLCD(CURSOR_OFF & BLINK_OFF);

	while(1)
	{// Nos quedamos esperando a que se presionen los pulsadores
		while(Tecla1 != 1 && Tecla2 != 1 && Tecla3 != 1);

		Delay1KTCYx(50); 		// generamos un retardo de 50mSeg
								// para evitar el rebote de la señal

		if (Tecla1 == 1 && Tecla2 == 1)
		{
			brillo = 0;
			CCPR1L = brillo;
		}
		else if(Tecla1 == 1)
		{
			brillo += 8;	// Aumentamos brillo
			CCPR1L = brillo;// modificamos en ancho de pulso
		}
		else if(Tecla2 == 1)
		{
			brillo -= 8;	// Decrementamos brillo
			CCPR1L = brillo;// modificamos en ancho de pulso
		}
		
		if(Tecla3 == 1)
				break;

		while(Tecla1 != 0 || Tecla2 != 0 );

		Delay1KTCYx(50); 		// generamos un retardo de 50mSeg
								// para evitar el rebote de la señal
	}
}


void DelayFor18TCY( void )
{
  	Delay100TCYx(10);	// Retardo de 100uSeg
}


void Timer1_Init(void)
{
	// Configuro interrupcion por timer
    PIR1bits.TMR1IF = 0;	// borro flag que indica desborde del timer
    PIE1bits.TMR1IE = 1;	// habilitamos interrupcion por Timer1
	// Esta funcion inicializa los registros del Timer 0
    T1CON = 0b00001110;   	// no asignamos un prescalar 
							// - Contador externo
    TMR1H = 0b10000000;		// Inicializo registros del timer
    TMR1L = 0;			 
    T1CONbits.TMR1ON = 1;	// comienzo temporizador
}

int Inicializar_Hora(MODO_INI Inicializar)
{	// Funcion encargada de inicializar las horas y los minutos
	// del reloj, recibe como parametro la variable a inicializar
	// que puede ser la Hora o los Minutos.
	// Devuelve un entero que es el valor que el usuario le transmite
	// por la pantalla.
	int tiempo = 0;

	while(1)
	{
		WriteCmdXLCD(LINE_0 +13);  	// Nos posicionamos en el Display
		itoa(tiempo,Caracter);
		// Si el tiempo es menor a 10, que lo muestro con un cero
		// a la izquierda, para tener un mejor efecto visual.
		if(tiempo < 10)
					putrsXLCD("0");

		putsXLCD(Caracter);		//Envio el caracter
		WriteCmdXLCD(LINE_0 +14);
		WriteCmdXLCD(CURSOR_OFF & BLINK_OFF);
		// Esperamos cambios en el teclado
		while(Tecla1 != 1 && Tecla2 != 1 && Tecla3 != 1);

		Delay1KTCYx(50); 		// generamos un retardo de 50mSeg
								// para evitar el rebote de la señal
		// Preguntamos que teclado se oprimio
		if (Tecla1 == 1)
					tiempo ++;

		if(Tecla2 == 1)
					tiempo --;

		if(Tecla3 == 1)
		{
			return tiempo;
			break;
		}
		
		// Pregutamos que variable estamos inicializando, las horas
		// o los minutos.
		if (Inicializar == Hora)
		{	// Inicializamos Hora
			if(tiempo == 24)
					tiempo = 0;	//si supera los 24 volemos a 0
			if(tiempo < 0)
					tiempo = 23;//para no tener el valor -1
		}else		
		{	// Inicializamos Minutos
			if(tiempo == 60)
					tiempo = 0;
			if(tiempo < 0)
					tiempo = 59;
		}
		// Esperamos a que se suelte la tecla.
		while(Tecla1 != 0 || Tecla2 != 0);
		Delay1KTCYx(50); 		// generamos un retardo de 50mSeg
								// para evitar el rebote de la señal
	}	
}

