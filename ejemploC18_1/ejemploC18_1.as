opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 11162"

opt pagewidth 120

	opt lm

	processor	18F46K20
porta	equ	0F80h
portb	equ	0F81h
portc	equ	0F82h
portd	equ	0F83h
porte	equ	0F84h
lata	equ	0F89h
latb	equ	0F8Ah
latc	equ	0F8Bh
latd	equ	0F8Ch
late	equ	0F8Dh
trisa	equ	0F92h
trisb	equ	0F93h
trisc	equ	0F94h
trisd	equ	0F95h
trise	equ	0F96h
pie1	equ	0F9Dh
pir1	equ	0F9Eh
ipr1	equ	0F9Fh
pie2	equ	0FA0h
pir2	equ	0FA1h
ipr2	equ	0FA2h
t3con	equ	0FB1h
tmr3l	equ	0FB2h
tmr3h	equ	0FB3h
ccp1con	equ	0FBDh
ccpr1l	equ	0FBEh
ccpr1h	equ	0FBFh
adcon1	equ	0FC1h
adcon0	equ	0FC2h
adresl	equ	0FC3h
adresh	equ	0FC4h
sspcon2	equ	0FC5h
sspcon1	equ	0FC6h
sspstat	equ	0FC7h
sspadd	equ	0FC8h
sspbuf	equ	0FC9h
t2con	equ	0FCAh
pr2	equ	0FCBh
tmr2	equ	0FCCh
t1con	equ	0FCDh
tmr1l	equ	0FCEh
tmr1h	equ	0FCFh
rcon	equ	0FD0h
wdtcon	equ	0FD1h
lvdcon	equ	0FD2h
osccon	equ	0FD3h
t0con	equ	0FD5h
tmr0l	equ	0FD6h
tmr0h	equ	0FD7h
status	equ	0FD8h
fsr2	equ	0FD9h
fsr2l	equ	0FD9h
fsr2h	equ	0FDAh
plusw2	equ	0FDBh
preinc2	equ	0FDCh
postdec2	equ	0FDDh
postinc2	equ	0FDEh
indf2	equ	0FDFh
bsr	equ	0FE0h
fsr1	equ	0FE1h
fsr1l	equ	0FE1h
fsr1h	equ	0FE2h
plusw1	equ	0FE3h
preinc1	equ	0FE4h
postdec1	equ	0FE5h
postinc1	equ	0FE6h
indf1	equ	0FE7h
wreg	equ	0FE8h
fsr0	equ	0FE9h
fsr0l	equ	0FE9h
fsr0h	equ	0FEAh
plusw0	equ	0FEBh
preinc0	equ	0FECh
postdec0	equ	0FEDh
postinc0	equ	0FEEh
indf0	equ	0FEFh
intcon3	equ	0FF0h
intcon2	equ	0FF1h
intcon	equ	0FF2h
prod	equ	0FF3h
prodl	equ	0FF3h
prodh	equ	0FF4h
tablat	equ	0FF5h
tblptr	equ	0FF6h
tblptrl	equ	0FF6h
tblptrh	equ	0FF7h
tblptru	equ	0FF8h
pcl	equ	0FF9h
pclat	equ	0FFAh
pclath	equ	0FFAh
pclatu	equ	0FFBh
stkptr	equ	0FFCh
tosl	equ	0FFDh
tosh	equ	0FFEh
tosu	equ	0FFFh
skipnz macro
	btfsc	status,2
	endm
	global	__ramtop
	global	__accesstop
# 19 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
SSPMSK equ 0F77h ;# 
# 38 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
SLRCON equ 0F78h ;# 
# 54 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
CM2CON1 equ 0F79h ;# 
# 70 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
CM2CON0 equ 0F7Ah ;# 
# 92 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
CM1CON0 equ 0F7Bh ;# 
# 114 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
WPUB equ 0F7Ch ;# 
# 133 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
IOCB equ 0F7Dh ;# 
# 149 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
ANSEL equ 0F7Eh ;# 
# 168 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
ANSELH equ 0F7Fh ;# 
# 184 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
PORTA equ 0F80h ;# 
# 257 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
PORTB equ 0F81h ;# 
# 315 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
PORTC equ 0F82h ;# 
# 371 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
PORTD equ 0F83h ;# 
# 413 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
PORTE equ 0F84h ;# 
# 545 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
LATA equ 0F89h ;# 
# 598 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
LATB equ 0F8Ah ;# 
# 651 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
LATC equ 0F8Bh ;# 
# 704 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
LATD equ 0F8Ch ;# 
# 757 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
LATE equ 0F8Dh ;# 
# 805 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
TRISA equ 0F92h ;# 
# 810 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
DDRA equ 0F92h ;# 
# 868 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
TRISB equ 0F93h ;# 
# 873 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
DDRB equ 0F93h ;# 
# 931 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
TRISC equ 0F94h ;# 
# 936 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
DDRC equ 0F94h ;# 
# 994 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
TRISD equ 0F95h ;# 
# 999 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
DDRD equ 0F95h ;# 
# 1057 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
TRISE equ 0F96h ;# 
# 1062 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
DDRE equ 0F96h ;# 
# 1110 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
OSCTUNE equ 0F9Bh ;# 
# 1132 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
PIE1 equ 0F9Dh ;# 
# 1159 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
PIR1 equ 0F9Eh ;# 
# 1186 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
IPR1 equ 0F9Fh ;# 
# 1213 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
PIE2 equ 0FA0h ;# 
# 1240 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
PIR2 equ 0FA1h ;# 
# 1267 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
IPR2 equ 0FA2h ;# 
# 1294 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
EECON1 equ 0FA6h ;# 
# 1317 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
EECON2 equ 0FA7h ;# 
# 1329 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
EEDATA equ 0FA8h ;# 
# 1341 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
EEADR equ 0FA9h ;# 
# 1360 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
EEADRH equ 0FAAh ;# 
# 1373 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
RCSTA equ 0FABh ;# 
# 1378 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
RCSTA1 equ 0FABh ;# 
# 1426 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
TXSTA equ 0FACh ;# 
# 1431 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
TXSTA1 equ 0FACh ;# 
# 1525 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
TXREG equ 0FADh ;# 
# 1530 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
TXREG1 equ 0FADh ;# 
# 1548 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
RCREG equ 0FAEh ;# 
# 1553 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
RCREG1 equ 0FAEh ;# 
# 1571 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
SPBRG equ 0FAFh ;# 
# 1576 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
SPBRG1 equ 0FAFh ;# 
# 1594 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
SPBRGH equ 0FB0h ;# 
# 1606 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
T3CON equ 0FB1h ;# 
# 1647 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
TMR3 equ 0FB2h ;# 
# 1659 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
TMR3L equ 0FB2h ;# 
# 1671 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
TMR3H equ 0FB3h ;# 
# 1683 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
CVRCON2 equ 0FB4h ;# 
# 1697 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
CVRCON equ 0FB5h ;# 
# 1723 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
ECCP1AS equ 0FB6h ;# 
# 1747 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
PWM1CON equ 0FB7h ;# 
# 1769 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
BAUDCON equ 0FB8h ;# 
# 1774 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
BAUDCTL equ 0FB8h ;# 
# 1830 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
PSTRCON equ 0FB9h ;# 
# 1846 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
CCP2CON equ 0FBAh ;# 
# 1867 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
CCPR2 equ 0FBBh ;# 
# 1879 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
CCPR2L equ 0FBBh ;# 
# 1891 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
CCPR2H equ 0FBCh ;# 
# 1903 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
CCP1CON equ 0FBDh ;# 
# 1927 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
CCPR1 equ 0FBEh ;# 
# 1939 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
CCPR1L equ 0FBEh ;# 
# 1951 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
CCPR1H equ 0FBFh ;# 
# 1963 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
ADCON2 equ 0FC0h ;# 
# 1986 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
ADCON1 equ 0FC1h ;# 
# 2012 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
ADCON0 equ 0FC2h ;# 
# 2066 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
ADRES equ 0FC3h ;# 
# 2078 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
ADRESL equ 0FC3h ;# 
# 2090 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
ADRESH equ 0FC4h ;# 
# 2102 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
SSPCON2 equ 0FC5h ;# 
# 2121 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
SSPCON1 equ 0FC6h ;# 
# 2143 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
SSPSTAT equ 0FC7h ;# 
# 2229 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
SSPADD equ 0FC8h ;# 
# 2241 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
SSPBUF equ 0FC9h ;# 
# 2253 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
T2CON equ 0FCAh ;# 
# 2276 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
PR2 equ 0FCBh ;# 
# 2281 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
MEMCON equ 0FCBh ;# 
# 2299 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
TMR2 equ 0FCCh ;# 
# 2311 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
T1CON equ 0FCDh ;# 
# 2348 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
TMR1 equ 0FCEh ;# 
# 2360 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
TMR1L equ 0FCEh ;# 
# 2372 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
TMR1H equ 0FCFh ;# 
# 2384 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
RCON equ 0FD0h ;# 
# 2429 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
WDTCON equ 0FD1h ;# 
# 2444 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
HLVDCON equ 0FD2h ;# 
# 2449 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
LVDCON equ 0FD2h ;# 
# 2519 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
OSCCON equ 0FD3h ;# 
# 2543 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
T0CON equ 0FD5h ;# 
# 2565 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
TMR0 equ 0FD6h ;# 
# 2577 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
TMR0L equ 0FD6h ;# 
# 2589 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
TMR0H equ 0FD7h ;# 
# 2601 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
STATUS equ 0FD8h ;# 
# 2632 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
FSR2 equ 0FD9h ;# 
# 2644 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
FSR2L equ 0FD9h ;# 
# 2656 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
FSR2H equ 0FDAh ;# 
# 2668 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
PLUSW2 equ 0FDBh ;# 
# 2680 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
PREINC2 equ 0FDCh ;# 
# 2692 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
POSTDEC2 equ 0FDDh ;# 
# 2704 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
POSTINC2 equ 0FDEh ;# 
# 2716 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
INDF2 equ 0FDFh ;# 
# 2728 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
BSR equ 0FE0h ;# 
# 2740 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
FSR1 equ 0FE1h ;# 
# 2752 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
FSR1L equ 0FE1h ;# 
# 2764 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
FSR1H equ 0FE2h ;# 
# 2776 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
PLUSW1 equ 0FE3h ;# 
# 2788 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
PREINC1 equ 0FE4h ;# 
# 2800 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
POSTDEC1 equ 0FE5h ;# 
# 2812 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
POSTINC1 equ 0FE6h ;# 
# 2824 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
INDF1 equ 0FE7h ;# 
# 2836 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
WREG equ 0FE8h ;# 
# 2859 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
FSR0 equ 0FE9h ;# 
# 2871 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
FSR0L equ 0FE9h ;# 
# 2883 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
FSR0H equ 0FEAh ;# 
# 2895 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
PLUSW0 equ 0FEBh ;# 
# 2907 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
PREINC0 equ 0FECh ;# 
# 2919 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
POSTDEC0 equ 0FEDh ;# 
# 2931 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
POSTINC0 equ 0FEEh ;# 
# 2943 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
INDF0 equ 0FEFh ;# 
# 2955 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
INTCON3 equ 0FF0h ;# 
# 2984 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
INTCON2 equ 0FF1h ;# 
# 3011 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
INTCON equ 0FF2h ;# 
# 3065 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
PROD equ 0FF3h ;# 
# 3077 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
PRODL equ 0FF3h ;# 
# 3089 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
PRODH equ 0FF4h ;# 
# 3101 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
TABLAT equ 0FF5h ;# 
# 3113 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
TBLPTR equ 0FF6h ;# 
# 3126 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
TBLPTRL equ 0FF6h ;# 
# 3138 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
TBLPTRH equ 0FF7h ;# 
# 3150 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
TBLPTRU equ 0FF8h ;# 
# 3163 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
PCLAT equ 0FF9h ;# 
# 3168 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
PC equ 0FF9h ;# 
# 3186 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
PCL equ 0FF9h ;# 
# 3198 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
PCLATH equ 0FFAh ;# 
# 3210 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
PCLATU equ 0FFBh ;# 
# 3222 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
STKPTR equ 0FFCh ;# 
# 3246 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
TOS equ 0FFDh ;# 
# 3258 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
TOSL equ 0FFDh ;# 
# 3270 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
TOSH equ 0FFEh ;# 
# 3282 "/usr/hitech/picc-18/9.80/include/pic18f46k20.h"
TOSU equ 0FFFh ;# 
	FNROOT	_main
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_ANSEL
_ANSEL	set	0xF7E
	global	_ANSELH
_ANSELH	set	0xF7F
	global	_LATBbits
_LATBbits	set	0xF8A
	global	_TRISB
_TRISB	set	0xF93
psect	text0,class=CODE,space=0,reloc=2
global __ptext0
__ptext0:
; #config settings
global __CFG_IESO$OFF
__CFG_IESO$OFF equ 0x0
global __CFG_FOSC$HS
__CFG_FOSC$HS equ 0x0
global __CFG_FCMEN$OFF
__CFG_FCMEN$OFF equ 0x0
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_BORV$30
__CFG_BORV$30 equ 0x0
global __CFG_PWRT$OFF
__CFG_PWRT$OFF equ 0x0
global __CFG_WDTPS$32768
__CFG_WDTPS$32768 equ 0x0
global __CFG_WDTEN$OFF
__CFG_WDTEN$OFF equ 0x0
global __CFG_CCP2MX$PORTC
__CFG_CCP2MX$PORTC equ 0x0
global __CFG_PBADEN$OFF
__CFG_PBADEN$OFF equ 0x0
global __CFG_LPT1OSC$OFF
__CFG_LPT1OSC$OFF equ 0x0
global __CFG_MCLRE$ON
__CFG_MCLRE$ON equ 0x0
global __CFG_STVREN$ON
__CFG_STVREN$ON equ 0x0
global __CFG_XINST$OFF
__CFG_XINST$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_CP0$OFF
__CFG_CP0$OFF equ 0x0
global __CFG_CP1$OFF
__CFG_CP1$OFF equ 0x0
global __CFG_CP2$OFF
__CFG_CP2$OFF equ 0x0
global __CFG_CP3$OFF
__CFG_CP3$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_CPB$OFF
__CFG_CPB$OFF equ 0x0
global __CFG_WRT0$OFF
__CFG_WRT0$OFF equ 0x0
global __CFG_WRT1$OFF
__CFG_WRT1$OFF equ 0x0
global __CFG_WRT2$OFF
__CFG_WRT2$OFF equ 0x0
global __CFG_WRT3$OFF
__CFG_WRT3$OFF equ 0x0
global __CFG_WRTB$OFF
__CFG_WRTB$OFF equ 0x0
global __CFG_WRTC$OFF
__CFG_WRTC$OFF equ 0x0
global __CFG_WRTD$OFF
__CFG_WRTD$OFF equ 0x0
global __CFG_EBTR0$OFF
__CFG_EBTR0$OFF equ 0x0
global __CFG_EBTR1$OFF
__CFG_EBTR1$OFF equ 0x0
global __CFG_EBTR2$OFF
__CFG_EBTR2$OFF equ 0x0
global __CFG_EBTR3$OFF
__CFG_EBTR3$OFF equ 0x0
global __CFG_EBTRB$OFF
__CFG_EBTRB$OFF equ 0x0
	file	"ejemploC18_1.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=1
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1
global __pcstackCOMRAM
__pcstackCOMRAM:
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95      0       0
;!    BANK0           160      0       0
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0
;!    BANK8           256      0       0
;!    BANK9           256      0       0
;!    BANK10          256      0       0
;!    BANK11          256      0       0
;!    BANK12          256      0       0
;!    BANK13          256      0       0
;!    BANK14          256      0       0
;!    BANK15           96      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _main in BANK8
;!
;!    None.
;!
;!Critical Paths under _main in BANK9
;!
;!    None.
;!
;!Critical Paths under _main in BANK10
;!
;!    None.
;!
;!Critical Paths under _main in BANK11
;!
;!    None.
;!
;!Critical Paths under _main in BANK12
;!
;!    None.
;!
;!Critical Paths under _main in BANK13
;!
;!    None.
;!
;!Critical Paths under _main in BANK14
;!
;!    None.
;!
;!Critical Paths under _main in BANK15
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 0
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMRAM           5F      0       0       0        0.0%
;!EEDATA             400      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMRAM              5F      0       0       1        0.0%
;!STACK                0      0       0       2        0.0%
;!DATA                 0      0       0       3        0.0%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0      0       0       5        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0       0       7        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK5           100      0       0      14        0.0%
;!BANK5              100      0       0      15        0.0%
;!BITBANK6           100      0       0      16        0.0%
;!BANK6              100      0       0      17        0.0%
;!BITBANK7           100      0       0      18        0.0%
;!BANK7              100      0       0      19        0.0%
;!BITBANK8           100      0       0      20        0.0%
;!BANK8              100      0       0      21        0.0%
;!BITBANK9           100      0       0      22        0.0%
;!BANK9              100      0       0      23        0.0%
;!BITBANK10          100      0       0      24        0.0%
;!BANK10             100      0       0      25        0.0%
;!BITBANK11          100      0       0      26        0.0%
;!BANK11             100      0       0      27        0.0%
;!BITBANK12          100      0       0      28        0.0%
;!BANK12             100      0       0      29        0.0%
;!BITBANK13          100      0       0      30        0.0%
;!BANK13             100      0       0      31        0.0%
;!ABS                  0      0       0      32        0.0%
;!BITBANK14          100      0       0      33        0.0%
;!BANK14             100      0       0      34        0.0%
;!BITBANK15           60      0       0      35        0.0%
;!BANK15              60      0       0      36        0.0%
;!BIGRAM             F5F      0       0      37        0.0%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 33 in file "/home/federico/Projects/piklabworkspace/ejemploC18_1/ejemploC18_1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0
psect	text0
	file	"/home/federico/Projects/piklabworkspace/ejemploC18_1/ejemploC18_1.c"
	line	33
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
	opt	stack 31
	line	34
	
l595:
	movlw	low(0Fh)
	movwf	((c:4033)),c	;volatile
	line	36
	movlw	low(0)
	movwf	((c:3966)),c	;volatile
	line	37
	movlw	low(0)
	movwf	((c:3967)),c	;volatile
	line	38
	movlw	low(0)
	movwf	((c:3987)),c	;volatile
	line	39
	
l597:
	bsf	((c:3978)),c,7	;volatile
	line	40
	
l13:
	
l14:
	goto	l13
	
l15:
	line	41
	
l16:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	GLOBAL	__activetblptr
__activetblptr	EQU	0
	psect	intsave_regs,class=BIGRAM,space=1
psect	text1,class=CODE,space=0,reloc=2
global __ptext1
__ptext1:
	PSECT	rparam,class=COMRAM,space=1
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
