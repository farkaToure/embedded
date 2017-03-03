#define BIT_SET( bit_fld, n) bit_fld |= 1 << n
#define BIT_CLEAR( bit_fld, n) bit_fld &= ~(1 << n)
#define BIT_TOGGLE( bit_fld, n) bit_fld ^= (1 << n)
#define BIT_TEST( bit_fld, n) bit_fld & (1 << n)

#define INWARD 1
#define OUTWARD 0

void lat_set( volatile unsigned char* lat, unsigned char pin_number)
{

    *lat = (*lat | (1 << pin_number));

}

void lat_clear( volatile unsigned char* lat, unsigned char pin_number)
{

    *lat = (*lat & ~(1 << pin_number));

}

void lat_toggle( volatile unsigned char* lat, unsigned char pin_number)
{

    *lat = (*lat ^ (1 << pin_number));

}
