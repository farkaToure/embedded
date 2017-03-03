/* Avoid polluting the global namespace with aliases for each pin. */ 
#define NO_BIT_DEFINES 
/* Include SDCC-specific device header. */ 
#include "pic12f675.h" 
/* Define some useful types -- might #include "inttypes.h" instead. */ 
typedef unsigned char uint8_t; 
typedef unsigned short uint16_t;
/* Define config word ("fuses"); see device header file for symbolic constants * or use integer literal (0x3fff, 0b11_1111_1111_1111 without underscores). */ 
__code uint16_t __at(0x2007) 
__configword = _CPD_OFF & _CP_OFF & _BODEN_ON & _MCLRE_ON & _PWRTE_OFF & _WDT_OFF & _INTRC_OSC_NOCLKOUT; 

/* Assign val to GPIO port. */ 
void output_b(uint8_t val) { GPIO = val; } 

/* Adjust to your clock frequency (in Hz). */ 
#define CLOCKFREQ (4U*1000U*1000U) 
/* Instructions per millisecond. */ 
#define INSNS_PER_MS (CLOCKFREQ / 4000U) 
/* Delay loop is about 10 cycles per iteration. */ 
#define LOOPS_PER_MS (INSNS_PER_MS / 10U) 

void delay_ms(uint16_t ms) {
uint16_t u; 
while (ms--) 
{ /* Inner loop takes about 10 cycles per iteration + 4 cycles setup. */ 
for (u = 0; u < LOOPS_PER_MS; u++) 
{ /* Prevent this loop from being optimized away. */
__asm nop __endasm; 
} 
} 
} 
void main (void) 
{ uint8_t sGPIO = 0; 
// shadow copy of GPIO 
while (1) { sGPIO ^= 0b000010; 

// flip shadow bit corresponding to GP1 
 output_b(sGPIO); 
//write to GPIO ("port B") 
delay_ms(500); 
 
} // repeat forever 
}
