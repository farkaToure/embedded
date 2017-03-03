// MCE Student Advanced Demo version 1.00 file header

#ifndef MCEDEMOv1_H
#define MCEDEMOv1_H

/** D E C L A R A T I O N S **************************************************/
// Declaramos una variable que puede contener dos valores
// el valor Hora (0) y el valor Minutos (1)
// Esto lo pasaremos como varible a la funcion que inicializa
// la hora y los minutos del reloj
typedef enum {Hora, Minutos} MODO_INI;


/** D E F I N I T I O N S ****************************************************/
#define Tecla1		PORTAbits.RA0	// Teclado
#define Tecla2		PORTAbits.RA1
#define Tecla3		PORTAbits.RA2
#define LedRojo		PORTDbits.RD1	// Salidas Led RGB
#define LedVerde	PORTDbits.RD2
#define LedAzul		PORTDbits.RD3

/** E X T E R N S ************************************************************/
// declaracion de variables accesibles desde otros archivos

/** P R O T O T Y P E S ******************************************************/
char Select_Menu(void);
void Ver_Menu(char menu);
void Secuencia_Led(void);
void Contador_Display(void);
void PWM(void);
void Conversor_AD(void);
void LED_RGB(void);
void Reloj_RTC(void);
void Timer1_Init(void);
void Visualizar_HoraLCD(void);
int Inicializar_Hora(MODO_INI Inicializar);
void Timer0_Init(void);
void ADC_Init(void);
unsigned char ADC_Convert(void);

/* Prototipo de rutina de interrupcion */
void Interrupcion(void);

#endif