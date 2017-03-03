#define BIT_SET( bit_fld, n) bit_fld |= 1 << n
#define BIT_CLEAR( bit_fld, n) bit_fld &= ~(1 << n)
#define BIT_TOGGLE( bit_fld, n) bit_fld ^= (1 << n)
#define BIT_TEST( bit_fld, n) bit_fld & (1 << n)