/* Adjust to your clock frequency (in Hz). */ 
#ifndef CLOCKFREQ

  #define CLOCKFREQ (1U*1000U*1000U) //1MHz!!
  
#endif  
/* Instructions per millisecond. */ 
#define INSNS_PER_MS (CLOCKFREQ / 4000U) 
/* Delay loop is about 10 cycles per iteration. */ 
#define LOOPS_PER_MS (INSNS_PER_MS / 1U) 

void delay_ms(unsigned long ms) {
  	unsigned long u, loops; 
	loops = (unsigned long) LOOPS_PER_MS; 
  	while (ms--){
  	/* Inner loop takes about 10 cycles per iteration + 4 cycles setup. */ 
  		for (u = 0; u < loops; u++) { 
  			/* Prevent this loop from being optimized away. */ 
  			__asm nop __endasm; 
  		} 
	} 
} 
