// Actuator represents a simple actuator
//Turnigy TG9e
#ifndef pwmhub
    #include "pwmhub.h"
#endif // pwmhub

#define ANGLE60NEG 2
#define ANGLE0 4
#define ANGLE60 6

struct servo {
  char currentAngle;
  PWMCOUNTER_TYPE *pwm_reset_value;
};

void set_angle(struct servo *act, int angle){
    act->currentAngle = angle;
    switch(angle){
    case -60:
        *(act->pwm_reset_value) = ANGLE60NEG;
        break;
    case 0:
        *(act->pwm_reset_value) = ANGLE0;
        break;
    case 60:
        *(act->pwm_reset_value) = ANGLE60;
        break;
    }

}
