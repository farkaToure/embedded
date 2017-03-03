/*

softpwm is a library to develop a multi pin PWM modules 
 
 */

#ifndef PWMARRAY_SIZE
  #define PWMARRAY_SIZE 0
#endif

#define _BIT_SET( bit_fld, n) bit_fld |= 1 << n
#define _BIT_CLEAR( bit_fld, n) bit_fld &= ~(1 << n)
#define _BIT_TOGGLE( bit_fld, n) bit_fld ^= (1 << n)
#define _BIT_TEST( bit_fld, n) bit_fld & (1 << n)


struct pwm_counter { 
  unsigned reset_value;
  unsigned tick_count;
  unsigned char* port;
  unsigned char pin;
};

struct pwm_period { 
  unsigned reset_value;
  unsigned tick_count;
};

struct pwm_array {
  struct pwm_counter pulse_array[PWMARRAY_SIZE];
  struct pwm_period period; //period has to be equal or greater than pulse
};

void handle_tick(struct pwm_array* pwmArray){
 
  unsigned char reset_flag = 0;
  
  if(--pwmArray->period.tick_count == 0){
    reset_flag = 1;
    pwmArray->period.tick_count = pwmArray->period.reset_value;
  }
  
  for(int i=0 ; i< PWMARRAY_SIZE; i++){
      if (reset_flag == 1){
	pwmArray->pulse_array[i].tick_count = pwmArray->pulse_array[i].reset_value;
	_BIT_SET(*pwmArray->pulse_array[i].port , pwmArray->pulse_array[i].pin);
      }	
      else {  
	if (--pwmArray->pulse_array[i].tick_count == 0) 
	  _BIT_CLEAR(*pwmArray->pulse_array[i].port , pwmArray->pulse_array[i].pin);	
      }      
    }
}

void initialize_pwm(struct pwm_array* pwmArray){  
  
   pwmArray->period.tick_count = pwmArray->period.reset_value;
   for(int i=0 ; i< PWMARRAY_SIZE; i++){
     pwmArray->pulse_array[i].tick_count = pwmArray->pulse_array[i].reset_value;     
     _BIT_SET(*pwmArray->pulse_array[i].port , pwmArray->pulse_array[i].pin);
     
   }
}

void initialize_pwm_pulse(struct pwm_counter* p_counter, unsigned reset_value, unsigned char* p_port, unsigned pin ){
  p_counter->reset_value= reset_value;
  p_counter->port = p_port;
  p_counter->pin = pin; 
}