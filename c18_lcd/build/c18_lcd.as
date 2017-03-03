opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 58300"

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
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,w
	movf indf1,w
endm
popf macro arg1
	movf postdec1,w
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 49 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPMSK equ 0F77h ;# 
# 110 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SLRCON equ 0F78h ;# 
# 153 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CM2CON1 equ 0F79h ;# 
# 191 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CM2CON0 equ 0F7Ah ;# 
# 260 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CM1CON0 equ 0F7Bh ;# 
# 329 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
WPUB equ 0F7Ch ;# 
# 390 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
IOCB equ 0F7Dh ;# 
# 428 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ANSEL equ 0F7Eh ;# 
# 489 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ANSELH equ 0F7Fh ;# 
# 532 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTA equ 0F80h ;# 
# 769 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTB equ 0F81h ;# 
# 976 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTC equ 0F82h ;# 
# 1166 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTD equ 0F83h ;# 
# 1307 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTE equ 0F84h ;# 
# 1638 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATA equ 0F89h ;# 
# 1770 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATB equ 0F8Ah ;# 
# 1902 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATC equ 0F8Bh ;# 
# 2034 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATD equ 0F8Ch ;# 
# 2166 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATE equ 0F8Dh ;# 
# 2268 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISA equ 0F92h ;# 
# 2273 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRA equ 0F92h ;# 
# 2489 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISB equ 0F93h ;# 
# 2494 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRB equ 0F93h ;# 
# 2710 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISC equ 0F94h ;# 
# 2715 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRC equ 0F94h ;# 
# 2931 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISD equ 0F95h ;# 
# 2936 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRD equ 0F95h ;# 
# 3152 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISE equ 0F96h ;# 
# 3157 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRE equ 0F96h ;# 
# 3303 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
OSCTUNE equ 0F9Bh ;# 
# 3372 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIE1 equ 0F9Dh ;# 
# 3451 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIR1 equ 0F9Eh ;# 
# 3530 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
IPR1 equ 0F9Fh ;# 
# 3609 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIE2 equ 0FA0h ;# 
# 3688 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIR2 equ 0FA1h ;# 
# 3767 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
IPR2 equ 0FA2h ;# 
# 3846 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EECON1 equ 0FA6h ;# 
# 3911 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EECON2 equ 0FA7h ;# 
# 3917 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EEDATA equ 0FA8h ;# 
# 3923 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EEADR equ 0FA9h ;# 
# 3984 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EEADRH equ 0FAAh ;# 
# 4009 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCSTA equ 0FABh ;# 
# 4014 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCSTA1 equ 0FABh ;# 
# 4218 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXSTA equ 0FACh ;# 
# 4223 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXSTA1 equ 0FACh ;# 
# 4515 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXREG equ 0FADh ;# 
# 4520 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXREG1 equ 0FADh ;# 
# 4526 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCREG equ 0FAEh ;# 
# 4531 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCREG1 equ 0FAEh ;# 
# 4537 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SPBRG equ 0FAFh ;# 
# 4542 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SPBRG1 equ 0FAFh ;# 
# 4548 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SPBRGH equ 0FB0h ;# 
# 4554 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T3CON equ 0FB1h ;# 
# 4667 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR3 equ 0FB2h ;# 
# 4673 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR3L equ 0FB2h ;# 
# 4679 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR3H equ 0FB3h ;# 
# 4685 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CVRCON2 equ 0FB4h ;# 
# 4711 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CVRCON equ 0FB5h ;# 
# 4789 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ECCP1AS equ 0FB6h ;# 
# 4870 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PWM1CON equ 0FB7h ;# 
# 4939 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
BAUDCON equ 0FB8h ;# 
# 4944 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
BAUDCTL equ 0FB8h ;# 
# 5104 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PSTRCON equ 0FB9h ;# 
# 5147 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCP2CON equ 0FBAh ;# 
# 5210 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR2 equ 0FBBh ;# 
# 5216 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR2L equ 0FBBh ;# 
# 5222 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR2H equ 0FBCh ;# 
# 5228 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCP1CON equ 0FBDh ;# 
# 5309 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR1 equ 0FBEh ;# 
# 5315 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR1L equ 0FBEh ;# 
# 5321 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR1H equ 0FBFh ;# 
# 5327 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADCON2 equ 0FC0h ;# 
# 5397 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADCON1 equ 0FC1h ;# 
# 5450 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADCON0 equ 0FC2h ;# 
# 5568 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADRES equ 0FC3h ;# 
# 5574 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADRESL equ 0FC3h ;# 
# 5580 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADRESH equ 0FC4h ;# 
# 5586 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPCON2 equ 0FC5h ;# 
# 5647 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPCON1 equ 0FC6h ;# 
# 5716 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPSTAT equ 0FC7h ;# 
# 5944 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPADD equ 0FC8h ;# 
# 5950 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPBUF equ 0FC9h ;# 
# 5956 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T2CON equ 0FCAh ;# 
# 6026 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PR2 equ 0FCBh ;# 
# 6031 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
MEMCON equ 0FCBh ;# 
# 6135 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR2 equ 0FCCh ;# 
# 6141 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T1CON equ 0FCDh ;# 
# 6245 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR1 equ 0FCEh ;# 
# 6251 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR1L equ 0FCEh ;# 
# 6257 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR1H equ 0FCFh ;# 
# 6263 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCON equ 0FD0h ;# 
# 6395 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
WDTCON equ 0FD1h ;# 
# 6422 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
HLVDCON equ 0FD2h ;# 
# 6427 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LVDCON equ 0FD2h ;# 
# 6691 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
OSCCON equ 0FD3h ;# 
# 6767 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T0CON equ 0FD5h ;# 
# 6836 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR0 equ 0FD6h ;# 
# 6842 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR0L equ 0FD6h ;# 
# 6848 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR0H equ 0FD7h ;# 
# 6854 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
STATUS equ 0FD8h ;# 
# 6932 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR2 equ 0FD9h ;# 
# 6938 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR2L equ 0FD9h ;# 
# 6944 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR2H equ 0FDAh ;# 
# 6950 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PLUSW2 equ 0FDBh ;# 
# 6956 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PREINC2 equ 0FDCh ;# 
# 6962 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTDEC2 equ 0FDDh ;# 
# 6968 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTINC2 equ 0FDEh ;# 
# 6974 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INDF2 equ 0FDFh ;# 
# 6980 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
BSR equ 0FE0h ;# 
# 6986 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR1 equ 0FE1h ;# 
# 6992 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR1L equ 0FE1h ;# 
# 6998 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR1H equ 0FE2h ;# 
# 7004 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PLUSW1 equ 0FE3h ;# 
# 7010 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PREINC1 equ 0FE4h ;# 
# 7016 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTDEC1 equ 0FE5h ;# 
# 7022 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTINC1 equ 0FE6h ;# 
# 7028 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INDF1 equ 0FE7h ;# 
# 7034 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
WREG equ 0FE8h ;# 
# 7045 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR0 equ 0FE9h ;# 
# 7051 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR0L equ 0FE9h ;# 
# 7057 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR0H equ 0FEAh ;# 
# 7063 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PLUSW0 equ 0FEBh ;# 
# 7069 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PREINC0 equ 0FECh ;# 
# 7075 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTDEC0 equ 0FEDh ;# 
# 7081 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTINC0 equ 0FEEh ;# 
# 7087 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INDF0 equ 0FEFh ;# 
# 7093 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INTCON3 equ 0FF0h ;# 
# 7184 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INTCON2 equ 0FF1h ;# 
# 7253 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INTCON equ 0FF2h ;# 
# 7389 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PROD equ 0FF3h ;# 
# 7395 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PRODL equ 0FF3h ;# 
# 7401 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PRODH equ 0FF4h ;# 
# 7407 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TABLAT equ 0FF5h ;# 
# 7415 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTR equ 0FF6h ;# 
# 7421 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTRL equ 0FF6h ;# 
# 7427 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTRH equ 0FF7h ;# 
# 7433 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTRU equ 0FF8h ;# 
# 7441 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCLAT equ 0FF9h ;# 
# 7448 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PC equ 0FF9h ;# 
# 7454 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCL equ 0FF9h ;# 
# 7460 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCLATH equ 0FFAh ;# 
# 7466 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCLATU equ 0FFBh ;# 
# 7472 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
STKPTR equ 0FFCh ;# 
# 7545 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOS equ 0FFDh ;# 
# 7551 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOSL equ 0FFDh ;# 
# 7557 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOSH equ 0FFEh ;# 
# 7563 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOSU equ 0FFFh ;# 
# 49 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPMSK equ 0F77h ;# 
# 110 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SLRCON equ 0F78h ;# 
# 153 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CM2CON1 equ 0F79h ;# 
# 191 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CM2CON0 equ 0F7Ah ;# 
# 260 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CM1CON0 equ 0F7Bh ;# 
# 329 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
WPUB equ 0F7Ch ;# 
# 390 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
IOCB equ 0F7Dh ;# 
# 428 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ANSEL equ 0F7Eh ;# 
# 489 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ANSELH equ 0F7Fh ;# 
# 532 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTA equ 0F80h ;# 
# 769 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTB equ 0F81h ;# 
# 976 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTC equ 0F82h ;# 
# 1166 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTD equ 0F83h ;# 
# 1307 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTE equ 0F84h ;# 
# 1638 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATA equ 0F89h ;# 
# 1770 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATB equ 0F8Ah ;# 
# 1902 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATC equ 0F8Bh ;# 
# 2034 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATD equ 0F8Ch ;# 
# 2166 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATE equ 0F8Dh ;# 
# 2268 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISA equ 0F92h ;# 
# 2273 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRA equ 0F92h ;# 
# 2489 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISB equ 0F93h ;# 
# 2494 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRB equ 0F93h ;# 
# 2710 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISC equ 0F94h ;# 
# 2715 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRC equ 0F94h ;# 
# 2931 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISD equ 0F95h ;# 
# 2936 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRD equ 0F95h ;# 
# 3152 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISE equ 0F96h ;# 
# 3157 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRE equ 0F96h ;# 
# 3303 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
OSCTUNE equ 0F9Bh ;# 
# 3372 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIE1 equ 0F9Dh ;# 
# 3451 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIR1 equ 0F9Eh ;# 
# 3530 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
IPR1 equ 0F9Fh ;# 
# 3609 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIE2 equ 0FA0h ;# 
# 3688 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIR2 equ 0FA1h ;# 
# 3767 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
IPR2 equ 0FA2h ;# 
# 3846 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EECON1 equ 0FA6h ;# 
# 3911 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EECON2 equ 0FA7h ;# 
# 3917 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EEDATA equ 0FA8h ;# 
# 3923 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EEADR equ 0FA9h ;# 
# 3984 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EEADRH equ 0FAAh ;# 
# 4009 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCSTA equ 0FABh ;# 
# 4014 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCSTA1 equ 0FABh ;# 
# 4218 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXSTA equ 0FACh ;# 
# 4223 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXSTA1 equ 0FACh ;# 
# 4515 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXREG equ 0FADh ;# 
# 4520 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXREG1 equ 0FADh ;# 
# 4526 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCREG equ 0FAEh ;# 
# 4531 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCREG1 equ 0FAEh ;# 
# 4537 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SPBRG equ 0FAFh ;# 
# 4542 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SPBRG1 equ 0FAFh ;# 
# 4548 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SPBRGH equ 0FB0h ;# 
# 4554 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T3CON equ 0FB1h ;# 
# 4667 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR3 equ 0FB2h ;# 
# 4673 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR3L equ 0FB2h ;# 
# 4679 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR3H equ 0FB3h ;# 
# 4685 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CVRCON2 equ 0FB4h ;# 
# 4711 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CVRCON equ 0FB5h ;# 
# 4789 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ECCP1AS equ 0FB6h ;# 
# 4870 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PWM1CON equ 0FB7h ;# 
# 4939 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
BAUDCON equ 0FB8h ;# 
# 4944 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
BAUDCTL equ 0FB8h ;# 
# 5104 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PSTRCON equ 0FB9h ;# 
# 5147 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCP2CON equ 0FBAh ;# 
# 5210 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR2 equ 0FBBh ;# 
# 5216 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR2L equ 0FBBh ;# 
# 5222 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR2H equ 0FBCh ;# 
# 5228 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCP1CON equ 0FBDh ;# 
# 5309 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR1 equ 0FBEh ;# 
# 5315 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR1L equ 0FBEh ;# 
# 5321 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR1H equ 0FBFh ;# 
# 5327 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADCON2 equ 0FC0h ;# 
# 5397 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADCON1 equ 0FC1h ;# 
# 5450 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADCON0 equ 0FC2h ;# 
# 5568 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADRES equ 0FC3h ;# 
# 5574 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADRESL equ 0FC3h ;# 
# 5580 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADRESH equ 0FC4h ;# 
# 5586 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPCON2 equ 0FC5h ;# 
# 5647 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPCON1 equ 0FC6h ;# 
# 5716 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPSTAT equ 0FC7h ;# 
# 5944 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPADD equ 0FC8h ;# 
# 5950 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPBUF equ 0FC9h ;# 
# 5956 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T2CON equ 0FCAh ;# 
# 6026 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PR2 equ 0FCBh ;# 
# 6031 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
MEMCON equ 0FCBh ;# 
# 6135 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR2 equ 0FCCh ;# 
# 6141 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T1CON equ 0FCDh ;# 
# 6245 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR1 equ 0FCEh ;# 
# 6251 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR1L equ 0FCEh ;# 
# 6257 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR1H equ 0FCFh ;# 
# 6263 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCON equ 0FD0h ;# 
# 6395 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
WDTCON equ 0FD1h ;# 
# 6422 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
HLVDCON equ 0FD2h ;# 
# 6427 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LVDCON equ 0FD2h ;# 
# 6691 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
OSCCON equ 0FD3h ;# 
# 6767 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T0CON equ 0FD5h ;# 
# 6836 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR0 equ 0FD6h ;# 
# 6842 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR0L equ 0FD6h ;# 
# 6848 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR0H equ 0FD7h ;# 
# 6854 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
STATUS equ 0FD8h ;# 
# 6932 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR2 equ 0FD9h ;# 
# 6938 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR2L equ 0FD9h ;# 
# 6944 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR2H equ 0FDAh ;# 
# 6950 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PLUSW2 equ 0FDBh ;# 
# 6956 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PREINC2 equ 0FDCh ;# 
# 6962 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTDEC2 equ 0FDDh ;# 
# 6968 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTINC2 equ 0FDEh ;# 
# 6974 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INDF2 equ 0FDFh ;# 
# 6980 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
BSR equ 0FE0h ;# 
# 6986 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR1 equ 0FE1h ;# 
# 6992 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR1L equ 0FE1h ;# 
# 6998 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR1H equ 0FE2h ;# 
# 7004 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PLUSW1 equ 0FE3h ;# 
# 7010 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PREINC1 equ 0FE4h ;# 
# 7016 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTDEC1 equ 0FE5h ;# 
# 7022 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTINC1 equ 0FE6h ;# 
# 7028 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INDF1 equ 0FE7h ;# 
# 7034 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
WREG equ 0FE8h ;# 
# 7045 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR0 equ 0FE9h ;# 
# 7051 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR0L equ 0FE9h ;# 
# 7057 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR0H equ 0FEAh ;# 
# 7063 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PLUSW0 equ 0FEBh ;# 
# 7069 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PREINC0 equ 0FECh ;# 
# 7075 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTDEC0 equ 0FEDh ;# 
# 7081 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTINC0 equ 0FEEh ;# 
# 7087 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INDF0 equ 0FEFh ;# 
# 7093 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INTCON3 equ 0FF0h ;# 
# 7184 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INTCON2 equ 0FF1h ;# 
# 7253 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INTCON equ 0FF2h ;# 
# 7389 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PROD equ 0FF3h ;# 
# 7395 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PRODL equ 0FF3h ;# 
# 7401 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PRODH equ 0FF4h ;# 
# 7407 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TABLAT equ 0FF5h ;# 
# 7415 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTR equ 0FF6h ;# 
# 7421 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTRL equ 0FF6h ;# 
# 7427 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTRH equ 0FF7h ;# 
# 7433 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTRU equ 0FF8h ;# 
# 7441 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCLAT equ 0FF9h ;# 
# 7448 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PC equ 0FF9h ;# 
# 7454 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCL equ 0FF9h ;# 
# 7460 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCLATH equ 0FFAh ;# 
# 7466 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCLATU equ 0FFBh ;# 
# 7472 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
STKPTR equ 0FFCh ;# 
# 7545 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOS equ 0FFDh ;# 
# 7551 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOSL equ 0FFDh ;# 
# 7557 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOSH equ 0FFEh ;# 
# 7563 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOSU equ 0FFFh ;# 
# 49 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPMSK equ 0F77h ;# 
# 110 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SLRCON equ 0F78h ;# 
# 153 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CM2CON1 equ 0F79h ;# 
# 191 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CM2CON0 equ 0F7Ah ;# 
# 260 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CM1CON0 equ 0F7Bh ;# 
# 329 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
WPUB equ 0F7Ch ;# 
# 390 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
IOCB equ 0F7Dh ;# 
# 428 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ANSEL equ 0F7Eh ;# 
# 489 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ANSELH equ 0F7Fh ;# 
# 532 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTA equ 0F80h ;# 
# 769 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTB equ 0F81h ;# 
# 976 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTC equ 0F82h ;# 
# 1166 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTD equ 0F83h ;# 
# 1307 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTE equ 0F84h ;# 
# 1638 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATA equ 0F89h ;# 
# 1770 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATB equ 0F8Ah ;# 
# 1902 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATC equ 0F8Bh ;# 
# 2034 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATD equ 0F8Ch ;# 
# 2166 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATE equ 0F8Dh ;# 
# 2268 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISA equ 0F92h ;# 
# 2273 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRA equ 0F92h ;# 
# 2489 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISB equ 0F93h ;# 
# 2494 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRB equ 0F93h ;# 
# 2710 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISC equ 0F94h ;# 
# 2715 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRC equ 0F94h ;# 
# 2931 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISD equ 0F95h ;# 
# 2936 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRD equ 0F95h ;# 
# 3152 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISE equ 0F96h ;# 
# 3157 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRE equ 0F96h ;# 
# 3303 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
OSCTUNE equ 0F9Bh ;# 
# 3372 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIE1 equ 0F9Dh ;# 
# 3451 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIR1 equ 0F9Eh ;# 
# 3530 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
IPR1 equ 0F9Fh ;# 
# 3609 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIE2 equ 0FA0h ;# 
# 3688 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIR2 equ 0FA1h ;# 
# 3767 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
IPR2 equ 0FA2h ;# 
# 3846 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EECON1 equ 0FA6h ;# 
# 3911 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EECON2 equ 0FA7h ;# 
# 3917 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EEDATA equ 0FA8h ;# 
# 3923 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EEADR equ 0FA9h ;# 
# 3984 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EEADRH equ 0FAAh ;# 
# 4009 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCSTA equ 0FABh ;# 
# 4014 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCSTA1 equ 0FABh ;# 
# 4218 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXSTA equ 0FACh ;# 
# 4223 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXSTA1 equ 0FACh ;# 
# 4515 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXREG equ 0FADh ;# 
# 4520 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXREG1 equ 0FADh ;# 
# 4526 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCREG equ 0FAEh ;# 
# 4531 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCREG1 equ 0FAEh ;# 
# 4537 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SPBRG equ 0FAFh ;# 
# 4542 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SPBRG1 equ 0FAFh ;# 
# 4548 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SPBRGH equ 0FB0h ;# 
# 4554 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T3CON equ 0FB1h ;# 
# 4667 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR3 equ 0FB2h ;# 
# 4673 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR3L equ 0FB2h ;# 
# 4679 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR3H equ 0FB3h ;# 
# 4685 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CVRCON2 equ 0FB4h ;# 
# 4711 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CVRCON equ 0FB5h ;# 
# 4789 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ECCP1AS equ 0FB6h ;# 
# 4870 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PWM1CON equ 0FB7h ;# 
# 4939 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
BAUDCON equ 0FB8h ;# 
# 4944 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
BAUDCTL equ 0FB8h ;# 
# 5104 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PSTRCON equ 0FB9h ;# 
# 5147 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCP2CON equ 0FBAh ;# 
# 5210 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR2 equ 0FBBh ;# 
# 5216 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR2L equ 0FBBh ;# 
# 5222 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR2H equ 0FBCh ;# 
# 5228 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCP1CON equ 0FBDh ;# 
# 5309 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR1 equ 0FBEh ;# 
# 5315 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR1L equ 0FBEh ;# 
# 5321 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR1H equ 0FBFh ;# 
# 5327 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADCON2 equ 0FC0h ;# 
# 5397 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADCON1 equ 0FC1h ;# 
# 5450 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADCON0 equ 0FC2h ;# 
# 5568 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADRES equ 0FC3h ;# 
# 5574 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADRESL equ 0FC3h ;# 
# 5580 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADRESH equ 0FC4h ;# 
# 5586 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPCON2 equ 0FC5h ;# 
# 5647 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPCON1 equ 0FC6h ;# 
# 5716 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPSTAT equ 0FC7h ;# 
# 5944 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPADD equ 0FC8h ;# 
# 5950 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPBUF equ 0FC9h ;# 
# 5956 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T2CON equ 0FCAh ;# 
# 6026 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PR2 equ 0FCBh ;# 
# 6031 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
MEMCON equ 0FCBh ;# 
# 6135 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR2 equ 0FCCh ;# 
# 6141 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T1CON equ 0FCDh ;# 
# 6245 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR1 equ 0FCEh ;# 
# 6251 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR1L equ 0FCEh ;# 
# 6257 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR1H equ 0FCFh ;# 
# 6263 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCON equ 0FD0h ;# 
# 6395 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
WDTCON equ 0FD1h ;# 
# 6422 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
HLVDCON equ 0FD2h ;# 
# 6427 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LVDCON equ 0FD2h ;# 
# 6691 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
OSCCON equ 0FD3h ;# 
# 6767 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T0CON equ 0FD5h ;# 
# 6836 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR0 equ 0FD6h ;# 
# 6842 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR0L equ 0FD6h ;# 
# 6848 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR0H equ 0FD7h ;# 
# 6854 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
STATUS equ 0FD8h ;# 
# 6932 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR2 equ 0FD9h ;# 
# 6938 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR2L equ 0FD9h ;# 
# 6944 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR2H equ 0FDAh ;# 
# 6950 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PLUSW2 equ 0FDBh ;# 
# 6956 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PREINC2 equ 0FDCh ;# 
# 6962 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTDEC2 equ 0FDDh ;# 
# 6968 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTINC2 equ 0FDEh ;# 
# 6974 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INDF2 equ 0FDFh ;# 
# 6980 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
BSR equ 0FE0h ;# 
# 6986 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR1 equ 0FE1h ;# 
# 6992 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR1L equ 0FE1h ;# 
# 6998 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR1H equ 0FE2h ;# 
# 7004 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PLUSW1 equ 0FE3h ;# 
# 7010 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PREINC1 equ 0FE4h ;# 
# 7016 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTDEC1 equ 0FE5h ;# 
# 7022 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTINC1 equ 0FE6h ;# 
# 7028 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INDF1 equ 0FE7h ;# 
# 7034 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
WREG equ 0FE8h ;# 
# 7045 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR0 equ 0FE9h ;# 
# 7051 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR0L equ 0FE9h ;# 
# 7057 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR0H equ 0FEAh ;# 
# 7063 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PLUSW0 equ 0FEBh ;# 
# 7069 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PREINC0 equ 0FECh ;# 
# 7075 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTDEC0 equ 0FEDh ;# 
# 7081 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTINC0 equ 0FEEh ;# 
# 7087 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INDF0 equ 0FEFh ;# 
# 7093 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INTCON3 equ 0FF0h ;# 
# 7184 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INTCON2 equ 0FF1h ;# 
# 7253 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INTCON equ 0FF2h ;# 
# 7389 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PROD equ 0FF3h ;# 
# 7395 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PRODL equ 0FF3h ;# 
# 7401 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PRODH equ 0FF4h ;# 
# 7407 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TABLAT equ 0FF5h ;# 
# 7415 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTR equ 0FF6h ;# 
# 7421 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTRL equ 0FF6h ;# 
# 7427 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTRH equ 0FF7h ;# 
# 7433 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTRU equ 0FF8h ;# 
# 7441 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCLAT equ 0FF9h ;# 
# 7448 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PC equ 0FF9h ;# 
# 7454 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCL equ 0FF9h ;# 
# 7460 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCLATH equ 0FFAh ;# 
# 7466 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCLATU equ 0FFBh ;# 
# 7472 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
STKPTR equ 0FFCh ;# 
# 7545 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOS equ 0FFDh ;# 
# 7551 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOSL equ 0FFDh ;# 
# 7557 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOSH equ 0FFEh ;# 
# 7563 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOSU equ 0FFFh ;# 
# 49 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPMSK equ 0F77h ;# 
# 110 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SLRCON equ 0F78h ;# 
# 153 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CM2CON1 equ 0F79h ;# 
# 191 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CM2CON0 equ 0F7Ah ;# 
# 260 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CM1CON0 equ 0F7Bh ;# 
# 329 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
WPUB equ 0F7Ch ;# 
# 390 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
IOCB equ 0F7Dh ;# 
# 428 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ANSEL equ 0F7Eh ;# 
# 489 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ANSELH equ 0F7Fh ;# 
# 532 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTA equ 0F80h ;# 
# 769 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTB equ 0F81h ;# 
# 976 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTC equ 0F82h ;# 
# 1166 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTD equ 0F83h ;# 
# 1307 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTE equ 0F84h ;# 
# 1638 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATA equ 0F89h ;# 
# 1770 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATB equ 0F8Ah ;# 
# 1902 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATC equ 0F8Bh ;# 
# 2034 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATD equ 0F8Ch ;# 
# 2166 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATE equ 0F8Dh ;# 
# 2268 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISA equ 0F92h ;# 
# 2273 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRA equ 0F92h ;# 
# 2489 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISB equ 0F93h ;# 
# 2494 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRB equ 0F93h ;# 
# 2710 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISC equ 0F94h ;# 
# 2715 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRC equ 0F94h ;# 
# 2931 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISD equ 0F95h ;# 
# 2936 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRD equ 0F95h ;# 
# 3152 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISE equ 0F96h ;# 
# 3157 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRE equ 0F96h ;# 
# 3303 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
OSCTUNE equ 0F9Bh ;# 
# 3372 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIE1 equ 0F9Dh ;# 
# 3451 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIR1 equ 0F9Eh ;# 
# 3530 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
IPR1 equ 0F9Fh ;# 
# 3609 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIE2 equ 0FA0h ;# 
# 3688 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIR2 equ 0FA1h ;# 
# 3767 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
IPR2 equ 0FA2h ;# 
# 3846 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EECON1 equ 0FA6h ;# 
# 3911 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EECON2 equ 0FA7h ;# 
# 3917 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EEDATA equ 0FA8h ;# 
# 3923 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EEADR equ 0FA9h ;# 
# 3984 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EEADRH equ 0FAAh ;# 
# 4009 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCSTA equ 0FABh ;# 
# 4014 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCSTA1 equ 0FABh ;# 
# 4218 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXSTA equ 0FACh ;# 
# 4223 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXSTA1 equ 0FACh ;# 
# 4515 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXREG equ 0FADh ;# 
# 4520 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXREG1 equ 0FADh ;# 
# 4526 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCREG equ 0FAEh ;# 
# 4531 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCREG1 equ 0FAEh ;# 
# 4537 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SPBRG equ 0FAFh ;# 
# 4542 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SPBRG1 equ 0FAFh ;# 
# 4548 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SPBRGH equ 0FB0h ;# 
# 4554 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T3CON equ 0FB1h ;# 
# 4667 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR3 equ 0FB2h ;# 
# 4673 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR3L equ 0FB2h ;# 
# 4679 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR3H equ 0FB3h ;# 
# 4685 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CVRCON2 equ 0FB4h ;# 
# 4711 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CVRCON equ 0FB5h ;# 
# 4789 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ECCP1AS equ 0FB6h ;# 
# 4870 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PWM1CON equ 0FB7h ;# 
# 4939 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
BAUDCON equ 0FB8h ;# 
# 4944 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
BAUDCTL equ 0FB8h ;# 
# 5104 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PSTRCON equ 0FB9h ;# 
# 5147 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCP2CON equ 0FBAh ;# 
# 5210 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR2 equ 0FBBh ;# 
# 5216 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR2L equ 0FBBh ;# 
# 5222 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR2H equ 0FBCh ;# 
# 5228 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCP1CON equ 0FBDh ;# 
# 5309 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR1 equ 0FBEh ;# 
# 5315 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR1L equ 0FBEh ;# 
# 5321 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR1H equ 0FBFh ;# 
# 5327 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADCON2 equ 0FC0h ;# 
# 5397 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADCON1 equ 0FC1h ;# 
# 5450 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADCON0 equ 0FC2h ;# 
# 5568 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADRES equ 0FC3h ;# 
# 5574 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADRESL equ 0FC3h ;# 
# 5580 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADRESH equ 0FC4h ;# 
# 5586 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPCON2 equ 0FC5h ;# 
# 5647 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPCON1 equ 0FC6h ;# 
# 5716 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPSTAT equ 0FC7h ;# 
# 5944 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPADD equ 0FC8h ;# 
# 5950 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPBUF equ 0FC9h ;# 
# 5956 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T2CON equ 0FCAh ;# 
# 6026 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PR2 equ 0FCBh ;# 
# 6031 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
MEMCON equ 0FCBh ;# 
# 6135 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR2 equ 0FCCh ;# 
# 6141 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T1CON equ 0FCDh ;# 
# 6245 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR1 equ 0FCEh ;# 
# 6251 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR1L equ 0FCEh ;# 
# 6257 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR1H equ 0FCFh ;# 
# 6263 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCON equ 0FD0h ;# 
# 6395 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
WDTCON equ 0FD1h ;# 
# 6422 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
HLVDCON equ 0FD2h ;# 
# 6427 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LVDCON equ 0FD2h ;# 
# 6691 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
OSCCON equ 0FD3h ;# 
# 6767 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T0CON equ 0FD5h ;# 
# 6836 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR0 equ 0FD6h ;# 
# 6842 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR0L equ 0FD6h ;# 
# 6848 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR0H equ 0FD7h ;# 
# 6854 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
STATUS equ 0FD8h ;# 
# 6932 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR2 equ 0FD9h ;# 
# 6938 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR2L equ 0FD9h ;# 
# 6944 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR2H equ 0FDAh ;# 
# 6950 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PLUSW2 equ 0FDBh ;# 
# 6956 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PREINC2 equ 0FDCh ;# 
# 6962 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTDEC2 equ 0FDDh ;# 
# 6968 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTINC2 equ 0FDEh ;# 
# 6974 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INDF2 equ 0FDFh ;# 
# 6980 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
BSR equ 0FE0h ;# 
# 6986 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR1 equ 0FE1h ;# 
# 6992 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR1L equ 0FE1h ;# 
# 6998 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR1H equ 0FE2h ;# 
# 7004 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PLUSW1 equ 0FE3h ;# 
# 7010 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PREINC1 equ 0FE4h ;# 
# 7016 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTDEC1 equ 0FE5h ;# 
# 7022 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTINC1 equ 0FE6h ;# 
# 7028 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INDF1 equ 0FE7h ;# 
# 7034 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
WREG equ 0FE8h ;# 
# 7045 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR0 equ 0FE9h ;# 
# 7051 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR0L equ 0FE9h ;# 
# 7057 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR0H equ 0FEAh ;# 
# 7063 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PLUSW0 equ 0FEBh ;# 
# 7069 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PREINC0 equ 0FECh ;# 
# 7075 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTDEC0 equ 0FEDh ;# 
# 7081 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTINC0 equ 0FEEh ;# 
# 7087 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INDF0 equ 0FEFh ;# 
# 7093 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INTCON3 equ 0FF0h ;# 
# 7184 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INTCON2 equ 0FF1h ;# 
# 7253 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INTCON equ 0FF2h ;# 
# 7389 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PROD equ 0FF3h ;# 
# 7395 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PRODL equ 0FF3h ;# 
# 7401 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PRODH equ 0FF4h ;# 
# 7407 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TABLAT equ 0FF5h ;# 
# 7415 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTR equ 0FF6h ;# 
# 7421 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTRL equ 0FF6h ;# 
# 7427 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTRH equ 0FF7h ;# 
# 7433 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTRU equ 0FF8h ;# 
# 7441 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCLAT equ 0FF9h ;# 
# 7448 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PC equ 0FF9h ;# 
# 7454 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCL equ 0FF9h ;# 
# 7460 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCLATH equ 0FFAh ;# 
# 7466 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCLATU equ 0FFBh ;# 
# 7472 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
STKPTR equ 0FFCh ;# 
# 7545 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOS equ 0FFDh ;# 
# 7551 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOSL equ 0FFDh ;# 
# 7557 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOSH equ 0FFEh ;# 
# 7563 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOSU equ 0FFFh ;# 
# 49 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPMSK equ 0F77h ;# 
# 110 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SLRCON equ 0F78h ;# 
# 153 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CM2CON1 equ 0F79h ;# 
# 191 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CM2CON0 equ 0F7Ah ;# 
# 260 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CM1CON0 equ 0F7Bh ;# 
# 329 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
WPUB equ 0F7Ch ;# 
# 390 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
IOCB equ 0F7Dh ;# 
# 428 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ANSEL equ 0F7Eh ;# 
# 489 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ANSELH equ 0F7Fh ;# 
# 532 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTA equ 0F80h ;# 
# 769 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTB equ 0F81h ;# 
# 976 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTC equ 0F82h ;# 
# 1166 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTD equ 0F83h ;# 
# 1307 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTE equ 0F84h ;# 
# 1638 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATA equ 0F89h ;# 
# 1770 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATB equ 0F8Ah ;# 
# 1902 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATC equ 0F8Bh ;# 
# 2034 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATD equ 0F8Ch ;# 
# 2166 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATE equ 0F8Dh ;# 
# 2268 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISA equ 0F92h ;# 
# 2273 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRA equ 0F92h ;# 
# 2489 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISB equ 0F93h ;# 
# 2494 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRB equ 0F93h ;# 
# 2710 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISC equ 0F94h ;# 
# 2715 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRC equ 0F94h ;# 
# 2931 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISD equ 0F95h ;# 
# 2936 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRD equ 0F95h ;# 
# 3152 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISE equ 0F96h ;# 
# 3157 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRE equ 0F96h ;# 
# 3303 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
OSCTUNE equ 0F9Bh ;# 
# 3372 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIE1 equ 0F9Dh ;# 
# 3451 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIR1 equ 0F9Eh ;# 
# 3530 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
IPR1 equ 0F9Fh ;# 
# 3609 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIE2 equ 0FA0h ;# 
# 3688 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIR2 equ 0FA1h ;# 
# 3767 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
IPR2 equ 0FA2h ;# 
# 3846 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EECON1 equ 0FA6h ;# 
# 3911 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EECON2 equ 0FA7h ;# 
# 3917 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EEDATA equ 0FA8h ;# 
# 3923 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EEADR equ 0FA9h ;# 
# 3984 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EEADRH equ 0FAAh ;# 
# 4009 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCSTA equ 0FABh ;# 
# 4014 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCSTA1 equ 0FABh ;# 
# 4218 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXSTA equ 0FACh ;# 
# 4223 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXSTA1 equ 0FACh ;# 
# 4515 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXREG equ 0FADh ;# 
# 4520 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXREG1 equ 0FADh ;# 
# 4526 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCREG equ 0FAEh ;# 
# 4531 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCREG1 equ 0FAEh ;# 
# 4537 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SPBRG equ 0FAFh ;# 
# 4542 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SPBRG1 equ 0FAFh ;# 
# 4548 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SPBRGH equ 0FB0h ;# 
# 4554 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T3CON equ 0FB1h ;# 
# 4667 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR3 equ 0FB2h ;# 
# 4673 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR3L equ 0FB2h ;# 
# 4679 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR3H equ 0FB3h ;# 
# 4685 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CVRCON2 equ 0FB4h ;# 
# 4711 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CVRCON equ 0FB5h ;# 
# 4789 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ECCP1AS equ 0FB6h ;# 
# 4870 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PWM1CON equ 0FB7h ;# 
# 4939 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
BAUDCON equ 0FB8h ;# 
# 4944 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
BAUDCTL equ 0FB8h ;# 
# 5104 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PSTRCON equ 0FB9h ;# 
# 5147 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCP2CON equ 0FBAh ;# 
# 5210 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR2 equ 0FBBh ;# 
# 5216 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR2L equ 0FBBh ;# 
# 5222 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR2H equ 0FBCh ;# 
# 5228 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCP1CON equ 0FBDh ;# 
# 5309 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR1 equ 0FBEh ;# 
# 5315 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR1L equ 0FBEh ;# 
# 5321 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR1H equ 0FBFh ;# 
# 5327 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADCON2 equ 0FC0h ;# 
# 5397 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADCON1 equ 0FC1h ;# 
# 5450 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADCON0 equ 0FC2h ;# 
# 5568 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADRES equ 0FC3h ;# 
# 5574 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADRESL equ 0FC3h ;# 
# 5580 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADRESH equ 0FC4h ;# 
# 5586 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPCON2 equ 0FC5h ;# 
# 5647 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPCON1 equ 0FC6h ;# 
# 5716 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPSTAT equ 0FC7h ;# 
# 5944 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPADD equ 0FC8h ;# 
# 5950 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPBUF equ 0FC9h ;# 
# 5956 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T2CON equ 0FCAh ;# 
# 6026 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PR2 equ 0FCBh ;# 
# 6031 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
MEMCON equ 0FCBh ;# 
# 6135 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR2 equ 0FCCh ;# 
# 6141 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T1CON equ 0FCDh ;# 
# 6245 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR1 equ 0FCEh ;# 
# 6251 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR1L equ 0FCEh ;# 
# 6257 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR1H equ 0FCFh ;# 
# 6263 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCON equ 0FD0h ;# 
# 6395 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
WDTCON equ 0FD1h ;# 
# 6422 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
HLVDCON equ 0FD2h ;# 
# 6427 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LVDCON equ 0FD2h ;# 
# 6691 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
OSCCON equ 0FD3h ;# 
# 6767 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T0CON equ 0FD5h ;# 
# 6836 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR0 equ 0FD6h ;# 
# 6842 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR0L equ 0FD6h ;# 
# 6848 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR0H equ 0FD7h ;# 
# 6854 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
STATUS equ 0FD8h ;# 
# 6932 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR2 equ 0FD9h ;# 
# 6938 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR2L equ 0FD9h ;# 
# 6944 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR2H equ 0FDAh ;# 
# 6950 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PLUSW2 equ 0FDBh ;# 
# 6956 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PREINC2 equ 0FDCh ;# 
# 6962 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTDEC2 equ 0FDDh ;# 
# 6968 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTINC2 equ 0FDEh ;# 
# 6974 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INDF2 equ 0FDFh ;# 
# 6980 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
BSR equ 0FE0h ;# 
# 6986 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR1 equ 0FE1h ;# 
# 6992 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR1L equ 0FE1h ;# 
# 6998 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR1H equ 0FE2h ;# 
# 7004 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PLUSW1 equ 0FE3h ;# 
# 7010 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PREINC1 equ 0FE4h ;# 
# 7016 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTDEC1 equ 0FE5h ;# 
# 7022 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTINC1 equ 0FE6h ;# 
# 7028 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INDF1 equ 0FE7h ;# 
# 7034 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
WREG equ 0FE8h ;# 
# 7045 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR0 equ 0FE9h ;# 
# 7051 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR0L equ 0FE9h ;# 
# 7057 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR0H equ 0FEAh ;# 
# 7063 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PLUSW0 equ 0FEBh ;# 
# 7069 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PREINC0 equ 0FECh ;# 
# 7075 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTDEC0 equ 0FEDh ;# 
# 7081 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTINC0 equ 0FEEh ;# 
# 7087 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INDF0 equ 0FEFh ;# 
# 7093 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INTCON3 equ 0FF0h ;# 
# 7184 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INTCON2 equ 0FF1h ;# 
# 7253 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INTCON equ 0FF2h ;# 
# 7389 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PROD equ 0FF3h ;# 
# 7395 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PRODL equ 0FF3h ;# 
# 7401 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PRODH equ 0FF4h ;# 
# 7407 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TABLAT equ 0FF5h ;# 
# 7415 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTR equ 0FF6h ;# 
# 7421 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTRL equ 0FF6h ;# 
# 7427 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTRH equ 0FF7h ;# 
# 7433 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTRU equ 0FF8h ;# 
# 7441 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCLAT equ 0FF9h ;# 
# 7448 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PC equ 0FF9h ;# 
# 7454 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCL equ 0FF9h ;# 
# 7460 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCLATH equ 0FFAh ;# 
# 7466 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCLATU equ 0FFBh ;# 
# 7472 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
STKPTR equ 0FFCh ;# 
# 7545 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOS equ 0FFDh ;# 
# 7551 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOSL equ 0FFDh ;# 
# 7557 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOSH equ 0FFEh ;# 
# 7563 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOSU equ 0FFFh ;# 
# 49 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPMSK equ 0F77h ;# 
# 110 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SLRCON equ 0F78h ;# 
# 153 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CM2CON1 equ 0F79h ;# 
# 191 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CM2CON0 equ 0F7Ah ;# 
# 260 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CM1CON0 equ 0F7Bh ;# 
# 329 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
WPUB equ 0F7Ch ;# 
# 390 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
IOCB equ 0F7Dh ;# 
# 428 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ANSEL equ 0F7Eh ;# 
# 489 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ANSELH equ 0F7Fh ;# 
# 532 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTA equ 0F80h ;# 
# 769 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTB equ 0F81h ;# 
# 976 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTC equ 0F82h ;# 
# 1166 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTD equ 0F83h ;# 
# 1307 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTE equ 0F84h ;# 
# 1638 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATA equ 0F89h ;# 
# 1770 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATB equ 0F8Ah ;# 
# 1902 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATC equ 0F8Bh ;# 
# 2034 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATD equ 0F8Ch ;# 
# 2166 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATE equ 0F8Dh ;# 
# 2268 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISA equ 0F92h ;# 
# 2273 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRA equ 0F92h ;# 
# 2489 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISB equ 0F93h ;# 
# 2494 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRB equ 0F93h ;# 
# 2710 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISC equ 0F94h ;# 
# 2715 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRC equ 0F94h ;# 
# 2931 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISD equ 0F95h ;# 
# 2936 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRD equ 0F95h ;# 
# 3152 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISE equ 0F96h ;# 
# 3157 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRE equ 0F96h ;# 
# 3303 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
OSCTUNE equ 0F9Bh ;# 
# 3372 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIE1 equ 0F9Dh ;# 
# 3451 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIR1 equ 0F9Eh ;# 
# 3530 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
IPR1 equ 0F9Fh ;# 
# 3609 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIE2 equ 0FA0h ;# 
# 3688 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIR2 equ 0FA1h ;# 
# 3767 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
IPR2 equ 0FA2h ;# 
# 3846 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EECON1 equ 0FA6h ;# 
# 3911 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EECON2 equ 0FA7h ;# 
# 3917 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EEDATA equ 0FA8h ;# 
# 3923 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EEADR equ 0FA9h ;# 
# 3984 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EEADRH equ 0FAAh ;# 
# 4009 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCSTA equ 0FABh ;# 
# 4014 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCSTA1 equ 0FABh ;# 
# 4218 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXSTA equ 0FACh ;# 
# 4223 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXSTA1 equ 0FACh ;# 
# 4515 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXREG equ 0FADh ;# 
# 4520 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXREG1 equ 0FADh ;# 
# 4526 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCREG equ 0FAEh ;# 
# 4531 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCREG1 equ 0FAEh ;# 
# 4537 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SPBRG equ 0FAFh ;# 
# 4542 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SPBRG1 equ 0FAFh ;# 
# 4548 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SPBRGH equ 0FB0h ;# 
# 4554 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T3CON equ 0FB1h ;# 
# 4667 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR3 equ 0FB2h ;# 
# 4673 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR3L equ 0FB2h ;# 
# 4679 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR3H equ 0FB3h ;# 
# 4685 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CVRCON2 equ 0FB4h ;# 
# 4711 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CVRCON equ 0FB5h ;# 
# 4789 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ECCP1AS equ 0FB6h ;# 
# 4870 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PWM1CON equ 0FB7h ;# 
# 4939 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
BAUDCON equ 0FB8h ;# 
# 4944 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
BAUDCTL equ 0FB8h ;# 
# 5104 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PSTRCON equ 0FB9h ;# 
# 5147 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCP2CON equ 0FBAh ;# 
# 5210 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR2 equ 0FBBh ;# 
# 5216 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR2L equ 0FBBh ;# 
# 5222 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR2H equ 0FBCh ;# 
# 5228 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCP1CON equ 0FBDh ;# 
# 5309 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR1 equ 0FBEh ;# 
# 5315 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR1L equ 0FBEh ;# 
# 5321 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR1H equ 0FBFh ;# 
# 5327 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADCON2 equ 0FC0h ;# 
# 5397 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADCON1 equ 0FC1h ;# 
# 5450 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADCON0 equ 0FC2h ;# 
# 5568 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADRES equ 0FC3h ;# 
# 5574 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADRESL equ 0FC3h ;# 
# 5580 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADRESH equ 0FC4h ;# 
# 5586 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPCON2 equ 0FC5h ;# 
# 5647 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPCON1 equ 0FC6h ;# 
# 5716 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPSTAT equ 0FC7h ;# 
# 5944 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPADD equ 0FC8h ;# 
# 5950 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPBUF equ 0FC9h ;# 
# 5956 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T2CON equ 0FCAh ;# 
# 6026 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PR2 equ 0FCBh ;# 
# 6031 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
MEMCON equ 0FCBh ;# 
# 6135 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR2 equ 0FCCh ;# 
# 6141 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T1CON equ 0FCDh ;# 
# 6245 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR1 equ 0FCEh ;# 
# 6251 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR1L equ 0FCEh ;# 
# 6257 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR1H equ 0FCFh ;# 
# 6263 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCON equ 0FD0h ;# 
# 6395 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
WDTCON equ 0FD1h ;# 
# 6422 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
HLVDCON equ 0FD2h ;# 
# 6427 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LVDCON equ 0FD2h ;# 
# 6691 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
OSCCON equ 0FD3h ;# 
# 6767 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T0CON equ 0FD5h ;# 
# 6836 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR0 equ 0FD6h ;# 
# 6842 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR0L equ 0FD6h ;# 
# 6848 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR0H equ 0FD7h ;# 
# 6854 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
STATUS equ 0FD8h ;# 
# 6932 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR2 equ 0FD9h ;# 
# 6938 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR2L equ 0FD9h ;# 
# 6944 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR2H equ 0FDAh ;# 
# 6950 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PLUSW2 equ 0FDBh ;# 
# 6956 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PREINC2 equ 0FDCh ;# 
# 6962 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTDEC2 equ 0FDDh ;# 
# 6968 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTINC2 equ 0FDEh ;# 
# 6974 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INDF2 equ 0FDFh ;# 
# 6980 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
BSR equ 0FE0h ;# 
# 6986 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR1 equ 0FE1h ;# 
# 6992 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR1L equ 0FE1h ;# 
# 6998 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR1H equ 0FE2h ;# 
# 7004 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PLUSW1 equ 0FE3h ;# 
# 7010 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PREINC1 equ 0FE4h ;# 
# 7016 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTDEC1 equ 0FE5h ;# 
# 7022 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTINC1 equ 0FE6h ;# 
# 7028 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INDF1 equ 0FE7h ;# 
# 7034 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
WREG equ 0FE8h ;# 
# 7045 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR0 equ 0FE9h ;# 
# 7051 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR0L equ 0FE9h ;# 
# 7057 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR0H equ 0FEAh ;# 
# 7063 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PLUSW0 equ 0FEBh ;# 
# 7069 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PREINC0 equ 0FECh ;# 
# 7075 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTDEC0 equ 0FEDh ;# 
# 7081 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTINC0 equ 0FEEh ;# 
# 7087 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INDF0 equ 0FEFh ;# 
# 7093 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INTCON3 equ 0FF0h ;# 
# 7184 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INTCON2 equ 0FF1h ;# 
# 7253 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INTCON equ 0FF2h ;# 
# 7389 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PROD equ 0FF3h ;# 
# 7395 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PRODL equ 0FF3h ;# 
# 7401 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PRODH equ 0FF4h ;# 
# 7407 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TABLAT equ 0FF5h ;# 
# 7415 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTR equ 0FF6h ;# 
# 7421 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTRL equ 0FF6h ;# 
# 7427 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTRH equ 0FF7h ;# 
# 7433 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTRU equ 0FF8h ;# 
# 7441 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCLAT equ 0FF9h ;# 
# 7448 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PC equ 0FF9h ;# 
# 7454 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCL equ 0FF9h ;# 
# 7460 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCLATH equ 0FFAh ;# 
# 7466 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCLATU equ 0FFBh ;# 
# 7472 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
STKPTR equ 0FFCh ;# 
# 7545 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOS equ 0FFDh ;# 
# 7551 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOSL equ 0FFDh ;# 
# 7557 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOSH equ 0FFEh ;# 
# 7563 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOSU equ 0FFFh ;# 
# 49 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPMSK equ 0F77h ;# 
# 110 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SLRCON equ 0F78h ;# 
# 153 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CM2CON1 equ 0F79h ;# 
# 191 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CM2CON0 equ 0F7Ah ;# 
# 260 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CM1CON0 equ 0F7Bh ;# 
# 329 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
WPUB equ 0F7Ch ;# 
# 390 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
IOCB equ 0F7Dh ;# 
# 428 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ANSEL equ 0F7Eh ;# 
# 489 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ANSELH equ 0F7Fh ;# 
# 532 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTA equ 0F80h ;# 
# 769 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTB equ 0F81h ;# 
# 976 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTC equ 0F82h ;# 
# 1166 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTD equ 0F83h ;# 
# 1307 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTE equ 0F84h ;# 
# 1638 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATA equ 0F89h ;# 
# 1770 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATB equ 0F8Ah ;# 
# 1902 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATC equ 0F8Bh ;# 
# 2034 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATD equ 0F8Ch ;# 
# 2166 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATE equ 0F8Dh ;# 
# 2268 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISA equ 0F92h ;# 
# 2273 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRA equ 0F92h ;# 
# 2489 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISB equ 0F93h ;# 
# 2494 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRB equ 0F93h ;# 
# 2710 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISC equ 0F94h ;# 
# 2715 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRC equ 0F94h ;# 
# 2931 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISD equ 0F95h ;# 
# 2936 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRD equ 0F95h ;# 
# 3152 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISE equ 0F96h ;# 
# 3157 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRE equ 0F96h ;# 
# 3303 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
OSCTUNE equ 0F9Bh ;# 
# 3372 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIE1 equ 0F9Dh ;# 
# 3451 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIR1 equ 0F9Eh ;# 
# 3530 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
IPR1 equ 0F9Fh ;# 
# 3609 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIE2 equ 0FA0h ;# 
# 3688 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIR2 equ 0FA1h ;# 
# 3767 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
IPR2 equ 0FA2h ;# 
# 3846 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EECON1 equ 0FA6h ;# 
# 3911 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EECON2 equ 0FA7h ;# 
# 3917 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EEDATA equ 0FA8h ;# 
# 3923 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EEADR equ 0FA9h ;# 
# 3984 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EEADRH equ 0FAAh ;# 
# 4009 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCSTA equ 0FABh ;# 
# 4014 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCSTA1 equ 0FABh ;# 
# 4218 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXSTA equ 0FACh ;# 
# 4223 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXSTA1 equ 0FACh ;# 
# 4515 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXREG equ 0FADh ;# 
# 4520 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXREG1 equ 0FADh ;# 
# 4526 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCREG equ 0FAEh ;# 
# 4531 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCREG1 equ 0FAEh ;# 
# 4537 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SPBRG equ 0FAFh ;# 
# 4542 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SPBRG1 equ 0FAFh ;# 
# 4548 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SPBRGH equ 0FB0h ;# 
# 4554 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T3CON equ 0FB1h ;# 
# 4667 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR3 equ 0FB2h ;# 
# 4673 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR3L equ 0FB2h ;# 
# 4679 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR3H equ 0FB3h ;# 
# 4685 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CVRCON2 equ 0FB4h ;# 
# 4711 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CVRCON equ 0FB5h ;# 
# 4789 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ECCP1AS equ 0FB6h ;# 
# 4870 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PWM1CON equ 0FB7h ;# 
# 4939 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
BAUDCON equ 0FB8h ;# 
# 4944 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
BAUDCTL equ 0FB8h ;# 
# 5104 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PSTRCON equ 0FB9h ;# 
# 5147 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCP2CON equ 0FBAh ;# 
# 5210 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR2 equ 0FBBh ;# 
# 5216 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR2L equ 0FBBh ;# 
# 5222 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR2H equ 0FBCh ;# 
# 5228 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCP1CON equ 0FBDh ;# 
# 5309 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR1 equ 0FBEh ;# 
# 5315 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR1L equ 0FBEh ;# 
# 5321 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR1H equ 0FBFh ;# 
# 5327 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADCON2 equ 0FC0h ;# 
# 5397 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADCON1 equ 0FC1h ;# 
# 5450 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADCON0 equ 0FC2h ;# 
# 5568 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADRES equ 0FC3h ;# 
# 5574 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADRESL equ 0FC3h ;# 
# 5580 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADRESH equ 0FC4h ;# 
# 5586 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPCON2 equ 0FC5h ;# 
# 5647 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPCON1 equ 0FC6h ;# 
# 5716 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPSTAT equ 0FC7h ;# 
# 5944 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPADD equ 0FC8h ;# 
# 5950 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPBUF equ 0FC9h ;# 
# 5956 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T2CON equ 0FCAh ;# 
# 6026 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PR2 equ 0FCBh ;# 
# 6031 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
MEMCON equ 0FCBh ;# 
# 6135 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR2 equ 0FCCh ;# 
# 6141 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T1CON equ 0FCDh ;# 
# 6245 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR1 equ 0FCEh ;# 
# 6251 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR1L equ 0FCEh ;# 
# 6257 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR1H equ 0FCFh ;# 
# 6263 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCON equ 0FD0h ;# 
# 6395 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
WDTCON equ 0FD1h ;# 
# 6422 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
HLVDCON equ 0FD2h ;# 
# 6427 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LVDCON equ 0FD2h ;# 
# 6691 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
OSCCON equ 0FD3h ;# 
# 6767 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T0CON equ 0FD5h ;# 
# 6836 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR0 equ 0FD6h ;# 
# 6842 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR0L equ 0FD6h ;# 
# 6848 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR0H equ 0FD7h ;# 
# 6854 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
STATUS equ 0FD8h ;# 
# 6932 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR2 equ 0FD9h ;# 
# 6938 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR2L equ 0FD9h ;# 
# 6944 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR2H equ 0FDAh ;# 
# 6950 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PLUSW2 equ 0FDBh ;# 
# 6956 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PREINC2 equ 0FDCh ;# 
# 6962 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTDEC2 equ 0FDDh ;# 
# 6968 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTINC2 equ 0FDEh ;# 
# 6974 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INDF2 equ 0FDFh ;# 
# 6980 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
BSR equ 0FE0h ;# 
# 6986 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR1 equ 0FE1h ;# 
# 6992 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR1L equ 0FE1h ;# 
# 6998 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR1H equ 0FE2h ;# 
# 7004 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PLUSW1 equ 0FE3h ;# 
# 7010 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PREINC1 equ 0FE4h ;# 
# 7016 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTDEC1 equ 0FE5h ;# 
# 7022 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTINC1 equ 0FE6h ;# 
# 7028 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INDF1 equ 0FE7h ;# 
# 7034 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
WREG equ 0FE8h ;# 
# 7045 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR0 equ 0FE9h ;# 
# 7051 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR0L equ 0FE9h ;# 
# 7057 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR0H equ 0FEAh ;# 
# 7063 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PLUSW0 equ 0FEBh ;# 
# 7069 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PREINC0 equ 0FECh ;# 
# 7075 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTDEC0 equ 0FEDh ;# 
# 7081 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTINC0 equ 0FEEh ;# 
# 7087 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INDF0 equ 0FEFh ;# 
# 7093 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INTCON3 equ 0FF0h ;# 
# 7184 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INTCON2 equ 0FF1h ;# 
# 7253 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INTCON equ 0FF2h ;# 
# 7389 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PROD equ 0FF3h ;# 
# 7395 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PRODL equ 0FF3h ;# 
# 7401 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PRODH equ 0FF4h ;# 
# 7407 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TABLAT equ 0FF5h ;# 
# 7415 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTR equ 0FF6h ;# 
# 7421 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTRL equ 0FF6h ;# 
# 7427 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTRH equ 0FF7h ;# 
# 7433 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTRU equ 0FF8h ;# 
# 7441 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCLAT equ 0FF9h ;# 
# 7448 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PC equ 0FF9h ;# 
# 7454 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCL equ 0FF9h ;# 
# 7460 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCLATH equ 0FFAh ;# 
# 7466 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCLATU equ 0FFBh ;# 
# 7472 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
STKPTR equ 0FFCh ;# 
# 7545 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOS equ 0FFDh ;# 
# 7551 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOSL equ 0FFDh ;# 
# 7557 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOSH equ 0FFEh ;# 
# 7563 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOSU equ 0FFFh ;# 
# 49 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPMSK equ 0F77h ;# 
# 110 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SLRCON equ 0F78h ;# 
# 153 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CM2CON1 equ 0F79h ;# 
# 191 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CM2CON0 equ 0F7Ah ;# 
# 260 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CM1CON0 equ 0F7Bh ;# 
# 329 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
WPUB equ 0F7Ch ;# 
# 390 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
IOCB equ 0F7Dh ;# 
# 428 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ANSEL equ 0F7Eh ;# 
# 489 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ANSELH equ 0F7Fh ;# 
# 532 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTA equ 0F80h ;# 
# 769 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTB equ 0F81h ;# 
# 976 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTC equ 0F82h ;# 
# 1166 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTD equ 0F83h ;# 
# 1307 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTE equ 0F84h ;# 
# 1638 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATA equ 0F89h ;# 
# 1770 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATB equ 0F8Ah ;# 
# 1902 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATC equ 0F8Bh ;# 
# 2034 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATD equ 0F8Ch ;# 
# 2166 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATE equ 0F8Dh ;# 
# 2268 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISA equ 0F92h ;# 
# 2273 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRA equ 0F92h ;# 
# 2489 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISB equ 0F93h ;# 
# 2494 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRB equ 0F93h ;# 
# 2710 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISC equ 0F94h ;# 
# 2715 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRC equ 0F94h ;# 
# 2931 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISD equ 0F95h ;# 
# 2936 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRD equ 0F95h ;# 
# 3152 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISE equ 0F96h ;# 
# 3157 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRE equ 0F96h ;# 
# 3303 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
OSCTUNE equ 0F9Bh ;# 
# 3372 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIE1 equ 0F9Dh ;# 
# 3451 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIR1 equ 0F9Eh ;# 
# 3530 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
IPR1 equ 0F9Fh ;# 
# 3609 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIE2 equ 0FA0h ;# 
# 3688 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIR2 equ 0FA1h ;# 
# 3767 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
IPR2 equ 0FA2h ;# 
# 3846 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EECON1 equ 0FA6h ;# 
# 3911 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EECON2 equ 0FA7h ;# 
# 3917 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EEDATA equ 0FA8h ;# 
# 3923 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EEADR equ 0FA9h ;# 
# 3984 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EEADRH equ 0FAAh ;# 
# 4009 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCSTA equ 0FABh ;# 
# 4014 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCSTA1 equ 0FABh ;# 
# 4218 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXSTA equ 0FACh ;# 
# 4223 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXSTA1 equ 0FACh ;# 
# 4515 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXREG equ 0FADh ;# 
# 4520 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXREG1 equ 0FADh ;# 
# 4526 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCREG equ 0FAEh ;# 
# 4531 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCREG1 equ 0FAEh ;# 
# 4537 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SPBRG equ 0FAFh ;# 
# 4542 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SPBRG1 equ 0FAFh ;# 
# 4548 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SPBRGH equ 0FB0h ;# 
# 4554 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T3CON equ 0FB1h ;# 
# 4667 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR3 equ 0FB2h ;# 
# 4673 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR3L equ 0FB2h ;# 
# 4679 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR3H equ 0FB3h ;# 
# 4685 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CVRCON2 equ 0FB4h ;# 
# 4711 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CVRCON equ 0FB5h ;# 
# 4789 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ECCP1AS equ 0FB6h ;# 
# 4870 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PWM1CON equ 0FB7h ;# 
# 4939 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
BAUDCON equ 0FB8h ;# 
# 4944 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
BAUDCTL equ 0FB8h ;# 
# 5104 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PSTRCON equ 0FB9h ;# 
# 5147 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCP2CON equ 0FBAh ;# 
# 5210 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR2 equ 0FBBh ;# 
# 5216 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR2L equ 0FBBh ;# 
# 5222 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR2H equ 0FBCh ;# 
# 5228 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCP1CON equ 0FBDh ;# 
# 5309 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR1 equ 0FBEh ;# 
# 5315 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR1L equ 0FBEh ;# 
# 5321 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR1H equ 0FBFh ;# 
# 5327 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADCON2 equ 0FC0h ;# 
# 5397 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADCON1 equ 0FC1h ;# 
# 5450 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADCON0 equ 0FC2h ;# 
# 5568 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADRES equ 0FC3h ;# 
# 5574 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADRESL equ 0FC3h ;# 
# 5580 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADRESH equ 0FC4h ;# 
# 5586 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPCON2 equ 0FC5h ;# 
# 5647 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPCON1 equ 0FC6h ;# 
# 5716 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPSTAT equ 0FC7h ;# 
# 5944 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPADD equ 0FC8h ;# 
# 5950 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPBUF equ 0FC9h ;# 
# 5956 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T2CON equ 0FCAh ;# 
# 6026 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PR2 equ 0FCBh ;# 
# 6031 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
MEMCON equ 0FCBh ;# 
# 6135 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR2 equ 0FCCh ;# 
# 6141 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T1CON equ 0FCDh ;# 
# 6245 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR1 equ 0FCEh ;# 
# 6251 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR1L equ 0FCEh ;# 
# 6257 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR1H equ 0FCFh ;# 
# 6263 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCON equ 0FD0h ;# 
# 6395 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
WDTCON equ 0FD1h ;# 
# 6422 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
HLVDCON equ 0FD2h ;# 
# 6427 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LVDCON equ 0FD2h ;# 
# 6691 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
OSCCON equ 0FD3h ;# 
# 6767 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T0CON equ 0FD5h ;# 
# 6836 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR0 equ 0FD6h ;# 
# 6842 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR0L equ 0FD6h ;# 
# 6848 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR0H equ 0FD7h ;# 
# 6854 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
STATUS equ 0FD8h ;# 
# 6932 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR2 equ 0FD9h ;# 
# 6938 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR2L equ 0FD9h ;# 
# 6944 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR2H equ 0FDAh ;# 
# 6950 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PLUSW2 equ 0FDBh ;# 
# 6956 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PREINC2 equ 0FDCh ;# 
# 6962 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTDEC2 equ 0FDDh ;# 
# 6968 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTINC2 equ 0FDEh ;# 
# 6974 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INDF2 equ 0FDFh ;# 
# 6980 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
BSR equ 0FE0h ;# 
# 6986 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR1 equ 0FE1h ;# 
# 6992 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR1L equ 0FE1h ;# 
# 6998 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR1H equ 0FE2h ;# 
# 7004 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PLUSW1 equ 0FE3h ;# 
# 7010 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PREINC1 equ 0FE4h ;# 
# 7016 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTDEC1 equ 0FE5h ;# 
# 7022 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTINC1 equ 0FE6h ;# 
# 7028 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INDF1 equ 0FE7h ;# 
# 7034 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
WREG equ 0FE8h ;# 
# 7045 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR0 equ 0FE9h ;# 
# 7051 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR0L equ 0FE9h ;# 
# 7057 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR0H equ 0FEAh ;# 
# 7063 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PLUSW0 equ 0FEBh ;# 
# 7069 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PREINC0 equ 0FECh ;# 
# 7075 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTDEC0 equ 0FEDh ;# 
# 7081 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTINC0 equ 0FEEh ;# 
# 7087 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INDF0 equ 0FEFh ;# 
# 7093 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INTCON3 equ 0FF0h ;# 
# 7184 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INTCON2 equ 0FF1h ;# 
# 7253 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INTCON equ 0FF2h ;# 
# 7389 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PROD equ 0FF3h ;# 
# 7395 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PRODL equ 0FF3h ;# 
# 7401 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PRODH equ 0FF4h ;# 
# 7407 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TABLAT equ 0FF5h ;# 
# 7415 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTR equ 0FF6h ;# 
# 7421 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTRL equ 0FF6h ;# 
# 7427 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTRH equ 0FF7h ;# 
# 7433 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTRU equ 0FF8h ;# 
# 7441 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCLAT equ 0FF9h ;# 
# 7448 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PC equ 0FF9h ;# 
# 7454 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCL equ 0FF9h ;# 
# 7460 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCLATH equ 0FFAh ;# 
# 7466 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCLATU equ 0FFBh ;# 
# 7472 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
STKPTR equ 0FFCh ;# 
# 7545 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOS equ 0FFDh ;# 
# 7551 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOSL equ 0FFDh ;# 
# 7557 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOSH equ 0FFEh ;# 
# 7563 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOSU equ 0FFFh ;# 
# 49 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPMSK equ 0F77h ;# 
# 110 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SLRCON equ 0F78h ;# 
# 153 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CM2CON1 equ 0F79h ;# 
# 191 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CM2CON0 equ 0F7Ah ;# 
# 260 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CM1CON0 equ 0F7Bh ;# 
# 329 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
WPUB equ 0F7Ch ;# 
# 390 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
IOCB equ 0F7Dh ;# 
# 428 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ANSEL equ 0F7Eh ;# 
# 489 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ANSELH equ 0F7Fh ;# 
# 532 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTA equ 0F80h ;# 
# 769 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTB equ 0F81h ;# 
# 976 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTC equ 0F82h ;# 
# 1166 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTD equ 0F83h ;# 
# 1307 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTE equ 0F84h ;# 
# 1638 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATA equ 0F89h ;# 
# 1770 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATB equ 0F8Ah ;# 
# 1902 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATC equ 0F8Bh ;# 
# 2034 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATD equ 0F8Ch ;# 
# 2166 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATE equ 0F8Dh ;# 
# 2268 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISA equ 0F92h ;# 
# 2273 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRA equ 0F92h ;# 
# 2489 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISB equ 0F93h ;# 
# 2494 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRB equ 0F93h ;# 
# 2710 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISC equ 0F94h ;# 
# 2715 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRC equ 0F94h ;# 
# 2931 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISD equ 0F95h ;# 
# 2936 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRD equ 0F95h ;# 
# 3152 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISE equ 0F96h ;# 
# 3157 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRE equ 0F96h ;# 
# 3303 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
OSCTUNE equ 0F9Bh ;# 
# 3372 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIE1 equ 0F9Dh ;# 
# 3451 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIR1 equ 0F9Eh ;# 
# 3530 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
IPR1 equ 0F9Fh ;# 
# 3609 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIE2 equ 0FA0h ;# 
# 3688 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIR2 equ 0FA1h ;# 
# 3767 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
IPR2 equ 0FA2h ;# 
# 3846 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EECON1 equ 0FA6h ;# 
# 3911 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EECON2 equ 0FA7h ;# 
# 3917 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EEDATA equ 0FA8h ;# 
# 3923 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EEADR equ 0FA9h ;# 
# 3984 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EEADRH equ 0FAAh ;# 
# 4009 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCSTA equ 0FABh ;# 
# 4014 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCSTA1 equ 0FABh ;# 
# 4218 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXSTA equ 0FACh ;# 
# 4223 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXSTA1 equ 0FACh ;# 
# 4515 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXREG equ 0FADh ;# 
# 4520 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXREG1 equ 0FADh ;# 
# 4526 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCREG equ 0FAEh ;# 
# 4531 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCREG1 equ 0FAEh ;# 
# 4537 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SPBRG equ 0FAFh ;# 
# 4542 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SPBRG1 equ 0FAFh ;# 
# 4548 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SPBRGH equ 0FB0h ;# 
# 4554 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T3CON equ 0FB1h ;# 
# 4667 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR3 equ 0FB2h ;# 
# 4673 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR3L equ 0FB2h ;# 
# 4679 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR3H equ 0FB3h ;# 
# 4685 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CVRCON2 equ 0FB4h ;# 
# 4711 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CVRCON equ 0FB5h ;# 
# 4789 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ECCP1AS equ 0FB6h ;# 
# 4870 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PWM1CON equ 0FB7h ;# 
# 4939 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
BAUDCON equ 0FB8h ;# 
# 4944 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
BAUDCTL equ 0FB8h ;# 
# 5104 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PSTRCON equ 0FB9h ;# 
# 5147 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCP2CON equ 0FBAh ;# 
# 5210 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR2 equ 0FBBh ;# 
# 5216 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR2L equ 0FBBh ;# 
# 5222 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR2H equ 0FBCh ;# 
# 5228 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCP1CON equ 0FBDh ;# 
# 5309 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR1 equ 0FBEh ;# 
# 5315 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR1L equ 0FBEh ;# 
# 5321 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR1H equ 0FBFh ;# 
# 5327 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADCON2 equ 0FC0h ;# 
# 5397 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADCON1 equ 0FC1h ;# 
# 5450 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADCON0 equ 0FC2h ;# 
# 5568 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADRES equ 0FC3h ;# 
# 5574 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADRESL equ 0FC3h ;# 
# 5580 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADRESH equ 0FC4h ;# 
# 5586 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPCON2 equ 0FC5h ;# 
# 5647 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPCON1 equ 0FC6h ;# 
# 5716 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPSTAT equ 0FC7h ;# 
# 5944 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPADD equ 0FC8h ;# 
# 5950 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPBUF equ 0FC9h ;# 
# 5956 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T2CON equ 0FCAh ;# 
# 6026 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PR2 equ 0FCBh ;# 
# 6031 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
MEMCON equ 0FCBh ;# 
# 6135 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR2 equ 0FCCh ;# 
# 6141 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T1CON equ 0FCDh ;# 
# 6245 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR1 equ 0FCEh ;# 
# 6251 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR1L equ 0FCEh ;# 
# 6257 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR1H equ 0FCFh ;# 
# 6263 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCON equ 0FD0h ;# 
# 6395 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
WDTCON equ 0FD1h ;# 
# 6422 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
HLVDCON equ 0FD2h ;# 
# 6427 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LVDCON equ 0FD2h ;# 
# 6691 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
OSCCON equ 0FD3h ;# 
# 6767 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T0CON equ 0FD5h ;# 
# 6836 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR0 equ 0FD6h ;# 
# 6842 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR0L equ 0FD6h ;# 
# 6848 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR0H equ 0FD7h ;# 
# 6854 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
STATUS equ 0FD8h ;# 
# 6932 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR2 equ 0FD9h ;# 
# 6938 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR2L equ 0FD9h ;# 
# 6944 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR2H equ 0FDAh ;# 
# 6950 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PLUSW2 equ 0FDBh ;# 
# 6956 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PREINC2 equ 0FDCh ;# 
# 6962 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTDEC2 equ 0FDDh ;# 
# 6968 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTINC2 equ 0FDEh ;# 
# 6974 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INDF2 equ 0FDFh ;# 
# 6980 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
BSR equ 0FE0h ;# 
# 6986 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR1 equ 0FE1h ;# 
# 6992 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR1L equ 0FE1h ;# 
# 6998 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR1H equ 0FE2h ;# 
# 7004 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PLUSW1 equ 0FE3h ;# 
# 7010 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PREINC1 equ 0FE4h ;# 
# 7016 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTDEC1 equ 0FE5h ;# 
# 7022 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTINC1 equ 0FE6h ;# 
# 7028 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INDF1 equ 0FE7h ;# 
# 7034 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
WREG equ 0FE8h ;# 
# 7045 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR0 equ 0FE9h ;# 
# 7051 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR0L equ 0FE9h ;# 
# 7057 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR0H equ 0FEAh ;# 
# 7063 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PLUSW0 equ 0FEBh ;# 
# 7069 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PREINC0 equ 0FECh ;# 
# 7075 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTDEC0 equ 0FEDh ;# 
# 7081 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTINC0 equ 0FEEh ;# 
# 7087 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INDF0 equ 0FEFh ;# 
# 7093 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INTCON3 equ 0FF0h ;# 
# 7184 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INTCON2 equ 0FF1h ;# 
# 7253 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INTCON equ 0FF2h ;# 
# 7389 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PROD equ 0FF3h ;# 
# 7395 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PRODL equ 0FF3h ;# 
# 7401 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PRODH equ 0FF4h ;# 
# 7407 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TABLAT equ 0FF5h ;# 
# 7415 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTR equ 0FF6h ;# 
# 7421 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTRL equ 0FF6h ;# 
# 7427 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTRH equ 0FF7h ;# 
# 7433 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTRU equ 0FF8h ;# 
# 7441 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCLAT equ 0FF9h ;# 
# 7448 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PC equ 0FF9h ;# 
# 7454 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCL equ 0FF9h ;# 
# 7460 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCLATH equ 0FFAh ;# 
# 7466 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCLATU equ 0FFBh ;# 
# 7472 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
STKPTR equ 0FFCh ;# 
# 7545 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOS equ 0FFDh ;# 
# 7551 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOSL equ 0FFDh ;# 
# 7557 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOSH equ 0FFEh ;# 
# 7563 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOSU equ 0FFFh ;# 
# 49 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPMSK equ 0F77h ;# 
# 110 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SLRCON equ 0F78h ;# 
# 153 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CM2CON1 equ 0F79h ;# 
# 191 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CM2CON0 equ 0F7Ah ;# 
# 260 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CM1CON0 equ 0F7Bh ;# 
# 329 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
WPUB equ 0F7Ch ;# 
# 390 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
IOCB equ 0F7Dh ;# 
# 428 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ANSEL equ 0F7Eh ;# 
# 489 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ANSELH equ 0F7Fh ;# 
# 532 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTA equ 0F80h ;# 
# 769 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTB equ 0F81h ;# 
# 976 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTC equ 0F82h ;# 
# 1166 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTD equ 0F83h ;# 
# 1307 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTE equ 0F84h ;# 
# 1638 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATA equ 0F89h ;# 
# 1770 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATB equ 0F8Ah ;# 
# 1902 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATC equ 0F8Bh ;# 
# 2034 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATD equ 0F8Ch ;# 
# 2166 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATE equ 0F8Dh ;# 
# 2268 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISA equ 0F92h ;# 
# 2273 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRA equ 0F92h ;# 
# 2489 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISB equ 0F93h ;# 
# 2494 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRB equ 0F93h ;# 
# 2710 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISC equ 0F94h ;# 
# 2715 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRC equ 0F94h ;# 
# 2931 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISD equ 0F95h ;# 
# 2936 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRD equ 0F95h ;# 
# 3152 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISE equ 0F96h ;# 
# 3157 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRE equ 0F96h ;# 
# 3303 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
OSCTUNE equ 0F9Bh ;# 
# 3372 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIE1 equ 0F9Dh ;# 
# 3451 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIR1 equ 0F9Eh ;# 
# 3530 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
IPR1 equ 0F9Fh ;# 
# 3609 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIE2 equ 0FA0h ;# 
# 3688 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIR2 equ 0FA1h ;# 
# 3767 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
IPR2 equ 0FA2h ;# 
# 3846 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EECON1 equ 0FA6h ;# 
# 3911 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EECON2 equ 0FA7h ;# 
# 3917 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EEDATA equ 0FA8h ;# 
# 3923 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EEADR equ 0FA9h ;# 
# 3984 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EEADRH equ 0FAAh ;# 
# 4009 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCSTA equ 0FABh ;# 
# 4014 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCSTA1 equ 0FABh ;# 
# 4218 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXSTA equ 0FACh ;# 
# 4223 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXSTA1 equ 0FACh ;# 
# 4515 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXREG equ 0FADh ;# 
# 4520 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXREG1 equ 0FADh ;# 
# 4526 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCREG equ 0FAEh ;# 
# 4531 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCREG1 equ 0FAEh ;# 
# 4537 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SPBRG equ 0FAFh ;# 
# 4542 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SPBRG1 equ 0FAFh ;# 
# 4548 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SPBRGH equ 0FB0h ;# 
# 4554 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T3CON equ 0FB1h ;# 
# 4667 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR3 equ 0FB2h ;# 
# 4673 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR3L equ 0FB2h ;# 
# 4679 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR3H equ 0FB3h ;# 
# 4685 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CVRCON2 equ 0FB4h ;# 
# 4711 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CVRCON equ 0FB5h ;# 
# 4789 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ECCP1AS equ 0FB6h ;# 
# 4870 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PWM1CON equ 0FB7h ;# 
# 4939 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
BAUDCON equ 0FB8h ;# 
# 4944 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
BAUDCTL equ 0FB8h ;# 
# 5104 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PSTRCON equ 0FB9h ;# 
# 5147 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCP2CON equ 0FBAh ;# 
# 5210 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR2 equ 0FBBh ;# 
# 5216 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR2L equ 0FBBh ;# 
# 5222 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR2H equ 0FBCh ;# 
# 5228 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCP1CON equ 0FBDh ;# 
# 5309 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR1 equ 0FBEh ;# 
# 5315 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR1L equ 0FBEh ;# 
# 5321 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR1H equ 0FBFh ;# 
# 5327 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADCON2 equ 0FC0h ;# 
# 5397 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADCON1 equ 0FC1h ;# 
# 5450 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADCON0 equ 0FC2h ;# 
# 5568 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADRES equ 0FC3h ;# 
# 5574 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADRESL equ 0FC3h ;# 
# 5580 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADRESH equ 0FC4h ;# 
# 5586 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPCON2 equ 0FC5h ;# 
# 5647 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPCON1 equ 0FC6h ;# 
# 5716 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPSTAT equ 0FC7h ;# 
# 5944 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPADD equ 0FC8h ;# 
# 5950 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPBUF equ 0FC9h ;# 
# 5956 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T2CON equ 0FCAh ;# 
# 6026 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PR2 equ 0FCBh ;# 
# 6031 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
MEMCON equ 0FCBh ;# 
# 6135 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR2 equ 0FCCh ;# 
# 6141 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T1CON equ 0FCDh ;# 
# 6245 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR1 equ 0FCEh ;# 
# 6251 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR1L equ 0FCEh ;# 
# 6257 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR1H equ 0FCFh ;# 
# 6263 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCON equ 0FD0h ;# 
# 6395 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
WDTCON equ 0FD1h ;# 
# 6422 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
HLVDCON equ 0FD2h ;# 
# 6427 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LVDCON equ 0FD2h ;# 
# 6691 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
OSCCON equ 0FD3h ;# 
# 6767 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T0CON equ 0FD5h ;# 
# 6836 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR0 equ 0FD6h ;# 
# 6842 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR0L equ 0FD6h ;# 
# 6848 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR0H equ 0FD7h ;# 
# 6854 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
STATUS equ 0FD8h ;# 
# 6932 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR2 equ 0FD9h ;# 
# 6938 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR2L equ 0FD9h ;# 
# 6944 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR2H equ 0FDAh ;# 
# 6950 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PLUSW2 equ 0FDBh ;# 
# 6956 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PREINC2 equ 0FDCh ;# 
# 6962 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTDEC2 equ 0FDDh ;# 
# 6968 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTINC2 equ 0FDEh ;# 
# 6974 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INDF2 equ 0FDFh ;# 
# 6980 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
BSR equ 0FE0h ;# 
# 6986 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR1 equ 0FE1h ;# 
# 6992 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR1L equ 0FE1h ;# 
# 6998 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR1H equ 0FE2h ;# 
# 7004 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PLUSW1 equ 0FE3h ;# 
# 7010 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PREINC1 equ 0FE4h ;# 
# 7016 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTDEC1 equ 0FE5h ;# 
# 7022 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTINC1 equ 0FE6h ;# 
# 7028 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INDF1 equ 0FE7h ;# 
# 7034 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
WREG equ 0FE8h ;# 
# 7045 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR0 equ 0FE9h ;# 
# 7051 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR0L equ 0FE9h ;# 
# 7057 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR0H equ 0FEAh ;# 
# 7063 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PLUSW0 equ 0FEBh ;# 
# 7069 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PREINC0 equ 0FECh ;# 
# 7075 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTDEC0 equ 0FEDh ;# 
# 7081 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTINC0 equ 0FEEh ;# 
# 7087 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INDF0 equ 0FEFh ;# 
# 7093 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INTCON3 equ 0FF0h ;# 
# 7184 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INTCON2 equ 0FF1h ;# 
# 7253 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INTCON equ 0FF2h ;# 
# 7389 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PROD equ 0FF3h ;# 
# 7395 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PRODL equ 0FF3h ;# 
# 7401 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PRODH equ 0FF4h ;# 
# 7407 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TABLAT equ 0FF5h ;# 
# 7415 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTR equ 0FF6h ;# 
# 7421 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTRL equ 0FF6h ;# 
# 7427 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTRH equ 0FF7h ;# 
# 7433 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTRU equ 0FF8h ;# 
# 7441 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCLAT equ 0FF9h ;# 
# 7448 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PC equ 0FF9h ;# 
# 7454 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCL equ 0FF9h ;# 
# 7460 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCLATH equ 0FFAh ;# 
# 7466 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCLATU equ 0FFBh ;# 
# 7472 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
STKPTR equ 0FFCh ;# 
# 7545 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOS equ 0FFDh ;# 
# 7551 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOSL equ 0FFDh ;# 
# 7557 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOSH equ 0FFEh ;# 
# 7563 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOSU equ 0FFFh ;# 
# 49 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPMSK equ 0F77h ;# 
# 110 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SLRCON equ 0F78h ;# 
# 153 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CM2CON1 equ 0F79h ;# 
# 191 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CM2CON0 equ 0F7Ah ;# 
# 260 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CM1CON0 equ 0F7Bh ;# 
# 329 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
WPUB equ 0F7Ch ;# 
# 390 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
IOCB equ 0F7Dh ;# 
# 428 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ANSEL equ 0F7Eh ;# 
# 489 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ANSELH equ 0F7Fh ;# 
# 532 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTA equ 0F80h ;# 
# 769 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTB equ 0F81h ;# 
# 976 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTC equ 0F82h ;# 
# 1166 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTD equ 0F83h ;# 
# 1307 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PORTE equ 0F84h ;# 
# 1638 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATA equ 0F89h ;# 
# 1770 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATB equ 0F8Ah ;# 
# 1902 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATC equ 0F8Bh ;# 
# 2034 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATD equ 0F8Ch ;# 
# 2166 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LATE equ 0F8Dh ;# 
# 2268 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISA equ 0F92h ;# 
# 2273 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRA equ 0F92h ;# 
# 2489 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISB equ 0F93h ;# 
# 2494 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRB equ 0F93h ;# 
# 2710 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISC equ 0F94h ;# 
# 2715 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRC equ 0F94h ;# 
# 2931 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISD equ 0F95h ;# 
# 2936 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRD equ 0F95h ;# 
# 3152 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TRISE equ 0F96h ;# 
# 3157 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
DDRE equ 0F96h ;# 
# 3303 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
OSCTUNE equ 0F9Bh ;# 
# 3372 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIE1 equ 0F9Dh ;# 
# 3451 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIR1 equ 0F9Eh ;# 
# 3530 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
IPR1 equ 0F9Fh ;# 
# 3609 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIE2 equ 0FA0h ;# 
# 3688 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PIR2 equ 0FA1h ;# 
# 3767 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
IPR2 equ 0FA2h ;# 
# 3846 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EECON1 equ 0FA6h ;# 
# 3911 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EECON2 equ 0FA7h ;# 
# 3917 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EEDATA equ 0FA8h ;# 
# 3923 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EEADR equ 0FA9h ;# 
# 3984 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
EEADRH equ 0FAAh ;# 
# 4009 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCSTA equ 0FABh ;# 
# 4014 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCSTA1 equ 0FABh ;# 
# 4218 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXSTA equ 0FACh ;# 
# 4223 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXSTA1 equ 0FACh ;# 
# 4515 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXREG equ 0FADh ;# 
# 4520 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TXREG1 equ 0FADh ;# 
# 4526 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCREG equ 0FAEh ;# 
# 4531 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCREG1 equ 0FAEh ;# 
# 4537 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SPBRG equ 0FAFh ;# 
# 4542 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SPBRG1 equ 0FAFh ;# 
# 4548 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SPBRGH equ 0FB0h ;# 
# 4554 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T3CON equ 0FB1h ;# 
# 4667 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR3 equ 0FB2h ;# 
# 4673 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR3L equ 0FB2h ;# 
# 4679 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR3H equ 0FB3h ;# 
# 4685 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CVRCON2 equ 0FB4h ;# 
# 4711 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CVRCON equ 0FB5h ;# 
# 4789 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ECCP1AS equ 0FB6h ;# 
# 4870 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PWM1CON equ 0FB7h ;# 
# 4939 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
BAUDCON equ 0FB8h ;# 
# 4944 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
BAUDCTL equ 0FB8h ;# 
# 5104 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PSTRCON equ 0FB9h ;# 
# 5147 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCP2CON equ 0FBAh ;# 
# 5210 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR2 equ 0FBBh ;# 
# 5216 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR2L equ 0FBBh ;# 
# 5222 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR2H equ 0FBCh ;# 
# 5228 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCP1CON equ 0FBDh ;# 
# 5309 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR1 equ 0FBEh ;# 
# 5315 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR1L equ 0FBEh ;# 
# 5321 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
CCPR1H equ 0FBFh ;# 
# 5327 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADCON2 equ 0FC0h ;# 
# 5397 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADCON1 equ 0FC1h ;# 
# 5450 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADCON0 equ 0FC2h ;# 
# 5568 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADRES equ 0FC3h ;# 
# 5574 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADRESL equ 0FC3h ;# 
# 5580 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
ADRESH equ 0FC4h ;# 
# 5586 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPCON2 equ 0FC5h ;# 
# 5647 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPCON1 equ 0FC6h ;# 
# 5716 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPSTAT equ 0FC7h ;# 
# 5944 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPADD equ 0FC8h ;# 
# 5950 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
SSPBUF equ 0FC9h ;# 
# 5956 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T2CON equ 0FCAh ;# 
# 6026 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PR2 equ 0FCBh ;# 
# 6031 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
MEMCON equ 0FCBh ;# 
# 6135 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR2 equ 0FCCh ;# 
# 6141 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T1CON equ 0FCDh ;# 
# 6245 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR1 equ 0FCEh ;# 
# 6251 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR1L equ 0FCEh ;# 
# 6257 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR1H equ 0FCFh ;# 
# 6263 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
RCON equ 0FD0h ;# 
# 6395 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
WDTCON equ 0FD1h ;# 
# 6422 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
HLVDCON equ 0FD2h ;# 
# 6427 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
LVDCON equ 0FD2h ;# 
# 6691 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
OSCCON equ 0FD3h ;# 
# 6767 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
T0CON equ 0FD5h ;# 
# 6836 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR0 equ 0FD6h ;# 
# 6842 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR0L equ 0FD6h ;# 
# 6848 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TMR0H equ 0FD7h ;# 
# 6854 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
STATUS equ 0FD8h ;# 
# 6932 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR2 equ 0FD9h ;# 
# 6938 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR2L equ 0FD9h ;# 
# 6944 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR2H equ 0FDAh ;# 
# 6950 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PLUSW2 equ 0FDBh ;# 
# 6956 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PREINC2 equ 0FDCh ;# 
# 6962 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTDEC2 equ 0FDDh ;# 
# 6968 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTINC2 equ 0FDEh ;# 
# 6974 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INDF2 equ 0FDFh ;# 
# 6980 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
BSR equ 0FE0h ;# 
# 6986 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR1 equ 0FE1h ;# 
# 6992 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR1L equ 0FE1h ;# 
# 6998 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR1H equ 0FE2h ;# 
# 7004 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PLUSW1 equ 0FE3h ;# 
# 7010 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PREINC1 equ 0FE4h ;# 
# 7016 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTDEC1 equ 0FE5h ;# 
# 7022 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTINC1 equ 0FE6h ;# 
# 7028 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INDF1 equ 0FE7h ;# 
# 7034 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
WREG equ 0FE8h ;# 
# 7045 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR0 equ 0FE9h ;# 
# 7051 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR0L equ 0FE9h ;# 
# 7057 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
FSR0H equ 0FEAh ;# 
# 7063 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PLUSW0 equ 0FEBh ;# 
# 7069 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PREINC0 equ 0FECh ;# 
# 7075 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTDEC0 equ 0FEDh ;# 
# 7081 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
POSTINC0 equ 0FEEh ;# 
# 7087 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INDF0 equ 0FEFh ;# 
# 7093 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INTCON3 equ 0FF0h ;# 
# 7184 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INTCON2 equ 0FF1h ;# 
# 7253 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
INTCON equ 0FF2h ;# 
# 7389 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PROD equ 0FF3h ;# 
# 7395 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PRODL equ 0FF3h ;# 
# 7401 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PRODH equ 0FF4h ;# 
# 7407 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TABLAT equ 0FF5h ;# 
# 7415 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTR equ 0FF6h ;# 
# 7421 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTRL equ 0FF6h ;# 
# 7427 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTRH equ 0FF7h ;# 
# 7433 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TBLPTRU equ 0FF8h ;# 
# 7441 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCLAT equ 0FF9h ;# 
# 7448 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PC equ 0FF9h ;# 
# 7454 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCL equ 0FF9h ;# 
# 7460 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCLATH equ 0FFAh ;# 
# 7466 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
PCLATU equ 0FFBh ;# 
# 7472 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
STKPTR equ 0FFCh ;# 
# 7545 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOS equ 0FFDh ;# 
# 7551 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOSL equ 0FFDh ;# 
# 7557 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOSH equ 0FFEh ;# 
# 7563 "/opt/microchip/xc8/v1.32/include/pic18f46k20.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_Delay10KTCYx
	FNCALL	_main,_Delay1KTCYx
	FNCALL	_main,_OpenXLCD
	FNCALL	_main,_WriteCmdXLCD
	FNCALL	_main,_putrsXLCD
	FNCALL	_putrsXLCD,_BusyXLCD
	FNCALL	_putrsXLCD,_WriteDataXLCD
	FNCALL	_WriteDataXLCD,_DelayFor18TCY
	FNCALL	_OpenXLCD,_BusyXLCD
	FNCALL	_OpenXLCD,_DelayFor18TCY
	FNCALL	_OpenXLCD,_DelayPORXLCD
	FNCALL	_OpenXLCD,_DelayXLCD
	FNCALL	_OpenXLCD,_SetDDRamAddr
	FNCALL	_OpenXLCD,_WriteCmdXLCD
	FNCALL	_WriteCmdXLCD,_DelayFor18TCY
	FNCALL	_SetDDRamAddr,_DelayFor18TCY
	FNCALL	_DelayXLCD,_Delay1KTCYx
	FNCALL	_DelayPORXLCD,_Delay1KTCYx
	FNCALL	_BusyXLCD,_DelayFor18TCY
	FNCALL	_DelayFor18TCY,_Delay100TCYx
	FNROOT	_main
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_ANSEL
_ANSEL	set	0xF7E
	global	_ANSELH
_ANSELH	set	0xF7F
	global	_LATEbits
_LATEbits	set	0xF8D
	global	_PORTD
_PORTD	set	0xF83
	global	_TRISA
_TRISA	set	0xF92
	global	_TRISD
_TRISD	set	0xF95
	global	_TRISEbits
_TRISEbits	set	0xF96
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	global __stringdata
__stringdata:
	
STR_1:
	db	74	;'J'
	db	117	;'u'
	db	97	;'a'
	db	110	;'n'
	db	32
	db	121	;'y'
	db	32
	db	77	;'M'
	db	97	;'a'
	db	110	;'n'
	db	117	;'u'
	db	32
	db	0
	
STR_2:
	db	70	;'F'
	db	117	;'u'
	db	110	;'n'
	db	99	;'c'
	db	105	;'i'
	db	111	;'o'
	db	110	;'n'
	db	97	;'a'
	db	46
	db	46
	db	46
	db	0
	global __end_of__stringdata
__end_of__stringdata:
; #config settings
global __CFG_FCMEN$OFF
__CFG_FCMEN$OFF equ 0x0
global __CFG_IESO$OFF
__CFG_IESO$OFF equ 0x0
global __CFG_FOSC$HS
__CFG_FOSC$HS equ 0x0
global __CFG_PWRT$OFF
__CFG_PWRT$OFF equ 0x0
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_BORV$30
__CFG_BORV$30 equ 0x0
global __CFG_WDTPS$32768
__CFG_WDTPS$32768 equ 0x0
global __CFG_WDTEN$OFF
__CFG_WDTEN$OFF equ 0x0
global __CFG_CCP2MX$PORTC
__CFG_CCP2MX$PORTC equ 0x0
global __CFG_PBADEN$OFF
__CFG_PBADEN$OFF equ 0x0
global __CFG_MCLRE$ON
__CFG_MCLRE$ON equ 0x0
global __CFG_LPT1OSC$OFF
__CFG_LPT1OSC$OFF equ 0x0
global __CFG_STVREN$ON
__CFG_STVREN$ON equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_XINST$OFF
__CFG_XINST$OFF equ 0x0
global __CFG_CP0$OFF
__CFG_CP0$OFF equ 0x0
global __CFG_CP1$OFF
__CFG_CP1$OFF equ 0x0
global __CFG_CP2$OFF
__CFG_CP2$OFF equ 0x0
global __CFG_CP3$OFF
__CFG_CP3$OFF equ 0x0
global __CFG_CPB$OFF
__CFG_CPB$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
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
	file	"c18_lcd.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:	GLOBAL	__Lsmallconst
	movlw	low highword(__Lsmallconst)
	movwf	tblptru
	movlw	high(__Lsmallconst)
	movwf	tblptrh
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_Delay1KTCYx:	; 0 bytes @ 0x0
??_Delay1KTCYx:	; 0 bytes @ 0x0
?_OpenXLCD:	; 0 bytes @ 0x0
?_WriteCmdXLCD:	; 0 bytes @ 0x0
?_Delay10KTCYx:	; 0 bytes @ 0x0
??_Delay10KTCYx:	; 0 bytes @ 0x0
?_Delay100TCYx:	; 0 bytes @ 0x0
??_Delay100TCYx:	; 0 bytes @ 0x0
?_SetDDRamAddr:	; 0 bytes @ 0x0
?_WriteDataXLCD:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_DelayFor18TCY:	; 0 bytes @ 0x0
?_DelayPORXLCD:	; 0 bytes @ 0x0
?_DelayXLCD:	; 0 bytes @ 0x0
?_BusyXLCD:	; 1 bytes @ 0x0
	global	Delay100TCYx@unit
Delay100TCYx@unit:	; 1 bytes @ 0x0
	global	Delay1KTCYx@unit
Delay1KTCYx@unit:	; 1 bytes @ 0x0
	ds   1
??_WriteCmdXLCD:	; 0 bytes @ 0x1
??_SetDDRamAddr:	; 0 bytes @ 0x1
??_WriteDataXLCD:	; 0 bytes @ 0x1
??_DelayFor18TCY:	; 0 bytes @ 0x1
??_DelayPORXLCD:	; 0 bytes @ 0x1
??_DelayXLCD:	; 0 bytes @ 0x1
??_BusyXLCD:	; 0 bytes @ 0x1
	global	SetDDRamAddr@DDaddr
SetDDRamAddr@DDaddr:	; 1 bytes @ 0x1
	global	WriteCmdXLCD@cmd
WriteCmdXLCD@cmd:	; 1 bytes @ 0x1
	global	WriteDataXLCD@data
WriteDataXLCD@data:	; 1 bytes @ 0x1
	global	Delay10KTCYx@unit
Delay10KTCYx@unit:	; 1 bytes @ 0x1
	ds   1
??_OpenXLCD:	; 0 bytes @ 0x2
?_putrsXLCD:	; 0 bytes @ 0x2
	global	OpenXLCD@lcdtype
OpenXLCD@lcdtype:	; 1 bytes @ 0x2
	global	putrsXLCD@buffer
putrsXLCD@buffer:	; 2 bytes @ 0x2
	ds   2
??_putrsXLCD:	; 0 bytes @ 0x4
??_main:	; 0 bytes @ 0x4
;!
;!Data Sizes:
;!    Strings     25
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95      4       4
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
;!    putrsXLCD@buffer	PTR const unsigned char  size(2) Largest target is 13
;!		 -> STR_2(CODE[12]), STR_1(CODE[13]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_putrsXLCD
;!    _putrsXLCD->_WriteDataXLCD
;!    _OpenXLCD->_SetDDRamAddr
;!    _OpenXLCD->_WriteCmdXLCD
;!    _DelayXLCD->_Delay1KTCYx
;!    _DelayPORXLCD->_Delay1KTCYx
;!    _DelayFor18TCY->_Delay100TCYx
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
;! (0) _main                                                 0     0      0     416
;!                       _Delay10KTCYx
;!                        _Delay1KTCYx
;!                           _OpenXLCD
;!                       _WriteCmdXLCD
;!                          _putrsXLCD
;! ---------------------------------------------------------------------------------
;! (1) _putrsXLCD                                            2     0      2     176
;!                                              2 COMRAM     2     0      2
;!                           _BusyXLCD
;!                      _WriteDataXLCD
;! ---------------------------------------------------------------------------------
;! (2) _WriteDataXLCD                                        1     1      0      45
;!                                              1 COMRAM     1     1      0
;!                      _DelayFor18TCY
;! ---------------------------------------------------------------------------------
;! (1) _OpenXLCD                                             1     1      0     165
;!                                              2 COMRAM     1     1      0
;!                           _BusyXLCD
;!                      _DelayFor18TCY
;!                       _DelayPORXLCD
;!                          _DelayXLCD
;!                       _SetDDRamAddr
;!                       _WriteCmdXLCD
;! ---------------------------------------------------------------------------------
;! (1) _WriteCmdXLCD                                         1     1      0      45
;!                                              1 COMRAM     1     1      0
;!                      _DelayFor18TCY
;! ---------------------------------------------------------------------------------
;! (2) _SetDDRamAddr                                         1     1      0      45
;!                                              1 COMRAM     1     1      0
;!                      _DelayFor18TCY
;! ---------------------------------------------------------------------------------
;! (2) _DelayXLCD                                            0     0      0      15
;!                        _Delay1KTCYx
;! ---------------------------------------------------------------------------------
;! (2) _DelayPORXLCD                                         0     0      0      15
;!                        _Delay1KTCYx
;! ---------------------------------------------------------------------------------
;! (3) _Delay1KTCYx                                          1     1      0      15
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _BusyXLCD                                             0     0      0      15
;!                      _DelayFor18TCY
;! ---------------------------------------------------------------------------------
;! (3) _DelayFor18TCY                                        0     0      0      15
;!                       _Delay100TCYx
;! ---------------------------------------------------------------------------------
;! (4) _Delay100TCYx                                         1     1      0      15
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _Delay10KTCYx                                         2     2      0      15
;!                                              0 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Delay10KTCYx
;!   _Delay1KTCYx
;!   _OpenXLCD
;!     _BusyXLCD
;!       _DelayFor18TCY
;!         _Delay100TCYx
;!     _DelayFor18TCY
;!       _Delay100TCYx
;!     _DelayPORXLCD
;!       _Delay1KTCYx
;!     _DelayXLCD
;!       _Delay1KTCYx
;!     _SetDDRamAddr
;!       _DelayFor18TCY
;!         _Delay100TCYx
;!     _WriteCmdXLCD
;!       _DelayFor18TCY
;!         _Delay100TCYx
;!   _WriteCmdXLCD
;!     _DelayFor18TCY
;!       _Delay100TCYx
;!   _putrsXLCD
;!     _BusyXLCD
;!       _DelayFor18TCY
;!         _Delay100TCYx
;!     _WriteDataXLCD
;!       _DelayFor18TCY
;!         _Delay100TCYx
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMRAM           5F      0       0       0        0.0%
;!EEDATA             400      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMRAM              5F      4       4       1        4.2%
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
;;		line 50 in file "c18_lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Delay10KTCYx
;;		_Delay1KTCYx
;;		_OpenXLCD
;;		_WriteCmdXLCD
;;		_putrsXLCD
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"c18_lcd.c"
	line	50
global __ptext0
__ptext0:
psect	text0
	file	"c18_lcd.c"
	line	50
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 27
	line	52
	
l958:
	movlw	low(0Fh)
	movwf	((c:4033)),c	;volatile
	line	54
	movlw	low(0)
	movwf	((c:3966)),c	;volatile
	line	55
	movlw	low(0)
	movwf	((c:3967)),c	;volatile
	line	56
	movlw	low(07h)
	movwf	((c:3986)),c	;volatile
	line	57
	movlw	low(0)
	movwf	((c:3989)),c	;volatile
	line	59
	
l960:
	movlw	(0Ah)&0ffh
	
	call	_Delay1KTCYx
	line	60
	
l962:
	movlw	(0Ah)&0ffh
	
	call	_Delay1KTCYx
	line	63
	
l964:
	movlw	(028h)&0ffh
	
	call	_OpenXLCD
	line	64
	
l966:
	movlw	(01h)&0ffh
	
	call	_WriteCmdXLCD
	line	65
	
l968:
		movlw	high(STR_1)
	movwf	((c:putrsXLCD@buffer+1)),c
	movlw	low(STR_1)
	movwf	((c:putrsXLCD@buffer)),c

	call	_putrsXLCD	;wreg free
	line	66
	
l970:
	movlw	(0Ah)&0ffh
	
	call	_Delay1KTCYx
	line	68
	
l972:
	movlw	(0Dh)&0ffh
	
	call	_WriteCmdXLCD
	line	70
	
l974:
	movlw	(0C0h)&0ffh
	
	call	_WriteCmdXLCD
	line	71
	
l976:
		movlw	high(STR_2)
	movwf	((c:putrsXLCD@buffer+1)),c
	movlw	low(STR_2)
	movwf	((c:putrsXLCD@buffer)),c

	call	_putrsXLCD	;wreg free
	line	75
	
l978:
	movlw	(0F4h)&0ffh
	
	call	_Delay10KTCYx
	line	76
	
l980:
	movlw	(0Eh)&0ffh
	
	call	_WriteCmdXLCD
	line	80
	
l982:
	movlw	(064h)&0ffh
	
	call	_Delay10KTCYx
	line	82
	
l984:
	movlw	(0Ch)&0ffh
	
	call	_WriteCmdXLCD
	line	83
	
l25:
	
l26:
	goto	l25
	
l27:
	line	86
	
l28:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_putrsXLCD

;; *************** function _putrsXLCD *****************
;; Defined at:
;;		line 17 in file "./XLCD/putrxlcd.c"
;; Parameters:    Size  Location     Type
;;  buffer          2    2[COMRAM] PTR const unsigned char 
;;		 -> STR_2(12), STR_1(13), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_BusyXLCD
;;		_WriteDataXLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	file	"./XLCD/putrxlcd.c"
	line	17
global __ptext1
__ptext1:
psect	text1
	file	"./XLCD/putrxlcd.c"
	line	17
	global	__size_of_putrsXLCD
	__size_of_putrsXLCD	equ	__end_of_putrsXLCD-_putrsXLCD
	
_putrsXLCD:
;incstack = 0
	opt	stack 27
	line	19
	
l944:
	goto	l952
	
l104:
	line	21
	goto	l946
	
l106:
	goto	l946
	
l105:
	
l946:
	call	_BusyXLCD	;wreg free
	iorlw	0
	btfss	status,2
	goto	u71
	goto	u70
u71:
	goto	l946
u70:
	goto	l948
	
l107:
	line	22
	
l948:
	movff	(c:putrsXLCD@buffer),tblptrl
	movff	(c:putrsXLCD@buffer+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w

	
	call	_WriteDataXLCD
	line	23
	
l950:
	infsnz	((c:putrsXLCD@buffer)),c
	incf	((c:putrsXLCD@buffer+1)),c
	goto	l952
	line	24
	
l103:
	line	19
	
l952:
	movff	(c:putrsXLCD@buffer),tblptrl
	movff	(c:putrsXLCD@buffer+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w

	iorlw	0
	btfss	status,2
	goto	u81
	goto	u80
u81:
	goto	l946
u80:
	goto	l109
	
l108:
	line	26
	
l109:
	return
	opt stack 0
GLOBAL	__end_of_putrsXLCD
	__end_of_putrsXLCD:
	signat	_putrsXLCD,4216
	global	_WriteDataXLCD

;; *************** function _WriteDataXLCD *****************
;; Defined at:
;;		line 17 in file "./XLCD/writdata.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    1[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_DelayFor18TCY
;; This function is called by:
;;		_putrsXLCD
;;		_putsXLCD
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	file	"./XLCD/writdata.c"
	line	17
global __ptext2
__ptext2:
psect	text2
	file	"./XLCD/writdata.c"
	line	17
	global	__size_of_WriteDataXLCD
	__size_of_WriteDataXLCD	equ	__end_of_WriteDataXLCD-_WriteDataXLCD
	
_WriteDataXLCD:
;incstack = 0
	opt	stack 27
	movwf	((c:WriteDataXLCD@data)),c
	line	32
	
l844:
	movlw	(0Fh)&0ffh
	andwf	((c:3989)),c	;volatile
	line	33
	movlw	(0Fh)&0ffh
	andwf	((c:3971)),c	;volatile
	line	34
	movf	((c:WriteDataXLCD@data)),c,w
	andlw	low(0F0h)
	iorwf	((c:3971)),c	;volatile
	line	40
	
l846:
	bsf	((c:3981)),c,1	;volatile
	line	41
	
l848:
	bcf	((c:3981)),c,0	;volatile
	line	42
	
l850:
	call	_DelayFor18TCY	;wreg free
	line	43
	
l852:
	bsf	((c:3981)),c,2	;volatile
	line	44
	
l854:
	call	_DelayFor18TCY	;wreg free
	line	45
	
l856:
	bcf	((c:3981)),c,2	;volatile
	line	47
	movlw	(0Fh)&0ffh
	andwf	((c:3971)),c	;volatile
	line	48
	swapf	((c:WriteDataXLCD@data)),c,w
	andlw	(0ffh shl 4) & 0ffh
	andlw	low(0F0h)
	iorwf	((c:3971)),c	;volatile
	line	53
	
l858:
	call	_DelayFor18TCY	;wreg free
	line	54
	
l860:
	bsf	((c:3981)),c,2	;volatile
	line	55
	
l862:
	call	_DelayFor18TCY	;wreg free
	line	56
	
l864:
	bcf	((c:3981)),c,2	;volatile
	line	58
	movlw	(0F0h)&0ffh
	iorwf	((c:3989)),c	;volatile
	goto	l171
	line	63
	
l866:
	line	64
	
l171:
	return
	opt stack 0
GLOBAL	__end_of_WriteDataXLCD
	__end_of_WriteDataXLCD:
	signat	_WriteDataXLCD,4216
	global	_OpenXLCD

;; *************** function _OpenXLCD *****************
;; Defined at:
;;		line 21 in file "./XLCD/openxlcd.c"
;; Parameters:    Size  Location     Type
;;  lcdtype         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  lcdtype         1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_BusyXLCD
;;		_DelayFor18TCY
;;		_DelayPORXLCD
;;		_DelayXLCD
;;		_SetDDRamAddr
;;		_WriteCmdXLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	file	"./XLCD/openxlcd.c"
	line	21
global __ptext3
__ptext3:
psect	text3
	file	"./XLCD/openxlcd.c"
	line	21
	global	__size_of_OpenXLCD
	__size_of_OpenXLCD	equ	__end_of_OpenXLCD-_OpenXLCD
	
_OpenXLCD:
;incstack = 0
	opt	stack 27
	movwf	((c:OpenXLCD@lcdtype)),c
	line	30
	
l868:
	movlw	(0Fh)&0ffh
	andwf	((c:3971)),c	;volatile
	line	31
	movlw	(0F0h)&0ffh
	iorwf	((c:3989)),c	;volatile
	line	37
	
l870:
	bcf	((c:3990)),c,0	;volatile
	line	38
	
l872:
	bcf	((c:3990)),c,1	;volatile
	line	39
	
l874:
	bcf	((c:3990)),c,2	;volatile
	line	40
	
l876:
	bcf	((c:3981)),c,0	;volatile
	line	41
	
l878:
	bcf	((c:3981)),c,1	;volatile
	line	42
	
l880:
	bcf	((c:3981)),c,2	;volatile
	line	45
	
l882:
	call	_DelayPORXLCD	;wreg free
	line	53
	
l884:
	movlw	(0Fh)&0ffh
	andwf	((c:3989)),c	;volatile
	line	54
	
l886:
	movlw	(0Fh)&0ffh
	andwf	((c:3971)),c	;volatile
	line	55
	
l888:
	bsf	(0+(5/8)+(c:3971)),c,(5)&7	;volatile
	line	62
	
l890:
	bsf	((c:3981)),c,2	;volatile
	line	63
	
l892:
	call	_DelayFor18TCY	;wreg free
	line	64
	
l894:
	bcf	((c:3981)),c,2	;volatile
	line	67
	
l896:
	call	_DelayXLCD	;wreg free
	line	74
	
l898:
	movlw	(0Fh)&0ffh
	andwf	((c:3971)),c	;volatile
	line	75
	
l900:
	bsf	(0+(5/8)+(c:3971)),c,(5)&7	;volatile
	line	81
	
l902:
	bsf	((c:3981)),c,2	;volatile
	line	82
	call	_DelayFor18TCY	;wreg free
	line	83
	
l904:
	bcf	((c:3981)),c,2	;volatile
	line	86
	call	_DelayXLCD	;wreg free
	line	93
	
l906:
	movlw	(0Fh)&0ffh
	andwf	((c:3971)),c	;volatile
	line	94
	
l908:
	bsf	(0+(5/8)+(c:3971)),c,(5)&7	;volatile
	line	100
	
l910:
	bsf	((c:3981)),c,2	;volatile
	line	101
	
l912:
	call	_DelayFor18TCY	;wreg free
	line	102
	
l914:
	bcf	((c:3981)),c,2	;volatile
	line	108
	
l916:
	movlw	(0F0h)&0ffh
	iorwf	((c:3989)),c	;volatile
	line	115
	goto	l918
	
l66:
	goto	l918
	
l65:
	
l918:
	call	_BusyXLCD	;wreg free
	iorlw	0
	btfss	status,2
	goto	u11
	goto	u10
u11:
	goto	l918
u10:
	goto	l920
	
l67:
	line	116
	
l920:
	movf	((c:OpenXLCD@lcdtype)),c,w
	
	call	_WriteCmdXLCD
	line	119
	goto	l922
	
l69:
	goto	l922
	
l68:
	
l922:
	call	_BusyXLCD	;wreg free
	iorlw	0
	btfss	status,2
	goto	u21
	goto	u20
u21:
	goto	l922
u20:
	goto	l924
	
l70:
	line	120
	
l924:
	movlw	(08h)&0ffh
	
	call	_WriteCmdXLCD
	line	121
	goto	l926
	
l72:
	goto	l926
	
l71:
	
l926:
	call	_BusyXLCD	;wreg free
	iorlw	0
	btfss	status,2
	goto	u31
	goto	u30
u31:
	goto	l926
u30:
	goto	l928
	
l73:
	line	122
	
l928:
	movlw	(0Fh)&0ffh
	
	call	_WriteCmdXLCD
	line	125
	goto	l930
	
l75:
	goto	l930
	
l74:
	
l930:
	call	_BusyXLCD	;wreg free
	iorlw	0
	btfss	status,2
	goto	u41
	goto	u40
u41:
	goto	l930
u40:
	goto	l932
	
l76:
	line	126
	
l932:
	movlw	(01h)&0ffh
	
	call	_WriteCmdXLCD
	line	129
	goto	l934
	
l78:
	goto	l934
	
l77:
	
l934:
	call	_BusyXLCD	;wreg free
	iorlw	0
	btfss	status,2
	goto	u51
	goto	u50
u51:
	goto	l934
u50:
	goto	l936
	
l79:
	line	130
	
l936:
	movlw	(04h)&0ffh
	
	call	_WriteCmdXLCD
	line	133
	goto	l938
	
l81:
	goto	l938
	
l80:
	
l938:
	call	_BusyXLCD	;wreg free
	iorlw	0
	btfss	status,2
	goto	u61
	goto	u60
u61:
	goto	l938
u60:
	goto	l940
	
l82:
	line	134
	
l940:
	movlw	(0)&0ffh
	
	call	_SetDDRamAddr
	goto	l83
	line	136
	
l942:
	line	137
	
l83:
	return
	opt stack 0
GLOBAL	__end_of_OpenXLCD
	__end_of_OpenXLCD:
	signat	_OpenXLCD,4216
	global	_WriteCmdXLCD

;; *************** function _WriteCmdXLCD *****************
;; Defined at:
;;		line 16 in file "./XLCD/wcmdxlcd.c"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1    1[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_DelayFor18TCY
;; This function is called by:
;;		_main
;;		_OpenXLCD
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	file	"./XLCD/wcmdxlcd.c"
	line	16
global __ptext4
__ptext4:
psect	text4
	file	"./XLCD/wcmdxlcd.c"
	line	16
	global	__size_of_WriteCmdXLCD
	__size_of_WriteCmdXLCD	equ	__end_of_WriteCmdXLCD-_WriteCmdXLCD
	
_WriteCmdXLCD:
;incstack = 0
	opt	stack 28
	movwf	((c:WriteCmdXLCD@cmd)),c
	line	31
	
l786:
	movlw	(0Fh)&0ffh
	andwf	((c:3989)),c	;volatile
	line	32
	movlw	(0Fh)&0ffh
	andwf	((c:3971)),c	;volatile
	line	33
	movf	((c:WriteCmdXLCD@cmd)),c,w
	andlw	low(0F0h)
	iorwf	((c:3971)),c	;volatile
	line	39
	
l788:
	bcf	((c:3981)),c,0	;volatile
	line	40
	
l790:
	bcf	((c:3981)),c,1	;volatile
	line	41
	
l792:
	call	_DelayFor18TCY	;wreg free
	line	42
	
l794:
	bsf	((c:3981)),c,2	;volatile
	line	43
	
l796:
	call	_DelayFor18TCY	;wreg free
	line	44
	
l798:
	bcf	((c:3981)),c,2	;volatile
	line	46
	movlw	(0Fh)&0ffh
	andwf	((c:3971)),c	;volatile
	line	47
	swapf	((c:WriteCmdXLCD@cmd)),c,w
	andlw	(0ffh shl 4) & 0ffh
	andlw	low(0F0h)
	iorwf	((c:3971)),c	;volatile
	line	52
	
l800:
	call	_DelayFor18TCY	;wreg free
	line	53
	
l802:
	bsf	((c:3981)),c,2	;volatile
	line	54
	
l804:
	call	_DelayFor18TCY	;wreg free
	line	55
	
l806:
	bcf	((c:3981)),c,2	;volatile
	line	57
	movlw	(0F0h)&0ffh
	iorwf	((c:3989)),c	;volatile
	goto	l160
	line	63
	
l808:
	line	64
	
l160:
	return
	opt stack 0
GLOBAL	__end_of_WriteCmdXLCD
	__end_of_WriteCmdXLCD:
	signat	_WriteCmdXLCD,4216
	global	_SetDDRamAddr

;; *************** function _SetDDRamAddr *****************
;; Defined at:
;;		line 14 in file "./XLCD/setddram.c"
;; Parameters:    Size  Location     Type
;;  DDaddr          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  DDaddr          1    1[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_DelayFor18TCY
;; This function is called by:
;;		_OpenXLCD
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	file	"./XLCD/setddram.c"
	line	14
global __ptext5
__ptext5:
psect	text5
	file	"./XLCD/setddram.c"
	line	14
	global	__size_of_SetDDRamAddr
	__size_of_SetDDRamAddr	equ	__end_of_SetDDRamAddr-_SetDDRamAddr
	
_SetDDRamAddr:
;incstack = 0
	opt	stack 27
	movwf	((c:SetDDRamAddr@DDaddr)),c
	line	29
	
l820:
	movlw	(0Fh)&0ffh
	andwf	((c:3989)),c	;volatile
	line	30
	movlw	(0Fh)&0ffh
	andwf	((c:3971)),c	;volatile
	line	31
	movf	((c:SetDDRamAddr@DDaddr)),c,w
	iorlw	low(080h)
	andlw	low(0F0h)
	iorwf	((c:3971)),c	;volatile
	line	37
	
l822:
	bcf	((c:3981)),c,0	;volatile
	line	38
	
l824:
	bcf	((c:3981)),c,1	;volatile
	line	39
	
l826:
	call	_DelayFor18TCY	;wreg free
	line	40
	
l828:
	bsf	((c:3981)),c,2	;volatile
	line	41
	
l830:
	call	_DelayFor18TCY	;wreg free
	line	42
	
l832:
	bcf	((c:3981)),c,2	;volatile
	line	44
	movlw	(0Fh)&0ffh
	andwf	((c:3971)),c	;volatile
	line	45
	swapf	((c:SetDDRamAddr@DDaddr)),c,w
	andlw	(0ffh shl 4) & 0ffh
	andlw	low(0F0h)
	iorwf	((c:3971)),c	;volatile
	line	50
	
l834:
	call	_DelayFor18TCY	;wreg free
	line	51
	
l836:
	bsf	((c:3981)),c,2	;volatile
	line	52
	
l838:
	call	_DelayFor18TCY	;wreg free
	line	53
	
l840:
	bcf	((c:3981)),c,2	;volatile
	line	55
	movlw	(0F0h)&0ffh
	iorwf	((c:3989)),c	;volatile
	goto	l149
	line	60
	
l842:
	line	61
	
l149:
	return
	opt stack 0
GLOBAL	__end_of_SetDDRamAddr
	__end_of_SetDDRamAddr:
	signat	_SetDDRamAddr,4216
	global	_DelayXLCD

;; *************** function _DelayXLCD *****************
;; Defined at:
;;		line 104 in file "c18_lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, cstack
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
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Delay1KTCYx
;; This function is called by:
;;		_OpenXLCD
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	file	"c18_lcd.c"
	line	104
global __ptext6
__ptext6:
psect	text6
	file	"c18_lcd.c"
	line	104
	global	__size_of_DelayXLCD
	__size_of_DelayXLCD	equ	__end_of_DelayXLCD-_DelayXLCD
	
_DelayXLCD:
;incstack = 0
	opt	stack 28
	line	106
	
l812:
	movlw	(0Ah)&0ffh
	
	call	_Delay1KTCYx
	line	110
	
l37:
	return
	opt stack 0
GLOBAL	__end_of_DelayXLCD
	__end_of_DelayXLCD:
	signat	_DelayXLCD,88
	global	_DelayPORXLCD

;; *************** function _DelayPORXLCD *****************
;; Defined at:
;;		line 96 in file "c18_lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, cstack
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
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Delay1KTCYx
;; This function is called by:
;;		_OpenXLCD
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	line	96
global __ptext7
__ptext7:
psect	text7
	file	"c18_lcd.c"
	line	96
	global	__size_of_DelayPORXLCD
	__size_of_DelayPORXLCD	equ	__end_of_DelayPORXLCD-_DelayPORXLCD
	
_DelayPORXLCD:
;incstack = 0
	opt	stack 28
	line	98
	
l810:
	movlw	(01Eh)&0ffh
	
	call	_Delay1KTCYx
	line	102
	
l34:
	return
	opt stack 0
GLOBAL	__end_of_DelayPORXLCD
	__end_of_DelayPORXLCD:
	signat	_DelayPORXLCD,88
	global	_Delay1KTCYx

;; *************** function _Delay1KTCYx *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.32/sources/pic18/d1ktcyx.c"
;; Parameters:    Size  Location     Type
;;  unit            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  unit            1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_DelayPORXLCD
;;		_DelayXLCD
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.32/sources/pic18/d1ktcyx.c"
	line	8
global __ptext8
__ptext8:
psect	text8
	file	"/opt/microchip/xc8/v1.32/sources/pic18/d1ktcyx.c"
	line	8
	global	__size_of_Delay1KTCYx
	__size_of_Delay1KTCYx	equ	__end_of_Delay1KTCYx-_Delay1KTCYx
	
_Delay1KTCYx:
;incstack = 0
	opt	stack 28
	movwf	((c:Delay1KTCYx@unit)),c
	line	10
	
l411:
	line	11
	
l780:
	movlw	250
u117:
	nop
decfsz	wreg,f
	goto	u117

	line	12
	
l782:
	decfsz	((c:Delay1KTCYx@unit)),c
	
	goto	l411
	goto	l413
	
l412:
	line	13
	
l413:
	return
	opt stack 0
GLOBAL	__end_of_Delay1KTCYx
	__end_of_Delay1KTCYx:
	signat	_Delay1KTCYx,4216
	global	_BusyXLCD

;; *************** function _BusyXLCD *****************
;; Defined at:
;;		line 12 in file "./XLCD/busyxlcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, cstack
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
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_DelayFor18TCY
;; This function is called by:
;;		_OpenXLCD
;;		_putrsXLCD
;;		_putsXLCD
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
	file	"./XLCD/busyxlcd.c"
	line	12
global __ptext9
__ptext9:
psect	text9
	file	"./XLCD/busyxlcd.c"
	line	12
	global	__size_of_BusyXLCD
	__size_of_BusyXLCD	equ	__end_of_BusyXLCD-_BusyXLCD
	
_BusyXLCD:
;incstack = 0
	opt	stack 27
	line	68
	
l814:
	call	_DelayFor18TCY	;wreg free
	line	69
	call	_DelayFor18TCY	;wreg free
	line	70
	
l816:
	movlw	(0)&0ffh
	goto	l42
	
l818:
	line	71
	
l42:
	return
	opt stack 0
GLOBAL	__end_of_BusyXLCD
	__end_of_BusyXLCD:
	signat	_BusyXLCD,89
	global	_DelayFor18TCY

;; *************** function _DelayFor18TCY *****************
;; Defined at:
;;		line 91 in file "c18_lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, cstack
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
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Delay100TCYx
;; This function is called by:
;;		_BusyXLCD
;;		_OpenXLCD
;;		_SetDDRamAddr
;;		_WriteCmdXLCD
;;		_WriteDataXLCD
;;		_ReadAddrXLCD
;;		_ReadDataXLCD
;;		_SetCGRamAddr
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2
	file	"c18_lcd.c"
	line	91
global __ptext10
__ptext10:
psect	text10
	file	"c18_lcd.c"
	line	91
	global	__size_of_DelayFor18TCY
	__size_of_DelayFor18TCY	equ	__end_of_DelayFor18TCY-_DelayFor18TCY
	
_DelayFor18TCY:
;incstack = 0
	opt	stack 27
	line	93
	
l784:
	movlw	(014h)&0ffh
	
	call	_Delay100TCYx
	line	94
	
l31:
	return
	opt stack 0
GLOBAL	__end_of_DelayFor18TCY
	__end_of_DelayFor18TCY:
	signat	_DelayFor18TCY,88
	global	_Delay100TCYx

;; *************** function _Delay100TCYx *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.32/sources/pic18/d100tcyx.c"
;; Parameters:    Size  Location     Type
;;  unit            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  unit            1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DelayFor18TCY
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.32/sources/pic18/d100tcyx.c"
	line	8
global __ptext11
__ptext11:
psect	text11
	file	"/opt/microchip/xc8/v1.32/sources/pic18/d100tcyx.c"
	line	8
	global	__size_of_Delay100TCYx
	__size_of_Delay100TCYx	equ	__end_of_Delay100TCYx-_Delay100TCYx
	
_Delay100TCYx:
;incstack = 0
	opt	stack 27
	movwf	((c:Delay100TCYx@unit)),c
	line	10
	
l397:
	line	11
	
l776:
	movlw	33
u127:
decfsz	wreg,f
	goto	u127
	nop

	line	12
	
l778:
	decfsz	((c:Delay100TCYx@unit)),c
	
	goto	l397
	goto	l399
	
l398:
	line	13
	
l399:
	return
	opt stack 0
GLOBAL	__end_of_Delay100TCYx
	__end_of_Delay100TCYx:
	signat	_Delay100TCYx,4216
	global	_Delay10KTCYx

;; *************** function _Delay10KTCYx *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.32/sources/pic18/d10ktcyx.c"
;; Parameters:    Size  Location     Type
;;  unit            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  unit            1    1[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.32/sources/pic18/d10ktcyx.c"
	line	8
global __ptext12
__ptext12:
psect	text12
	file	"/opt/microchip/xc8/v1.32/sources/pic18/d10ktcyx.c"
	line	8
	global	__size_of_Delay10KTCYx
	__size_of_Delay10KTCYx	equ	__end_of_Delay10KTCYx-_Delay10KTCYx
	
_Delay10KTCYx:
;incstack = 0
	opt	stack 30
	movwf	((c:Delay10KTCYx@unit)),c
	line	10
	
l404:
	line	11
	
l954:
	movlw	13
movwf	(??_Delay10KTCYx+0+0)&0ffh,c,f
	movlw	252
u137:
	decfsz	wreg,f
	goto	u137
	decfsz	(??_Delay10KTCYx+0+0)&0ffh,c,f
	goto	u137

	line	12
	
l956:
	decfsz	((c:Delay10KTCYx@unit)),c
	
	goto	l404
	goto	l406
	
l405:
	line	13
	
l406:
	return
	opt stack 0
GLOBAL	__end_of_Delay10KTCYx
	__end_of_Delay10KTCYx:
	signat	_Delay10KTCYx,4216
psect	smallconst
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	1
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
