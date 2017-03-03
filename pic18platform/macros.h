#include <string.h>

#define BIT_SET( bit_fld, n) bit_fld |= 1 << n
#define BIT_CLEAR( bit_fld, n) bit_fld &= ~(1 << n)
#define BIT_TOGGLE( bit_fld, n) bit_fld ^= (1 << n)
#define BIT_TEST( bit_fld, n) bit_fld & (1 << n)

#define INWARD 1
#define OUTWARD 0

void lat_set( volatile unsigned char* lat, unsigned char pin_number)
{
    unsigned char aux;
    aux = *lat;

    aux  |= 1 << pin_number;
    *lat= aux;
}

void lat_clear( volatile unsigned char* lat, unsigned char pin_number)
{

    *lat = (*lat & ~(1 << pin_number));

}

void lat_toggle( volatile unsigned char* lat, unsigned char pin_number)
{

    *lat = (*lat ^ (1 << pin_number));

}

void putch(char data)
{
    while (! TXIF)
        continue;
    TXREG = data;
}

char __str[9];



char* byte2string(unsigned char byte)
{
    unsigned char mask = 1;
    __str[8] = '\0';
    for (int i = 0; i < 8; i++)
        __str[i] = (byte & (mask << i)) ? '1' : '0';

    __str[8] = '\0';

    return __str;

}
