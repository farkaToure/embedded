/*

softpwm is a library to develop a multi pin PWM modules

 */


/*
#define _BIT_SET( bit_fld, n) bit_fld |= 1 << n
#define _BIT_CLEAR( bit_fld, n) bit_fld &= ~(1 << n)
#define _BIT_TOGGLE( bit_fld, n) bit_fld ^= (1 << n)
#define _BIT_TEST( bit_fld, n) bit_fld & (1 << n)
*/

/*PWMPERIOD_TYPE defines the data type which will apply to reset_value and tick_count
 * PWMPERIOD_TYPE should consider the frequency of the timer and the required PWM Period
 * Consider that is better to use *unsigned* data types and the following table
 * #bits	max value
 * 8bits	254
 * 16bits	65534
 * 32bits	4294967294
 */


/* PWMARRAY_SIZE defines de number of (PWM) signals to be modulated
 * The default value is 0
 */

#ifndef PWMARRAY_SIZE
#define PWMARRAY_SIZE 1
#endif

#define pwmhub
struct pwm_counter
{
    PWMCOUNTER_TYPE reset_value;
    PWMCOUNTER_TYPE tick_count;
    volatile unsigned char* port;
    unsigned char pin;
};

struct pwm_period
{
    PWMPERIOD_TYPE reset_value;
    PWMPERIOD_TYPE tick_count;
};

struct pwm_array
{
    struct pwm_counter pulse_array[PWMARRAY_SIZE];
    struct pwm_period period; //period has to be equal or greater than pulse
};

void handle_tick(struct pwm_array* pwmArray)
{
    int i;
    pwmArray->period.tick_count=1;
    pwmArray->period.tick_count--;
    lat_toggle(&LATB,6);
    if(pwmArray->period.tick_count <= 0)
    {
       // BIT_TOGGLE(LATB,7);
        //
        lat_toggle(pwmArray->pulse_array[0].port, pwmArray->pulse_array[0].pin);
        //lat_toggle(&LATB,7);
        pwmArray->period.tick_count = pwmArray->period.reset_value;

        for(i=0 ; i< PWMARRAY_SIZE; i++)
        {
            pwmArray->pulse_array[i].tick_count = pwmArray->pulse_array[i].reset_value;
            //BIT_SET(*(pwmArray->pulse_array[i].port) , pwmArray->pulse_array[i].pin); //BIT_SET
            //BIT_CLEAR(PORTB,7);
        }
    }

    else
    {

        for(i=0 ; i< PWMARRAY_SIZE; i++)
        {
            (pwmArray->pulse_array[i].tick_count == 1) ?
            1 : //(BIT_CLEAR(*(pwmArray->pulse_array[i].port) , pwmArray->pulse_array[i].pin)) :
            (pwmArray->pulse_array[i].tick_count--);
        }
    }
}

void initialize_pwm(struct pwm_array* pwmArray)
{

    pwmArray->period.tick_count = pwmArray->period.reset_value;
    for(int i=0 ; i< PWMARRAY_SIZE; i++)
    {
        pwmArray->pulse_array[i].tick_count = pwmArray->pulse_array[i].reset_value;
        //BIT_SET(*pwmArray->pulse_array[i].port , pwmArray->pulse_array[i].pin);

    }
}

void initialize_pwm_pulse(struct pwm_counter* p_counter, PWMPERIOD_TYPE reset_value, volatile unsigned char* p_port, unsigned pin )
{
    p_counter->reset_value= reset_value;
    p_counter->port = p_port;
    p_counter->pin = pin;
}
