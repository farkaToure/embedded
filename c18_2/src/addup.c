#include <addup.h>

long int addup(int param1, int param2){
  return param1 + param2;
}

//--ERRFORMAT --WARNFORMAT --MSGFORMAT --CHIP=%DEVICE --IDE=mplab -Q -C -I$(SRCPATH) %I