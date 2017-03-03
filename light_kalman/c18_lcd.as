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
	FNCALL	_main,__pitch
	FNCALL	_main,__roll
	FNCALL	_main,_putrsXLCD
	FNCALL	_putrsXLCD,_BusyXLCD
	FNCALL	_putrsXLCD,_WriteDataXLCD
	FNCALL	_WriteDataXLCD,_DelayFor18TCY
	FNCALL	__roll,___ftdiv
	FNCALL	__roll,___ftmul
	FNCALL	__roll,___lwtoft
	FNCALL	__roll,_atan2
	FNCALL	__pitch,___ftdiv
	FNCALL	__pitch,___ftmul
	FNCALL	__pitch,___lwtoft
	FNCALL	__pitch,___wmul
	FNCALL	__pitch,_atan2
	FNCALL	__pitch,_sqrt
	FNCALL	_sqrt,___ftge
	FNCALL	_sqrt,___ftmul
	FNCALL	_sqrt,___ftsub
	FNCALL	_atan2,___ftadd
	FNCALL	_atan2,___ftdiv
	FNCALL	_atan2,___ftge
	FNCALL	_atan2,___ftneg
	FNCALL	_atan2,___ftsub
	FNCALL	_atan2,_atan
	FNCALL	_atan2,_fabs
	FNCALL	_atan,___ftadd
	FNCALL	_atan,___ftdiv
	FNCALL	_atan,___ftge
	FNCALL	_atan,___ftmul
	FNCALL	_atan,___ftneg
	FNCALL	_atan,_eval_poly
	FNCALL	_atan,_fabs
	FNCALL	_fabs,___ftneg
	FNCALL	_eval_poly,___ftadd
	FNCALL	_eval_poly,___ftmul
	FNCALL	_eval_poly,___wmul
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftsub,___ftadd
	FNCALL	___ftadd,___ftpack
	FNCALL	___lwtoft,___ftpack
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
	global	atan@coeff_a
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	file	"/opt/microchip/xc8/v1.32/sources/common/atan.c"
	line	10
atan@coeff_a:
	db	low(float24(33.058618473989547))
	db	high(float24(33.058618473989547))
	db	low highword(float24(33.058618473989547))
	db	low(float24(58.655751569001964))
	db	high(float24(58.655751569001964))
	db	low highword(float24(58.655751569001964))
	db	low(float24(32.390974856200444))
	db	high(float24(32.390974856200444))
	db	low highword(float24(32.390974856200444))
	db	low(float24(5.8531952112628600))
	db	high(float24(5.8531952112628600))
	db	low highword(float24(5.8531952112628600))
	db	low(float24(0.19523741936234276))
	db	high(float24(0.19523741936234276))
	db	low highword(float24(0.19523741936234276))
	db	low(float24(-0.0024346033004411264))
	db	high(float24(-0.0024346033004411264))
	db	low highword(float24(-0.0024346033004411264))
	global __end_ofatan@coeff_a
__end_ofatan@coeff_a:
	global	atan@coeff_b
psect	smallconst
	file	"/opt/microchip/xc8/v1.32/sources/common/atan.c"
	line	19
atan@coeff_b:
	db	low(float24(33.058618473992418))
	db	high(float24(33.058618473992418))
	db	low highword(float24(33.058618473992418))
	db	low(float24(69.675291059524653))
	db	high(float24(69.675291059524653))
	db	low highword(float24(69.675291059524653))
	db	low(float24(49.004348218216251))
	db	high(float24(49.004348218216251))
	db	low highword(float24(49.004348218216251))
	db	low(float24(12.975578862709240))
	db	high(float24(12.975578862709240))
	db	low highword(float24(12.975578862709240))
	db	low(float24(1.0000000000000000))
	db	high(float24(1.0000000000000000))
	db	low highword(float24(1.0000000000000000))
	global __end_ofatan@coeff_b
__end_ofatan@coeff_b:
	global	atan@coeff_a
	global	atan@coeff_b
	global	_errno
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
	global __stringdata
__stringdata:
	
STR_1:
	db	76	;'L'
	db	101	;'e'
	db	118	;'v'
	db	101	;'e'
	db	108	;'l'
	db	101	;'e'
	db	100	;'d'
	db	0
	
STR_2:
	db	82	;'R'
	db	105	;'i'
	db	103	;'g'
	db	104	;'h'
	db	116	;'t'
	db	0
	
STR_3:
	db	76	;'L'
	db	101	;'e'
	db	102	;'f'
	db	116	;'t'
	db	0
STR_5	equ	STR_2+0
STR_6	equ	STR_3+0
STR_4	equ	STR_1+0
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
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
	global	_errno
_errno:
       ds      2
	line	#
psect	cinit
; Clear objects allocated to BANK0 (2 bytes)
	global __pbssBANK0
movlb	0
clrf	(__pbssBANK0+1)&0xffh,b
clrf	(__pbssBANK0+0)&0xffh,b
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
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	?_atan2
?_atan2:	; 3 bytes @ 0x0
	global	atan2@y
atan2@y:	; 3 bytes @ 0x0
	ds   3
	global	atan2@x
atan2@x:	; 3 bytes @ 0x3
	ds   3
	global	_atan2$1069
_atan2$1069:	; 3 bytes @ 0x6
	ds   3
	global	_atan2$1068
_atan2$1068:	; 3 bytes @ 0x9
	ds   3
	global	atan2@v
atan2@v:	; 3 bytes @ 0xC
	ds   3
	global	?__roll
?__roll:	; 3 bytes @ 0xF
	global	?__pitch
?__pitch:	; 3 bytes @ 0xF
	global	__roll@vector
__roll@vector:	; 6 bytes @ 0xF
	global	__pitch@vector
__pitch@vector:	; 6 bytes @ 0xF
	ds   6
??__roll:	; 0 bytes @ 0x15
??__pitch:	; 0 bytes @ 0x15
	ds   2
	global	__roll$1065
__roll$1065:	; 3 bytes @ 0x17
	global	__pitch$1066
__pitch$1066:	; 3 bytes @ 0x17
	ds   3
	global	__pitch$1067
__pitch$1067:	; 3 bytes @ 0x1A
	ds   3
	global	main@pitch
main@pitch:	; 3 bytes @ 0x1D
	ds   3
	global	main@roll
main@roll:	; 3 bytes @ 0x20
	ds   3
	global	main@acc
main@acc:	; 6 bytes @ 0x23
	ds   6
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
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x0
	global	Delay100TCYx@unit
Delay100TCYx@unit:	; 1 bytes @ 0x0
	global	Delay1KTCYx@unit
Delay1KTCYx@unit:	; 1 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x0
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
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	ds   1
??___ftneg:	; 0 bytes @ 0x3
	global	?_fabs
?_fabs:	; 3 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	fabs@d
fabs@d:	; 3 bytes @ 0x3
	ds   1
??_putrsXLCD:	; 0 bytes @ 0x4
??___wmul:	; 0 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds   1
??___ftpack:	; 0 bytes @ 0x5
	ds   1
??_fabs:	; 0 bytes @ 0x6
?___ftge:	; 1 bit 
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x6
	ds   2
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x8
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x8
	ds   1
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x9
	ds   2
??___lwtoft:	; 0 bytes @ 0xB
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0xB
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0xB
	ds   1
??___ftge:	; 0 bytes @ 0xC
	ds   2
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0xE
	ds   3
??___ftmul:	; 0 bytes @ 0x11
	ds   3
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x14
	ds   1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x15
	ds   3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x18
	ds   1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x19
	ds   1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x1A
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x1A
	ds   3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x1D
	ds   3
??___ftadd:	; 0 bytes @ 0x20
	ds   3
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x23
	ds   1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x24
	ds   1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x25
	ds   1
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x26
	global	?_eval_poly
?_eval_poly:	; 3 bytes @ 0x26
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x26
	global	eval_poly@x
eval_poly@x:	; 3 bytes @ 0x26
	ds   3
	global	eval_poly@d
eval_poly@d:	; 2 bytes @ 0x29
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x29
	ds   2
	global	eval_poly@n
eval_poly@n:	; 2 bytes @ 0x2B
	ds   1
??___ftsub:	; 0 bytes @ 0x2C
	global	?_sqrt
?_sqrt:	; 3 bytes @ 0x2C
	global	sqrt@y
sqrt@y:	; 3 bytes @ 0x2C
	ds   1
??_eval_poly:	; 0 bytes @ 0x2D
	ds   2
??_sqrt:	; 0 bytes @ 0x2F
	global	eval_poly@res
eval_poly@res:	; 3 bytes @ 0x2F
	ds   3
	global	sqrt@og
sqrt@og:	; 3 bytes @ 0x32
	ds   3
	global	sqrt@z
sqrt@z:	; 3 bytes @ 0x35
	ds   3
	global	sqrt@i
sqrt@i:	; 1 bytes @ 0x38
	ds   1
	global	sqrt@q
sqrt@q:	; 3 bytes @ 0x39
	ds   3
	global	sqrt@x
sqrt@x:	; 3 bytes @ 0x3C
	ds   3
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x3F
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x3F
	ds   3
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x42
	ds   3
??___ftdiv:	; 0 bytes @ 0x45
	ds   3
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x48
	ds   1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x49
	ds   3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x4C
	ds   1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x4D
	ds   1
	global	?_atan
?_atan:	; 3 bytes @ 0x4E
	global	atan@f
atan@f:	; 3 bytes @ 0x4E
	ds   3
??_atan:	; 0 bytes @ 0x51
	global	atan@y
atan@y:	; 3 bytes @ 0x51
	ds   3
	global	atan@x
atan@x:	; 3 bytes @ 0x54
	ds   3
	global	atan@recip
atan@recip:	; 1 bytes @ 0x57
	ds   1
	global	atan@val_squared
atan@val_squared:	; 3 bytes @ 0x58
	ds   3
	global	atan@val
atan@val:	; 3 bytes @ 0x5B
	ds   3
??_atan2:	; 0 bytes @ 0x5E
??_main:	; 0 bytes @ 0x5E
;!
;!Data Sizes:
;!    Strings     19
;!    Constant    33
;!    Data        0
;!    BSS         2
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     94      94
;!    BANK0           160     41      43
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
;!    eval_poly@d	PTR const  size(2) Largest target is 18
;!		 -> atan@coeff_a(CODE[18]), atan@coeff_b(CODE[15]), 
;!
;!    putrsXLCD@buffer	PTR const unsigned char  size(2) Largest target is 8
;!		 -> STR_6(CODE[5]), STR_5(CODE[6]), STR_4(CODE[8]), STR_3(CODE[5]), 
;!		 -> STR_2(CODE[6]), STR_1(CODE[8]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _putrsXLCD->_WriteDataXLCD
;!    _sqrt->___ftsub
;!    _atan2->_atan
;!    _atan->___ftdiv
;!    _fabs->___ftneg
;!    _eval_poly->___ftadd
;!    ___ftmul->___lwtoft
;!    ___ftge->_fabs
;!    ___ftdiv->_sqrt
;!    ___ftsub->___ftadd
;!    ___ftadd->___ftmul
;!    ___lwtoft->___ftpack
;!    _OpenXLCD->_SetDDRamAddr
;!    _OpenXLCD->_WriteCmdXLCD
;!    _DelayXLCD->_Delay1KTCYx
;!    _DelayPORXLCD->_Delay1KTCYx
;!    _DelayFor18TCY->_Delay100TCYx
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->__pitch
;!    __roll->_atan2
;!    __pitch->_atan2
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
;! (0) _main                                                42    42      0   84602
;!                                             29 BANK0     12    12      0
;!                       _Delay10KTCYx
;!                        _Delay1KTCYx
;!                           _OpenXLCD
;!                       _WriteCmdXLCD
;!                             __pitch
;!                              __roll
;!                          _putrsXLCD
;! ---------------------------------------------------------------------------------
;! (1) _putrsXLCD                                            2     0      2     451
;!                                              2 COMRAM     2     0      2
;!                           _BusyXLCD
;!                      _WriteDataXLCD
;! ---------------------------------------------------------------------------------
;! (2) _WriteDataXLCD                                        1     1      0      66
;!                                              1 COMRAM     1     1      0
;!                      _DelayFor18TCY
;! ---------------------------------------------------------------------------------
;! (1) __roll                                               11     5      6   37526
;!                                             15 BANK0     11     5      6
;!                            ___ftdiv
;!                            ___ftmul
;!                           ___lwtoft
;!                              _atan2
;! ---------------------------------------------------------------------------------
;! (1) __pitch                                              14     8      6   45995
;!                                             15 BANK0     14     8      6
;!                            ___ftdiv
;!                            ___ftmul
;!                           ___lwtoft
;!                             ___wmul
;!                              _atan2
;!                               _sqrt
;! ---------------------------------------------------------------------------------
;! (2) _sqrt                                                19    16      3    7795
;!                                             44 COMRAM    19    16      3
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftsub
;!                           ___lwtoft (ARG)
;!                             ___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (2) _atan2                                               18    12      6   29601
;!                                              0 BANK0     15     9      6
;!                            ___ftadd
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftneg
;!                            ___ftsub
;!                           ___lwtoft (ARG)
;!                               _atan
;!                               _fabs
;!                               _sqrt (ARG)
;! ---------------------------------------------------------------------------------
;! (3) _atan                                                16    13      3   18105
;!                                             78 COMRAM    16    13      3
;!                            ___ftadd
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;!                          _eval_poly
;!                               _fabs
;! ---------------------------------------------------------------------------------
;! (3) _fabs                                                 3     0      3     482
;!                                              3 COMRAM     3     0      3
;!                            ___ftneg
;! ---------------------------------------------------------------------------------
;! (4) ___ftneg                                              3     0      3     257
;!                                              0 COMRAM     3     0      3
;! ---------------------------------------------------------------------------------
;! (4) _eval_poly                                           12     5      7    7327
;!                                             38 COMRAM    12     5      7
;!                            ___ftadd
;!                            ___ftmul
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (5) ___wmul                                               6     2      4     583
;!                                              0 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (5) ___ftmul                                             15     9      6    3151
;!                                             11 COMRAM    15     9      6
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;!                             ___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___ftge                                               9     3      6     666
;!                                              6 COMRAM     9     3      6
;!                               _fabs (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___ftdiv                                             15     9      6    2681
;!                                             63 COMRAM    15     9      6
;!                            ___ftmul (ARG)
;!                            ___ftneg (ARG)
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;!                             ___wmul (ARG)
;!                               _sqrt (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftsub                                              6     0      6    3540
;!                                             38 COMRAM     6     0      6
;!                            ___ftadd
;! ---------------------------------------------------------------------------------
;! (5) ___ftadd                                             12     6      6    3097
;!                                             26 COMRAM    12     6      6
;!                            ___ftmul (ARG)
;!                            ___ftneg (ARG)
;!                           ___ftpack
;!                             ___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___lwtoft                                             3     0      3    1919
;!                                              8 COMRAM     3     0      3
;!                           ___ftpack
;!                             ___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (6) ___ftpack                                             8     3      5    1685
;!                                              0 COMRAM     8     3      5
;! ---------------------------------------------------------------------------------
;! (1) _OpenXLCD                                             1     1      0     242
;!                                              2 COMRAM     1     1      0
;!                           _BusyXLCD
;!                      _DelayFor18TCY
;!                       _DelayPORXLCD
;!                          _DelayXLCD
;!                       _SetDDRamAddr
;!                       _WriteCmdXLCD
;! ---------------------------------------------------------------------------------
;! (1) _WriteCmdXLCD                                         1     1      0      66
;!                                              1 COMRAM     1     1      0
;!                      _DelayFor18TCY
;! ---------------------------------------------------------------------------------
;! (2) _SetDDRamAddr                                         1     1      0      66
;!                                              1 COMRAM     1     1      0
;!                      _DelayFor18TCY
;! ---------------------------------------------------------------------------------
;! (2) _DelayXLCD                                            0     0      0      22
;!                        _Delay1KTCYx
;! ---------------------------------------------------------------------------------
;! (2) _DelayPORXLCD                                         0     0      0      22
;!                        _Delay1KTCYx
;! ---------------------------------------------------------------------------------
;! (3) _Delay1KTCYx                                          1     1      0      22
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _BusyXLCD                                             0     0      0      22
;!                      _DelayFor18TCY
;! ---------------------------------------------------------------------------------
;! (3) _DelayFor18TCY                                        0     0      0      22
;!                       _Delay100TCYx
;! ---------------------------------------------------------------------------------
;! (4) _Delay100TCYx                                         1     1      0      22
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _Delay10KTCYx                                         2     2      0      22
;!                                              0 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
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
;!   __pitch
;!     ___ftdiv
;!       ___ftmul (ARG)
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___ftneg (ARG)
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!         ___wmul (ARG)
;!       ___wmul (ARG)
;!       _sqrt (ARG)
;!         ___ftge
;!           _fabs (ARG)
;!             ___ftneg
;!         ___ftmul
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___ftsub
;!           ___ftadd
;!             ___ftmul (ARG)
;!               ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!             ___ftneg (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!     ___ftmul
;!       ___ftpack
;!       ___lwtoft (ARG)
;!         ___ftpack
;!         ___wmul (ARG)
;!       ___wmul (ARG)
;!     ___lwtoft
;!       ___ftpack
;!       ___wmul (ARG)
;!     ___wmul
;!     _atan2
;!       ___ftadd
;!         ___ftmul (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___ftneg (ARG)
;!         ___ftpack (ARG)
;!         ___wmul (ARG)
;!       ___ftdiv
;!         ___ftmul (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___ftneg (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!         _sqrt (ARG)
;!           ___ftge
;!             _fabs (ARG)
;!               ___ftneg
;!           ___ftmul
;!             ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___ftsub
;!             ___ftadd
;!               ___ftmul (ARG)
;!                 ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                   ___wmul (ARG)
;!                 ___wmul (ARG)
;!               ___ftneg (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!       ___ftge
;!         _fabs (ARG)
;!           ___ftneg
;!       ___ftneg
;!       ___ftsub
;!         ___ftadd
;!           ___ftmul (ARG)
;!             ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___ftneg (ARG)
;!           ___ftpack (ARG)
;!           ___wmul (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!         ___wmul (ARG)
;!       _atan (ARG)
;!         ___ftadd
;!           ___ftmul (ARG)
;!             ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___ftneg (ARG)
;!           ___ftpack (ARG)
;!           ___wmul (ARG)
;!         ___ftdiv
;!           ___ftmul (ARG)
;!             ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___ftneg (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!           _sqrt (ARG)
;!             ___ftge
;!               _fabs (ARG)
;!                 ___ftneg
;!             ___ftmul
;!               ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!             ___ftsub
;!               ___ftadd
;!                 ___ftmul (ARG)
;!                   ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                     ___wmul (ARG)
;!                   ___wmul (ARG)
;!                 ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___ftge
;!           _fabs (ARG)
;!             ___ftneg
;!         ___ftmul
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___ftneg
;!         _eval_poly
;!           ___ftadd
;!             ___ftmul (ARG)
;!               ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!             ___ftneg (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!           ___ftmul
;!             ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul
;!         _fabs
;!           ___ftneg
;!       _fabs (ARG)
;!         ___ftneg
;!       _sqrt (ARG)
;!         ___ftge
;!           _fabs (ARG)
;!             ___ftneg
;!         ___ftmul
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___ftsub
;!           ___ftadd
;!             ___ftmul (ARG)
;!               ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!             ___ftneg (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!     _sqrt
;!       ___ftge
;!         _fabs (ARG)
;!           ___ftneg
;!       ___ftmul
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___ftsub
;!         ___ftadd
;!           ___ftmul (ARG)
;!             ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___ftneg (ARG)
;!           ___ftpack (ARG)
;!           ___wmul (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!         ___wmul (ARG)
;!       ___wmul (ARG)
;!   __roll
;!     ___ftdiv
;!       ___ftmul (ARG)
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___ftneg (ARG)
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!         ___wmul (ARG)
;!       ___wmul (ARG)
;!       _sqrt (ARG)
;!         ___ftge
;!           _fabs (ARG)
;!             ___ftneg
;!         ___ftmul
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___ftsub
;!           ___ftadd
;!             ___ftmul (ARG)
;!               ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!             ___ftneg (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!     ___ftmul
;!       ___ftpack
;!       ___lwtoft (ARG)
;!         ___ftpack
;!         ___wmul (ARG)
;!       ___wmul (ARG)
;!     ___lwtoft
;!       ___ftpack
;!       ___wmul (ARG)
;!     _atan2
;!       ___ftadd
;!         ___ftmul (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___ftneg (ARG)
;!         ___ftpack (ARG)
;!         ___wmul (ARG)
;!       ___ftdiv
;!         ___ftmul (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___ftneg (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!         _sqrt (ARG)
;!           ___ftge
;!             _fabs (ARG)
;!               ___ftneg
;!           ___ftmul
;!             ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___ftsub
;!             ___ftadd
;!               ___ftmul (ARG)
;!                 ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                   ___wmul (ARG)
;!                 ___wmul (ARG)
;!               ___ftneg (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!       ___ftge
;!         _fabs (ARG)
;!           ___ftneg
;!       ___ftneg
;!       ___ftsub
;!         ___ftadd
;!           ___ftmul (ARG)
;!             ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___ftneg (ARG)
;!           ___ftpack (ARG)
;!           ___wmul (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!         ___wmul (ARG)
;!       _atan (ARG)
;!         ___ftadd
;!           ___ftmul (ARG)
;!             ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___ftneg (ARG)
;!           ___ftpack (ARG)
;!           ___wmul (ARG)
;!         ___ftdiv
;!           ___ftmul (ARG)
;!             ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___ftneg (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!           _sqrt (ARG)
;!             ___ftge
;!               _fabs (ARG)
;!                 ___ftneg
;!             ___ftmul
;!               ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!             ___ftsub
;!               ___ftadd
;!                 ___ftmul (ARG)
;!                   ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                     ___wmul (ARG)
;!                   ___wmul (ARG)
;!                 ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___ftge
;!           _fabs (ARG)
;!             ___ftneg
;!         ___ftmul
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___ftneg
;!         _eval_poly
;!           ___ftadd
;!             ___ftmul (ARG)
;!               ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!             ___ftneg (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!           ___ftmul
;!             ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul
;!         _fabs
;!           ___ftneg
;!       _fabs (ARG)
;!         ___ftneg
;!       _sqrt (ARG)
;!         ___ftge
;!           _fabs (ARG)
;!             ___ftneg
;!         ___ftmul
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___ftsub
;!           ___ftadd
;!             ___ftmul (ARG)
;!               ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!             ___ftneg (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___wmul (ARG)
;!         ___wmul (ARG)
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
;!BIGRAM             F5F      0       0      37        0.0%
;!EEDATA             400      0       0       0        0.0%
;!BITBANK14          100      0       0      33        0.0%
;!BANK14             100      0       0      34        0.0%
;!BITBANK13          100      0       0      30        0.0%
;!BANK13             100      0       0      31        0.0%
;!BITBANK12          100      0       0      28        0.0%
;!BANK12             100      0       0      29        0.0%
;!BITBANK11          100      0       0      26        0.0%
;!BANK11             100      0       0      27        0.0%
;!BITBANK10          100      0       0      24        0.0%
;!BANK10             100      0       0      25        0.0%
;!BITBANK9           100      0       0      22        0.0%
;!BANK9              100      0       0      23        0.0%
;!BITBANK8           100      0       0      20        0.0%
;!BANK8              100      0       0      21        0.0%
;!BITBANK7           100      0       0      18        0.0%
;!BANK7              100      0       0      19        0.0%
;!BITBANK6           100      0       0      16        0.0%
;!BANK6              100      0       0      17        0.0%
;!BITBANK5           100      0       0      14        0.0%
;!BANK5              100      0       0      15        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0       0       7        0.0%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0     29      2B       5       26.9%
;!BITBANK15           60      0       0      35        0.0%
;!BANK15              60      0       0      36        0.0%
;!BITCOMRAM           5F      0       0       0        0.0%
;!COMRAM              5F     5E      5E       1       98.9%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      89      32        0.0%
;!DATA                 0      0      89       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 49 in file "c18_lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  string         30    0        unsigned char [30]
;;  acc             6   35[BANK0 ] struct .
;;  roll            3   32[BANK0 ] float 
;;  pitch           3   29[BANK0 ] float 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0      12       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      12       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Delay10KTCYx
;;		_Delay1KTCYx
;;		_OpenXLCD
;;		_WriteCmdXLCD
;;		__pitch
;;		__roll
;;		_putrsXLCD
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"c18_lcd.c"
	line	49
global __ptext0
__ptext0:
psect	text0
	file	"c18_lcd.c"
	line	49
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 25
	line	56
	
l2157:
	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(main@acc+02h))&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movwf	(0+(main@acc+02h))&0ffh
	movff	0+(main@acc+02h),(main@acc)
	movff	1+(main@acc+02h),(main@acc+1)
	line	57
	movlw	high(064h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(main@acc+04h))&0ffh
	movlw	low(064h)
	movlb	0	; () banked
	movwf	(0+(main@acc+04h))&0ffh
	line	59
	
l2159:; BSR set to: 0

	lfsr	2,(main@acc)
	lfsr	1,(__pitch@vector)
	movlw	6
u1491:
	movff	postinc2,postinc1
	decfsz	wreg
	goto	u1491
	call	__pitch	;wreg free
	movff	0+?__pitch,(main@pitch)
	movff	1+?__pitch,(main@pitch+1)
	movff	2+?__pitch,(main@pitch+2)
	line	60
	
l2161:
	lfsr	2,(main@acc)
	lfsr	1,(__roll@vector)
	movlw	6
u1501:
	movff	postinc2,postinc1
	decfsz	wreg
	goto	u1501
	call	__roll	;wreg free
	movff	0+?__roll,(main@roll)
	movff	1+?__roll,(main@roll+1)
	movff	2+?__roll,(main@roll+2)
	line	63
	movlw	low(0Fh)
	movwf	((c:4033)),c	;volatile
	line	65
	movlw	low(0)
	movwf	((c:3966)),c	;volatile
	line	66
	movlw	low(0)
	movwf	((c:3967)),c	;volatile
	line	67
	movlw	low(07h)
	movwf	((c:3986)),c	;volatile
	line	68
	movlw	low(0)
	movwf	((c:3989)),c	;volatile
	line	70
	
l2163:
	movlw	(0Ah)&0ffh
	
	call	_Delay1KTCYx
	line	71
	
l2165:
	movlw	(0Ah)&0ffh
	
	call	_Delay1KTCYx
	line	74
	
l2167:
	movlw	(028h)&0ffh
	
	call	_OpenXLCD
	line	75
	
l2169:
	movlw	(01h)&0ffh
	
	call	_WriteCmdXLCD
	line	79
	
l2171:
	movlw	0x7f
	movlb	0	; () banked
	movlb	0	; () banked
	andwf	((main@roll+2))&0ffh,w
	movlb	0	; () banked
	iorwf	((main@roll+1))&0ffh,w
	movlb	0	; () banked
	iorwf	((main@roll))&0ffh,w
	btfss	status,2
	goto	u1511
	goto	u1510
u1511:
	goto	l2175
u1510:
	line	80
	
l2173:; BSR set to: 0

		movlw	high(STR_1)
	movwf	((c:putrsXLCD@buffer+1)),c
	movlw	low(STR_1)
	movwf	((c:putrsXLCD@buffer)),c

	call	_putrsXLCD	;wreg free
	goto	l2181
	line	81
	
l35:
	
l2175:
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((main@roll+2))&0ffh,w
	xorlw	80h
	addlw	-(low highword(float24(0.0000000000000000)))^80h
	
	bnz	u1525
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	subwf	((main@roll+1))&0ffh,w
	bnz	u1525
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	subwf	((main@roll))&0ffh,w
u1525:
	btfsc	status,0
	goto	u1521
	goto	u1520
u1521:
	goto	l2179
u1520:
	line	82
	
l2177:; BSR set to: 0

		movlw	high(STR_2)
	movwf	((c:putrsXLCD@buffer+1)),c
	movlw	low(STR_2)
	movwf	((c:putrsXLCD@buffer)),c

	call	_putrsXLCD	;wreg free
	goto	l2181
	line	83
	
l37:
	
l2179:
		movlw	high(STR_3)
	movwf	((c:putrsXLCD@buffer+1)),c
	movlw	low(STR_3)
	movwf	((c:putrsXLCD@buffer)),c

	call	_putrsXLCD	;wreg free
	goto	l2181
	
l38:
	goto	l2181
	line	84
	
l36:
	line	85
	
l2181:
	movlw	(0Ah)&0ffh
	
	call	_Delay1KTCYx
	line	87
	
l2183:
	movlw	(0Dh)&0ffh
	
	call	_WriteCmdXLCD
	line	89
	
l2185:
	movlw	(0C0h)&0ffh
	
	call	_WriteCmdXLCD
	line	92
	
l2187:
	movlw	high(046h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((main@acc+1))&0ffh
	movlw	low(046h)
	movlb	0	; () banked
	movwf	((main@acc))&0ffh
	line	93
	
l2189:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(main@acc+02h))&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movwf	(0+(main@acc+02h))&0ffh
	line	94
	
l2191:; BSR set to: 0

	movlw	high(046h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(main@acc+04h))&0ffh
	movlw	low(046h)
	movlb	0	; () banked
	movwf	(0+(main@acc+04h))&0ffh
	line	96
	
l2193:; BSR set to: 0

	lfsr	2,(main@acc)
	lfsr	1,(__pitch@vector)
	movlw	6
u1531:
	movff	postinc2,postinc1
	decfsz	wreg
	goto	u1531
	call	__pitch	;wreg free
	movff	0+?__pitch,(main@pitch)
	movff	1+?__pitch,(main@pitch+1)
	movff	2+?__pitch,(main@pitch+2)
	line	97
	
l2195:
	lfsr	2,(main@acc)
	lfsr	1,(__roll@vector)
	movlw	6
u1541:
	movff	postinc2,postinc1
	decfsz	wreg
	goto	u1541
	call	__roll	;wreg free
	movff	0+?__roll,(main@roll)
	movff	1+?__roll,(main@roll+1)
	movff	2+?__roll,(main@roll+2)
	line	99
	
l2197:
	movlw	0x7f
	movlb	0	; () banked
	movlb	0	; () banked
	andwf	((main@roll+2))&0ffh,w
	movlb	0	; () banked
	iorwf	((main@roll+1))&0ffh,w
	movlb	0	; () banked
	iorwf	((main@roll))&0ffh,w
	btfss	status,2
	goto	u1551
	goto	u1550
u1551:
	goto	l2201
u1550:
	line	100
	
l2199:; BSR set to: 0

		movlw	high(STR_4)
	movwf	((c:putrsXLCD@buffer+1)),c
	movlw	low(STR_4)
	movwf	((c:putrsXLCD@buffer)),c

	call	_putrsXLCD	;wreg free
	goto	l2207
	line	101
	
l39:
	
l2201:
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((main@roll+2))&0ffh,w
	xorlw	80h
	addlw	-(low highword(float24(0.0000000000000000)))^80h
	
	bnz	u1565
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	subwf	((main@roll+1))&0ffh,w
	bnz	u1565
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	subwf	((main@roll))&0ffh,w
u1565:
	btfsc	status,0
	goto	u1561
	goto	u1560
u1561:
	goto	l2205
u1560:
	line	102
	
l2203:; BSR set to: 0

		movlw	high(STR_5)
	movwf	((c:putrsXLCD@buffer+1)),c
	movlw	low(STR_5)
	movwf	((c:putrsXLCD@buffer)),c

	call	_putrsXLCD	;wreg free
	goto	l2207
	line	103
	
l41:
	
l2205:
		movlw	high(STR_6)
	movwf	((c:putrsXLCD@buffer+1)),c
	movlw	low(STR_6)
	movwf	((c:putrsXLCD@buffer)),c

	call	_putrsXLCD	;wreg free
	goto	l2207
	
l42:
	goto	l2207
	line	104
	
l40:
	line	110
	
l2207:
	movlw	(0F4h)&0ffh
	
	call	_Delay10KTCYx
	line	111
	
l2209:
	movlw	(0Eh)&0ffh
	
	call	_WriteCmdXLCD
	line	115
	
l2211:
	movlw	(064h)&0ffh
	
	call	_Delay10KTCYx
	line	117
	
l2213:
	movlw	(0Ch)&0ffh
	
	call	_WriteCmdXLCD
	line	118
	
l43:
	
l44:
	goto	l43
	
l45:
	line	121
	
l46:
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
;;		 -> STR_6(5), STR_5(6), STR_4(8), STR_3(5), 
;;		 -> STR_2(6), STR_1(8), 
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
	
l2143:
	goto	l2151
	
l122:
	line	21
	goto	l2145
	
l124:
	goto	l2145
	
l123:
	
l2145:
	call	_BusyXLCD	;wreg free
	iorlw	0
	btfss	status,2
	goto	u1471
	goto	u1470
u1471:
	goto	l2145
u1470:
	goto	l2147
	
l125:
	line	22
	
l2147:
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
	
l2149:
	infsnz	((c:putrsXLCD@buffer)),c
	incf	((c:putrsXLCD@buffer+1)),c
	goto	l2151
	line	24
	
l121:
	line	19
	
l2151:
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
	goto	u1481
	goto	u1480
u1481:
	goto	l2145
u1480:
	goto	l127
	
l126:
	line	26
	
l127:
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
	
l2025:
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
	
l2027:
	bsf	((c:3981)),c,1	;volatile
	line	41
	
l2029:
	bcf	((c:3981)),c,0	;volatile
	line	42
	
l2031:
	call	_DelayFor18TCY	;wreg free
	line	43
	
l2033:
	bsf	((c:3981)),c,2	;volatile
	line	44
	
l2035:
	call	_DelayFor18TCY	;wreg free
	line	45
	
l2037:
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
	
l2039:
	call	_DelayFor18TCY	;wreg free
	line	54
	
l2041:
	bsf	((c:3981)),c,2	;volatile
	line	55
	
l2043:
	call	_DelayFor18TCY	;wreg free
	line	56
	
l2045:
	bcf	((c:3981)),c,2	;volatile
	line	58
	movlw	(0F0h)&0ffh
	iorwf	((c:3989)),c	;volatile
	goto	l189
	line	63
	
l2047:
	line	64
	
l189:
	return
	opt stack 0
GLOBAL	__end_of_WriteDataXLCD
	__end_of_WriteDataXLCD:
	signat	_WriteDataXLCD,4216
	global	__roll

;; *************** function __roll *****************
;; Defined at:
;;		line 9 in file "light_kalman.h"
;; Parameters:    Size  Location     Type
;;  vector          6   15[BANK0 ] struct .
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   15[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      11       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftdiv
;;		___ftmul
;;		___lwtoft
;;		_atan2
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	file	"light_kalman.h"
	line	9
global __ptext3
__ptext3:
psect	text3
	file	"light_kalman.h"
	line	9
	global	__size_of__roll
	__size_of__roll	equ	__end_of__roll-__roll
	
__roll:
;incstack = 0
	opt	stack 25
	line	10
	
l2053:
	movff	0+(__roll@vector+04h),(c:___lwtoft@c)
	movff	1+(__roll@vector+04h),(c:___lwtoft@c+1)
	call	___lwtoft	;wreg free
	movff	0+?___lwtoft,(atan2@x)
	movff	1+?___lwtoft,(atan2@x+1)
	movff	2+?___lwtoft,(atan2@x+2)
	movlb	0	; () banked
	movff	(__roll@vector),??__roll+0+0
	movlb	0	; () banked
	movff	(__roll@vector+1),??__roll+0+0+1
	movlb	0	; () banked
	comf	(??__roll+0+0)&0ffh
	comf	(??__roll+0+1)&0ffh
	infsnz	(??__roll+0+0)&0ffh
	incf	(??__roll+0+1)&0ffh
	movff	??__roll+0+0,(c:___lwtoft@c)
	movff	??__roll+0+1,(c:___lwtoft@c+1)
	call	___lwtoft	;wreg free
	movff	0+?___lwtoft,(atan2@y)
	movff	1+?___lwtoft,(atan2@y+1)
	movff	2+?___lwtoft,(atan2@y+2)
	call	_atan2	;wreg free
	movff	0+?_atan2,(__roll$1065)
	movff	1+?_atan2,(__roll$1065+1)
	movff	2+?_atan2,(__roll$1065+2)
	
l2055:
	movlw	low(float24(180.00000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(180.00000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(180.00000000000000))
	movwf	((c:___ftmul@f2+2)),c

	movff	(__roll$1065),(c:___ftmul@f1)
	movff	(__roll$1065+1),(c:___ftmul@f1+1)
	movff	(__roll$1065+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftdiv@f1)
	movff	1+?___ftmul,(c:___ftdiv@f1+1)
	movff	2+?___ftmul,(c:___ftdiv@f1+2)
	movlw	low(float24(3.1415926535897931))
	movwf	((c:___ftdiv@f2)),c
	movlw	high(float24(3.1415926535897931))
	movwf	((c:___ftdiv@f2+1)),c
	movlw	low highword(float24(3.1415926535897931))
	movwf	((c:___ftdiv@f2+2)),c

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(?__roll)
	movff	1+?___ftdiv,(?__roll+1)
	movff	2+?___ftdiv,(?__roll+2)
	goto	l29
	
l2057:
	line	11
	
l29:
	return
	opt stack 0
GLOBAL	__end_of__roll
	__end_of__roll:
	signat	__roll,4219
	global	__pitch

;; *************** function __pitch *****************
;; Defined at:
;;		line 13 in file "light_kalman.h"
;; Parameters:    Size  Location     Type
;;  vector          6   15[BANK0 ] struct .
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   15[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      14       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftdiv
;;		___ftmul
;;		___lwtoft
;;		___wmul
;;		_atan2
;;		_sqrt
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	line	13
global __ptext4
__ptext4:
psect	text4
	file	"light_kalman.h"
	line	13
	global	__size_of__pitch
	__size_of__pitch	equ	__end_of__pitch-__pitch
	
__pitch:
;incstack = 0
	opt	stack 25
	line	14
	
l2059:
	movff	(__pitch@vector),(c:___wmul@multiplier)
	movff	(__pitch@vector+1),(c:___wmul@multiplier+1)
	movff	(__pitch@vector),(c:___wmul@multiplicand)
	movff	(__pitch@vector+1),(c:___wmul@multiplicand+1)
	call	___wmul	;wreg free
	movff	0+?___wmul,??__pitch+0+0
	movff	1+?___wmul,??__pitch+0+0+1
	movff	0+(__pitch@vector+04h),(c:___wmul@multiplier)
	movff	1+(__pitch@vector+04h),(c:___wmul@multiplier+1)
	movff	0+(__pitch@vector+04h),(c:___wmul@multiplicand)
	movff	1+(__pitch@vector+04h),(c:___wmul@multiplicand+1)
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	0	; () banked
	addwf	(??__pitch+0+0)&0ffh,w
	
	movwf	((c:___lwtoft@c)),c
	movf	(1+?___wmul),c,w
	movlb	0	; () banked
	addwfc	(??__pitch+0+1)&0ffh,w
	movwf	1+((c:___lwtoft@c)),c
	call	___lwtoft	;wreg free
	movff	0+?___lwtoft,(c:sqrt@y)
	movff	1+?___lwtoft,(c:sqrt@y+1)
	movff	2+?___lwtoft,(c:sqrt@y+2)
	call	_sqrt	;wreg free
	movff	0+?_sqrt,(__pitch$1066)
	movff	1+?_sqrt,(__pitch$1066+1)
	movff	2+?_sqrt,(__pitch$1066+2)
	
l2061:
	movff	(__pitch$1066),(atan2@x)
	movff	(__pitch$1066+1),(atan2@x+1)
	movff	(__pitch$1066+2),(atan2@x+2)
	movff	0+(__pitch@vector+02h),(c:___lwtoft@c)
	movff	1+(__pitch@vector+02h),(c:___lwtoft@c+1)
	call	___lwtoft	;wreg free
	movff	0+?___lwtoft,(atan2@y)
	movff	1+?___lwtoft,(atan2@y+1)
	movff	2+?___lwtoft,(atan2@y+2)
	call	_atan2	;wreg free
	movff	0+?_atan2,(__pitch$1067)
	movff	1+?_atan2,(__pitch$1067+1)
	movff	2+?_atan2,(__pitch$1067+2)
	
l2063:
	movlw	low(float24(180.00000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(180.00000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(180.00000000000000))
	movwf	((c:___ftmul@f2+2)),c

	movff	(__pitch$1067),(c:___ftmul@f1)
	movff	(__pitch$1067+1),(c:___ftmul@f1+1)
	movff	(__pitch$1067+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftdiv@f1)
	movff	1+?___ftmul,(c:___ftdiv@f1+1)
	movff	2+?___ftmul,(c:___ftdiv@f1+2)
	movlw	low(float24(3.1415926535897931))
	movwf	((c:___ftdiv@f2)),c
	movlw	high(float24(3.1415926535897931))
	movwf	((c:___ftdiv@f2+1)),c
	movlw	low highword(float24(3.1415926535897931))
	movwf	((c:___ftdiv@f2+2)),c

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(?__pitch)
	movff	1+?___ftdiv,(?__pitch+1)
	movff	2+?___ftdiv,(?__pitch+2)
	goto	l32
	
l2065:
	line	15
	
l32:
	return
	opt stack 0
GLOBAL	__end_of__pitch
	__end_of__pitch:
	signat	__pitch,4219
	global	_sqrt

;; *************** function _sqrt *****************
;; Defined at:
;;		line 13 in file "/opt/microchip/xc8/v1.32/sources/common/sqrt.c"
;; Parameters:    Size  Location     Type
;;  y               3   44[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  x               3   60[COMRAM] float 
;;  q               3   57[COMRAM] float 
;;  z               3   53[COMRAM] float 
;;  og              3   50[COMRAM] float 
;;  i               1   56[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   44[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:        13       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        19       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       19 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftge
;;		___ftmul
;;		___ftsub
;; This function is called by:
;;		__pitch
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.32/sources/common/sqrt.c"
	line	13
global __ptext5
__ptext5:
psect	text5
	file	"/opt/microchip/xc8/v1.32/sources/common/sqrt.c"
	line	13
	global	__size_of_sqrt
	__size_of_sqrt	equ	__end_of_sqrt-_sqrt
	
_sqrt:
;incstack = 0
	opt	stack 26
	line	19
	
l1933:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:___ftge@ff1)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:___ftge@ff1+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:___ftge@ff1+2)),c

	movff	(c:sqrt@y),(c:___ftge@ff2)
	movff	(c:sqrt@y+1),(c:___ftge@ff2+1)
	movff	(c:sqrt@y+2),(c:___ftge@ff2+2)
	call	___ftge	;wreg free
	btfss	status,0
	goto	u1391
	goto	u1390
u1391:
	goto	l785
u1390:
	line	20
	
l1935:
	movf	((c:sqrt@y+2)),c,w
	xorlw	80h
	addlw	-(low highword(float24(0.0000000000000000)))^80h
	
	bnz	u1405
	movlw	high(float24(0.0000000000000000))
	subwf	((c:sqrt@y+1)),c,w
	bnz	u1405
	movlw	low(float24(0.0000000000000000))
	subwf	((c:sqrt@y)),c,w
u1405:
	btfsc	status,0
	goto	u1401
	goto	u1400
u1401:
	goto	l786
u1400:
	line	21
	
l1937:
	movlw	high(021h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_errno+1))&0ffh
	movlw	low(021h)
	movlb	0	; () banked
	movwf	((_errno))&0ffh
	
l786:
	line	22
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?_sqrt)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?_sqrt+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?_sqrt+2)),c

	goto	l787
	
l1939:
	goto	l787
	line	23
	
l785:
	line	24
	movff	(c:sqrt@y),(c:sqrt@z)
	movff	(c:sqrt@y+1),(c:sqrt@z+1)
	movff	(c:sqrt@y+2),(c:sqrt@z+2)
	line	30
	
l1941:
	movff	(c:sqrt@y),??_sqrt+0+0
	movff	(c:sqrt@y+1),??_sqrt+0+0+1
	movff	(c:sqrt@y+2),??_sqrt+0+0+2
	comf	(??_sqrt+0+0),c
	comf	(??_sqrt+0+1),c
	comf	(??_sqrt+0+2),c
	incf	(??_sqrt+0+0),c
	movlw	0
	addwfc	(??_sqrt+0+1),c
	addwfc	(??_sqrt+0+2),c

	movlw	low(0BE6EC8h)
	addwf	(??_sqrt+0+0),c,w
	movwf	((c:sqrt@x)),c
	movlw	06Eh
	addwfc	(??_sqrt+0+1),c,w
	movwf	1+((c:sqrt@x)),c
	movlw	0BEh
	addwfc	(??_sqrt+0+2),c,w
	movwf	2+((c:sqrt@x)),c
	line	31
	
l1943:
	bcf	status,0
	rrcf	((c:sqrt@x+2)),c
	rrcf	((c:sqrt@x+1)),c
	rrcf	((c:sqrt@x)),c
	line	32
	
l1945:
	movlw	low(08000h)
	subwf	((c:sqrt@z)),c
	movlw	high(08000h)
	subwfb	((c:sqrt@z+1)),c
	movlw	low highword(08000h)
	subwfb	((c:sqrt@z+2)),c

	line	34
	
l1947:
	movlw	low(04h)
	movwf	((c:sqrt@i)),c
	goto	l1949
	line	35
	
l788:
	line	36
	
l1949:
	movff	(c:sqrt@x),(c:sqrt@og)
	movff	(c:sqrt@x+1),(c:sqrt@og+1)
	movff	(c:sqrt@x+2),(c:sqrt@og+2)
	line	37
	
l1951:
	movff	(c:sqrt@x),(c:___ftmul@f1)
	movff	(c:sqrt@x+1),(c:___ftmul@f1+1)
	movff	(c:sqrt@x+2),(c:___ftmul@f1+2)
	movff	(c:sqrt@z),(c:___ftmul@f2)
	movff	(c:sqrt@z+1),(c:___ftmul@f2+1)
	movff	(c:sqrt@z+2),(c:___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:sqrt@q)
	movff	1+?___ftmul,(c:sqrt@q+1)
	movff	2+?___ftmul,(c:sqrt@q+2)
	line	38
	
l1953:
	movff	(c:sqrt@q),(c:___ftmul@f1)
	movff	(c:sqrt@q+1),(c:___ftmul@f1+1)
	movff	(c:sqrt@q+2),(c:___ftmul@f1+2)
	movff	(c:sqrt@x),(c:___ftmul@f2)
	movff	(c:sqrt@x+1),(c:___ftmul@f2+1)
	movff	(c:sqrt@x+2),(c:___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:sqrt@q)
	movff	1+?___ftmul,(c:sqrt@q+1)
	movff	2+?___ftmul,(c:sqrt@q+2)
	line	39
	
l1955:
	movff	(c:sqrt@q),(c:___ftmul@f1)
	movff	(c:sqrt@q+1),(c:___ftmul@f1+1)
	movff	(c:sqrt@q+2),(c:___ftmul@f1+2)
	movff	(c:sqrt@x),(c:___ftmul@f2)
	movff	(c:sqrt@x+1),(c:___ftmul@f2+1)
	movff	(c:sqrt@x+2),(c:___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:sqrt@q)
	movff	1+?___ftmul,(c:sqrt@q+1)
	movff	2+?___ftmul,(c:sqrt@q+2)
	line	40
	
l1957:
	movff	(c:sqrt@x),(c:___ftmul@f1)
	movff	(c:sqrt@x+1),(c:___ftmul@f1+1)
	movff	(c:sqrt@x+2),(c:___ftmul@f1+2)
	movlw	low(float24(1.5000000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(1.5000000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(1.5000000000000000))
	movwf	((c:___ftmul@f2+2)),c

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:sqrt@x)
	movff	1+?___ftmul,(c:sqrt@x+1)
	movff	2+?___ftmul,(c:sqrt@x+2)
	line	41
	
l1959:
	movff	(c:sqrt@x),(c:___ftsub@f1)
	movff	(c:sqrt@x+1),(c:___ftsub@f1+1)
	movff	(c:sqrt@x+2),(c:___ftsub@f1+2)
	movff	(c:sqrt@q),(c:___ftsub@f2)
	movff	(c:sqrt@q+1),(c:___ftsub@f2+1)
	movff	(c:sqrt@q+2),(c:___ftsub@f2+2)
	call	___ftsub	;wreg free
	movff	0+?___ftsub,(c:sqrt@x)
	movff	1+?___ftsub,(c:sqrt@x+1)
	movff	2+?___ftsub,(c:sqrt@x+2)
	line	42
	
l1961:
	decfsz	((c:sqrt@i)),c
	
	goto	l1949
	goto	l1963
	
l789:
	line	43
	
l1963:
	movff	(c:sqrt@x),(c:___ftmul@f1)
	movff	(c:sqrt@x+1),(c:___ftmul@f1+1)
	movff	(c:sqrt@x+2),(c:___ftmul@f1+2)
	movff	(c:sqrt@y),(c:___ftmul@f2)
	movff	(c:sqrt@y+1),(c:___ftmul@f2+1)
	movff	(c:sqrt@y+2),(c:___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:?_sqrt)
	movff	1+?___ftmul,(c:?_sqrt+1)
	movff	2+?___ftmul,(c:?_sqrt+2)
	goto	l787
	
l1965:
	line	44
	
l787:
	return
	opt stack 0
GLOBAL	__end_of_sqrt
	__end_of_sqrt:
	signat	_sqrt,4219
	global	_atan2

;; *************** function _atan2 *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.32/sources/common/atan2.c"
;; Parameters:    Size  Location     Type
;;  y               3    0[BANK0 ] unsigned char 
;;  x               3    3[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  v               3   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       9       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      15       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftadd
;;		___ftdiv
;;		___ftge
;;		___ftneg
;;		___ftsub
;;		_atan
;;		_fabs
;; This function is called by:
;;		__roll
;;		__pitch
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.32/sources/common/atan2.c"
	line	8
global __ptext6
__ptext6:
psect	text6
	file	"/opt/microchip/xc8/v1.32/sources/common/atan2.c"
	line	8
	global	__size_of_atan2
	__size_of_atan2	equ	__end_of_atan2-_atan2
	
_atan2:
;incstack = 0
	opt	stack 25
	line	12
	
l1865:
	movlw	0x7f
	movlb	0	; () banked
	movlb	0	; () banked
	andwf	((atan2@x+2))&0ffh,w
	movlb	0	; () banked
	iorwf	((atan2@x+1))&0ffh,w
	movlb	0	; () banked
	iorwf	((atan2@x))&0ffh,w
	btfss	status,2
	goto	u1301
	goto	u1300
u1301:
	goto	l1885
u1300:
	line	13
	
l1867:; BSR set to: 0

	movlw	0x7f
	movlb	0	; () banked
	movlb	0	; () banked
	andwf	((atan2@y+2))&0ffh,w
	movlb	0	; () banked
	iorwf	((atan2@y+1))&0ffh,w
	movlb	0	; () banked
	iorwf	((atan2@y))&0ffh,w
	btfss	status,2
	goto	u1311
	goto	u1310
u1311:
	goto	l1873
u1310:
	line	14
	
l1869:; BSR set to: 0

	movlw	high(021h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_errno+1))&0ffh
	movlw	low(021h)
	movlb	0	; () banked
	movwf	((_errno))&0ffh
	line	15
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?_atan2))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?_atan2+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?_atan2+2))&0ffh

	goto	l345
	
l1871:; BSR set to: 0

	goto	l345
	line	16
	
l344:; BSR set to: 0

	line	17
	
l1873:; BSR set to: 0

	movlw	low(float24(0.0000000000000000))
	movwf	((c:___ftge@ff1)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:___ftge@ff1+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:___ftge@ff1+2)),c

	movff	(atan2@y),(c:___ftge@ff2)
	movff	(atan2@y+1),(c:___ftge@ff2+1)
	movff	(atan2@y+2),(c:___ftge@ff2+2)
	call	___ftge	;wreg free
	btfsc	status,0
	goto	u1321
	goto	u1320
u1321:
	goto	l1881
u1320:
	line	18
	
l1875:
	movlw	low(float24(1.5707963267948899))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?_atan2))&0ffh
	movlw	high(float24(1.5707963267948899))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?_atan2+1))&0ffh
	movlw	low highword(float24(1.5707963267948899))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?_atan2+2))&0ffh

	goto	l345
	
l1877:; BSR set to: 0

	goto	l345
	line	19
	
l1879:; BSR set to: 0

	goto	l1885
	line	20
	
l346:; BSR set to: 0

	line	21
	
l1881:
	movlw	low(float24(-1.5707963267948899))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?_atan2))&0ffh
	movlw	high(float24(-1.5707963267948899))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?_atan2+1))&0ffh
	movlw	low highword(float24(-1.5707963267948899))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?_atan2+2))&0ffh

	goto	l345
	
l1883:; BSR set to: 0

	goto	l345
	line	22
	
l347:; BSR set to: 0

	goto	l1885
	line	23
	
l343:; BSR set to: 0

	line	24
	
l1885:; BSR set to: 0

	movlw	0x7f
	movlb	0	; () banked
	movlb	0	; () banked
	andwf	((atan2@y+2))&0ffh,w
	movlb	0	; () banked
	iorwf	((atan2@y+1))&0ffh,w
	movlb	0	; () banked
	iorwf	((atan2@y))&0ffh,w
	btfss	status,2
	goto	u1331
	goto	u1330
u1331:
	goto	l1899
u1330:
	line	25
	
l1887:; BSR set to: 0

	movlw	low(float24(0.0000000000000000))
	movwf	((c:___ftge@ff1)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:___ftge@ff1+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:___ftge@ff1+2)),c

	movff	(atan2@x),(c:___ftge@ff2)
	movff	(atan2@x+1),(c:___ftge@ff2+1)
	movff	(atan2@x+2),(c:___ftge@ff2+2)
	call	___ftge	;wreg free
	btfsc	status,0
	goto	u1341
	goto	u1340
u1341:
	goto	l1895
u1340:
	line	26
	
l1889:
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?_atan2))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?_atan2+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?_atan2+2))&0ffh

	goto	l345
	
l1891:; BSR set to: 0

	goto	l345
	line	27
	
l1893:; BSR set to: 0

	goto	l1899
	line	28
	
l349:; BSR set to: 0

	line	29
	
l1895:
	movlw	low(float24(3.1415926535897900))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?_atan2))&0ffh
	movlw	high(float24(3.1415926535897900))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?_atan2+1))&0ffh
	movlw	low highword(float24(3.1415926535897900))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?_atan2+2))&0ffh

	goto	l345
	
l1897:; BSR set to: 0

	goto	l345
	line	30
	
l350:; BSR set to: 0

	goto	l1899
	line	31
	
l348:; BSR set to: 0

	line	32
	
l1899:; BSR set to: 0

	movff	(atan2@x),(c:fabs@d)
	movff	(atan2@x+1),(c:fabs@d+1)
	movff	(atan2@x+2),(c:fabs@d+2)
	call	_fabs	;wreg free
	movff	0+?_fabs,(c:___ftge@ff1)
	movff	1+?_fabs,(c:___ftge@ff1+1)
	movff	2+?_fabs,(c:___ftge@ff1+2)
	movff	(atan2@y),(c:fabs@d)
	movff	(atan2@y+1),(c:fabs@d+1)
	movff	(atan2@y+2),(c:fabs@d+2)
	call	_fabs	;wreg free
	movff	0+?_fabs,(c:___ftge@ff2)
	movff	1+?_fabs,(c:___ftge@ff2+1)
	movff	2+?_fabs,(c:___ftge@ff2+2)
	call	___ftge	;wreg free
	btfss	status,0
	goto	u1351
	goto	u1350
u1351:
	goto	l1917
u1350:
	line	33
	
l1901:
	movff	(atan2@y),(c:___ftdiv@f1)
	movff	(atan2@y+1),(c:___ftdiv@f1+1)
	movff	(atan2@y+2),(c:___ftdiv@f1+2)
	movff	(atan2@x),(c:___ftdiv@f2)
	movff	(atan2@x+1),(c:___ftdiv@f2+1)
	movff	(atan2@x+2),(c:___ftdiv@f2+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(_atan2$1068)
	movff	1+?___ftdiv,(_atan2$1068+1)
	movff	2+?___ftdiv,(_atan2$1068+2)
	
l1903:
	movff	(_atan2$1068),(c:atan@f)
	movff	(_atan2$1068+1),(c:atan@f+1)
	movff	(_atan2$1068+2),(c:atan@f+2)
	call	_atan	;wreg free
	movff	0+?_atan,(atan2@v)
	movff	1+?_atan,(atan2@v+1)
	movff	2+?_atan,(atan2@v+2)
	line	34
	
l1905:
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((atan2@x+2))&0ffh,w
	xorlw	80h
	addlw	-(low highword(float24(0.0000000000000000)))^80h
	
	bnz	u1365
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	subwf	((atan2@x+1))&0ffh,w
	bnz	u1365
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	subwf	((atan2@x))&0ffh,w
u1365:
	btfsc	status,0
	goto	u1361
	goto	u1360
u1361:
	goto	l1913
u1360:
	line	35
	
l1907:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((atan2@y+2))&0ffh,w
	xorlw	80h
	addlw	-(low highword(float24(0.0000000000000000)))^80h
	
	bnz	u1375
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	subwf	((atan2@y+1))&0ffh,w
	bnz	u1375
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	subwf	((atan2@y))&0ffh,w
u1375:
	btfss	status,0
	goto	u1371
	goto	u1370
u1371:
	goto	l1911
u1370:
	line	36
	
l1909:; BSR set to: 0

	movff	(atan2@v),(c:___ftadd@f1)
	movff	(atan2@v+1),(c:___ftadd@f1+1)
	movff	(atan2@v+2),(c:___ftadd@f1+2)
	movlw	low(float24(3.1415926535897900))
	movwf	((c:___ftadd@f2)),c
	movlw	high(float24(3.1415926535897900))
	movwf	((c:___ftadd@f2+1)),c
	movlw	low highword(float24(3.1415926535897900))
	movwf	((c:___ftadd@f2+2)),c

	call	___ftadd	;wreg free
	movff	0+?___ftadd,(atan2@v)
	movff	1+?___ftadd,(atan2@v+1)
	movff	2+?___ftadd,(atan2@v+2)
	goto	l1913
	line	37
	
l353:
	line	38
	
l1911:
	movff	(atan2@v),(c:___ftsub@f1)
	movff	(atan2@v+1),(c:___ftsub@f1+1)
	movff	(atan2@v+2),(c:___ftsub@f1+2)
	movlw	low(float24(3.1415926535897900))
	movwf	((c:___ftsub@f2)),c
	movlw	high(float24(3.1415926535897900))
	movwf	((c:___ftsub@f2+1)),c
	movlw	low highword(float24(3.1415926535897900))
	movwf	((c:___ftsub@f2+2)),c

	call	___ftsub	;wreg free
	movff	0+?___ftsub,(atan2@v)
	movff	1+?___ftsub,(atan2@v+1)
	movff	2+?___ftsub,(atan2@v+2)
	goto	l1913
	
l354:
	goto	l1913
	
l352:
	line	39
	
l1913:
	movff	(atan2@v),(?_atan2)
	movff	(atan2@v+1),(?_atan2+1)
	movff	(atan2@v+2),(?_atan2+2)
	goto	l345
	
l1915:
	goto	l345
	line	40
	
l351:
	line	41
	
l1917:
	movff	(atan2@y),(c:___ftdiv@f2)
	movff	(atan2@y+1),(c:___ftdiv@f2+1)
	movff	(atan2@y+2),(c:___ftdiv@f2+2)
	movff	(atan2@x),(c:___ftdiv@f1)
	movff	(atan2@x+1),(c:___ftdiv@f1+1)
	movff	(atan2@x+2),(c:___ftdiv@f1+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(_atan2$1068)
	movff	1+?___ftdiv,(_atan2$1068+1)
	movff	2+?___ftdiv,(_atan2$1068+2)
	
l1919:
	movff	(_atan2$1068),(c:atan@f)
	movff	(_atan2$1068+1),(c:atan@f+1)
	movff	(_atan2$1068+2),(c:atan@f+2)
	call	_atan	;wreg free
	movff	0+?_atan,(_atan2$1069)
	movff	1+?_atan,(_atan2$1069+1)
	movff	2+?_atan,(_atan2$1069+2)
	
l1921:
	movff	(_atan2$1069),(c:___ftneg@f1)
	movff	(_atan2$1069+1),(c:___ftneg@f1+1)
	movff	(_atan2$1069+2),(c:___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(atan2@v)
	movff	1+?___ftneg,(atan2@v+1)
	movff	2+?___ftneg,(atan2@v+2)
	line	42
	
l1923:
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((atan2@y+2))&0ffh,w
	xorlw	80h
	addlw	-(low highword(float24(0.0000000000000000)))^80h
	
	bnz	u1385
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	subwf	((atan2@y+1))&0ffh,w
	bnz	u1385
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	subwf	((atan2@y))&0ffh,w
u1385:
	btfsc	status,0
	goto	u1381
	goto	u1380
u1381:
	goto	l1927
u1380:
	line	43
	
l1925:; BSR set to: 0

	movff	(atan2@v),(c:___ftsub@f1)
	movff	(atan2@v+1),(c:___ftsub@f1+1)
	movff	(atan2@v+2),(c:___ftsub@f1+2)
	movlw	low(float24(1.5707963267948899))
	movwf	((c:___ftsub@f2)),c
	movlw	high(float24(1.5707963267948899))
	movwf	((c:___ftsub@f2+1)),c
	movlw	low highword(float24(1.5707963267948899))
	movwf	((c:___ftsub@f2+2)),c

	call	___ftsub	;wreg free
	movff	0+?___ftsub,(atan2@v)
	movff	1+?___ftsub,(atan2@v+1)
	movff	2+?___ftsub,(atan2@v+2)
	goto	l1929
	line	44
	
l355:
	line	45
	
l1927:
	movff	(atan2@v),(c:___ftadd@f1)
	movff	(atan2@v+1),(c:___ftadd@f1+1)
	movff	(atan2@v+2),(c:___ftadd@f1+2)
	movlw	low(float24(1.5707963267948899))
	movwf	((c:___ftadd@f2)),c
	movlw	high(float24(1.5707963267948899))
	movwf	((c:___ftadd@f2+1)),c
	movlw	low highword(float24(1.5707963267948899))
	movwf	((c:___ftadd@f2+2)),c

	call	___ftadd	;wreg free
	movff	0+?___ftadd,(atan2@v)
	movff	1+?___ftadd,(atan2@v+1)
	movff	2+?___ftadd,(atan2@v+2)
	goto	l1929
	
l356:
	line	46
	
l1929:
	movff	(atan2@v),(?_atan2)
	movff	(atan2@v+1),(?_atan2+1)
	movff	(atan2@v+2),(?_atan2+2)
	goto	l345
	
l1931:
	line	47
	
l345:
	return
	opt stack 0
GLOBAL	__end_of_atan2
	__end_of_atan2:
	signat	_atan2,8315
	global	_atan

;; *************** function _atan *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.32/sources/common/atan.c"
;; Parameters:    Size  Location     Type
;;  f               3   78[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  val             3   91[COMRAM] unsigned char 
;;  val_squared     3   88[COMRAM] unsigned char 
;;  x               3   84[COMRAM] unsigned char 
;;  y               3   81[COMRAM] unsigned char 
;;  recip           1   87[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   78[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:        13       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        16       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftadd
;;		___ftdiv
;;		___ftge
;;		___ftmul
;;		___ftneg
;;		_eval_poly
;;		_fabs
;; This function is called by:
;;		_atan2
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.32/sources/common/atan.c"
	line	8
global __ptext7
__ptext7:
psect	text7
	file	"/opt/microchip/xc8/v1.32/sources/common/atan.c"
	line	8
	global	__size_of_atan
	__size_of_atan	equ	__end_of_atan-_atan
	
_atan:
;incstack = 0
	opt	stack 25
	line	30
	
l1839:
	movff	(c:atan@f),(c:fabs@d)
	movff	(c:atan@f+1),(c:fabs@d+1)
	movff	(c:atan@f+2),(c:fabs@d+2)
	call	_fabs	;wreg free
	movff	0+?_fabs,(c:atan@val)
	movff	1+?_fabs,(c:atan@val+1)
	movff	2+?_fabs,(c:atan@val+2)
	movlw	0x7f
	andwf	((c:atan@val+2))&0ffh,w
	iorwf	((c:atan@val+1))&0ffh,w
	iorwf	((c:atan@val))&0ffh,w
	btfss	status,2
	goto	u1251
	goto	u1250
u1251:
	goto	l1845
u1250:
	line	31
	
l1841:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?_atan)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?_atan+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?_atan+2)),c

	goto	l801
	
l1843:
	goto	l801
	
l800:
	line	32
	
l1845:
	movlw	low(float24(1.0000000000000000))
	movwf	((c:___ftge@ff1)),c
	movlw	high(float24(1.0000000000000000))
	movwf	((c:___ftge@ff1+1)),c
	movlw	low highword(float24(1.0000000000000000))
	movwf	((c:___ftge@ff1+2)),c

	movff	(c:atan@val),(c:___ftge@ff2)
	movff	(c:atan@val+1),(c:___ftge@ff2+1)
	movff	(c:atan@val+2),(c:___ftge@ff2+2)
	call	___ftge	;wreg free
	btfss	status,0
	goto	u1261
	goto	u1260
u1261:
	movlw	1
	goto	u1266
u1260:
	movlw	0
u1266:
	movwf	((c:atan@recip)),c
	movf	((c:atan@recip))&0ffh,w
	btfsc	status,2
	goto	u1271
	goto	u1270
u1271:
	goto	l802
u1270:
	line	33
	
l1847:
	movlw	low(float24(1.0000000000000000))
	movwf	((c:___ftdiv@f1)),c
	movlw	high(float24(1.0000000000000000))
	movwf	((c:___ftdiv@f1+1)),c
	movlw	low highword(float24(1.0000000000000000))
	movwf	((c:___ftdiv@f1+2)),c

	movff	(c:atan@val),(c:___ftdiv@f2)
	movff	(c:atan@val+1),(c:___ftdiv@f2+1)
	movff	(c:atan@val+2),(c:___ftdiv@f2+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(c:atan@val)
	movff	1+?___ftdiv,(c:atan@val+1)
	movff	2+?___ftdiv,(c:atan@val+2)
	
l802:
	line	34
	movff	(c:atan@val),(c:___ftmul@f1)
	movff	(c:atan@val+1),(c:___ftmul@f1+1)
	movff	(c:atan@val+2),(c:___ftmul@f1+2)
	movff	(c:atan@val),(c:___ftmul@f2)
	movff	(c:atan@val+1),(c:___ftmul@f2+1)
	movff	(c:atan@val+2),(c:___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:atan@val_squared)
	movff	1+?___ftmul,(c:atan@val_squared+1)
	movff	2+?___ftmul,(c:atan@val_squared+2)
	line	35
	
l1849:
	movff	(c:atan@val_squared),(c:eval_poly@x)
	movff	(c:atan@val_squared+1),(c:eval_poly@x+1)
	movff	(c:atan@val_squared+2),(c:eval_poly@x+2)
		movlw	high(atan@coeff_b)
	movwf	((c:eval_poly@d+1)),c
	movlw	low(atan@coeff_b)
	movwf	((c:eval_poly@d)),c

	movlw	high(04h)
	movwf	((c:eval_poly@n+1)),c
	movlw	low(04h)
	movwf	((c:eval_poly@n)),c
	call	_eval_poly	;wreg free
	movff	0+?_eval_poly,(c:atan@y)
	movff	1+?_eval_poly,(c:atan@y+1)
	movff	2+?_eval_poly,(c:atan@y+2)
	line	36
	
l1851:
	movff	(c:atan@val_squared),(c:eval_poly@x)
	movff	(c:atan@val_squared+1),(c:eval_poly@x+1)
	movff	(c:atan@val_squared+2),(c:eval_poly@x+2)
		movlw	high(atan@coeff_a)
	movwf	((c:eval_poly@d+1)),c
	movlw	low(atan@coeff_a)
	movwf	((c:eval_poly@d)),c

	movlw	high(05h)
	movwf	((c:eval_poly@n+1)),c
	movlw	low(05h)
	movwf	((c:eval_poly@n)),c
	call	_eval_poly	;wreg free
	movff	0+?_eval_poly,(c:atan@x)
	movff	1+?_eval_poly,(c:atan@x+1)
	movff	2+?_eval_poly,(c:atan@x+2)
	line	37
	movff	(c:atan@val),(c:___ftmul@f1)
	movff	(c:atan@val+1),(c:___ftmul@f1+1)
	movff	(c:atan@val+2),(c:___ftmul@f1+2)
	movff	(c:atan@y),(c:___ftdiv@f2)
	movff	(c:atan@y+1),(c:___ftdiv@f2+1)
	movff	(c:atan@y+2),(c:___ftdiv@f2+2)
	movff	(c:atan@x),(c:___ftdiv@f1)
	movff	(c:atan@x+1),(c:___ftdiv@f1+1)
	movff	(c:atan@x+2),(c:___ftdiv@f1+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(c:___ftmul@f2)
	movff	1+?___ftdiv,(c:___ftmul@f2+1)
	movff	2+?___ftdiv,(c:___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:atan@val)
	movff	1+?___ftmul,(c:atan@val+1)
	movff	2+?___ftmul,(c:atan@val+2)
	line	38
	
l1853:
	movf	((c:atan@recip)),c,w
	btfsc	status,2
	goto	u1281
	goto	u1280
u1281:
	goto	l1857
u1280:
	line	39
	
l1855:
	movff	(c:atan@val),(c:___ftneg@f1)
	movff	(c:atan@val+1),(c:___ftneg@f1+1)
	movff	(c:atan@val+2),(c:___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(c:___ftadd@f1)
	movff	1+?___ftneg,(c:___ftadd@f1+1)
	movff	2+?___ftneg,(c:___ftadd@f1+2)
	movlw	low(float24(1.5707963267948950))
	movwf	((c:___ftadd@f2)),c
	movlw	high(float24(1.5707963267948950))
	movwf	((c:___ftadd@f2+1)),c
	movlw	low highword(float24(1.5707963267948950))
	movwf	((c:___ftadd@f2+2)),c

	call	___ftadd	;wreg free
	movff	0+?___ftadd,(c:atan@val)
	movff	1+?___ftadd,(c:atan@val+1)
	movff	2+?___ftadd,(c:atan@val+2)
	goto	l1857
	
l803:
	line	40
	
l1857:
	movf	((c:atan@f+2)),c,w
	xorlw	80h
	addlw	-(low highword(float24(0.0000000000000000)))^80h
	
	bnz	u1295
	movlw	high(float24(0.0000000000000000))
	subwf	((c:atan@f+1)),c,w
	bnz	u1295
	movlw	low(float24(0.0000000000000000))
	subwf	((c:atan@f)),c,w
u1295:
	btfss	status,0
	goto	u1291
	goto	u1290
u1291:
	goto	l1861
u1290:
	
l1859:
	movff	(c:atan@val),(c:?_atan)
	movff	(c:atan@val+1),(c:?_atan+1)
	movff	(c:atan@val+2),(c:?_atan+2)
	goto	l801
	
l805:
	
l1861:
	movff	(c:atan@val),(c:___ftneg@f1)
	movff	(c:atan@val+1),(c:___ftneg@f1+1)
	movff	(c:atan@val+2),(c:___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(c:?_atan)
	movff	1+?___ftneg,(c:?_atan+1)
	movff	2+?___ftneg,(c:?_atan+2)
	goto	l801
	
l807:
	goto	l801
	
l1863:
	line	41
	
l801:
	return
	opt stack 0
GLOBAL	__end_of_atan
	__end_of_atan:
	signat	_atan,4219
	global	_fabs

;; *************** function _fabs *****************
;; Defined at:
;;		line 4 in file "/opt/microchip/xc8/v1.32/sources/common/fabs.c"
;; Parameters:    Size  Location     Type
;;  d               3    3[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    3[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftneg
;; This function is called by:
;;		_atan2
;;		_atan
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.32/sources/common/fabs.c"
	line	4
global __ptext8
__ptext8:
psect	text8
	file	"/opt/microchip/xc8/v1.32/sources/common/fabs.c"
	line	4
	global	__size_of_fabs
	__size_of_fabs	equ	__end_of_fabs-_fabs
	
_fabs:
;incstack = 0
	opt	stack 27
	line	6
	
l1797:
	movf	((c:fabs@d+2)),c,w
	xorlw	80h
	addlw	-(low highword(float24(0.0000000000000000)))^80h
	
	bnz	u1205
	movlw	high(float24(0.0000000000000000))
	subwf	((c:fabs@d+1)),c,w
	bnz	u1205
	movlw	low(float24(0.0000000000000000))
	subwf	((c:fabs@d)),c,w
u1205:
	btfsc	status,0
	goto	u1201
	goto	u1200
u1201:
	goto	l475
u1200:
	line	7
	
l1799:
	movff	(c:fabs@d),(c:___ftneg@f1)
	movff	(c:fabs@d+1),(c:___ftneg@f1+1)
	movff	(c:fabs@d+2),(c:___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(c:?_fabs)
	movff	1+?___ftneg,(c:?_fabs+1)
	movff	2+?___ftneg,(c:?_fabs+2)
	goto	l476
	
l1801:
	goto	l476
	
l475:
	line	8
	movff	(c:fabs@d),(c:?_fabs)
	movff	(c:fabs@d+1),(c:?_fabs+1)
	movff	(c:fabs@d+2),(c:?_fabs+2)
	line	9
	
l476:
	return
	opt stack 0
GLOBAL	__end_of_fabs
	__end_of_fabs:
	signat	_fabs,4219
	global	___ftneg

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 15 in file "/opt/microchip/xc8/v1.32/sources/common/ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_atan2
;;		_fabs
;;		_atan
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.32/sources/common/ftneg.c"
	line	15
global __ptext9
__ptext9:
psect	text9
	file	"/opt/microchip/xc8/v1.32/sources/common/ftneg.c"
	line	15
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:
;incstack = 0
	opt	stack 27
	line	17
	
l1743:
	movlw	0x7f
	andwf	((c:___ftneg@f1+2)),c,w
	iorwf	((c:___ftneg@f1+1)),c,w
	iorwf	((c:___ftneg@f1)),c,w
	btfsc	status,2
	goto	u1141
	goto	u1140
u1141:
	goto	l641
u1140:
	line	18
	
l1745:
	movlw	low(0800000h)
	xorwf	((c:___ftneg@f1)),c
	movlw	high(0800000h)
	xorwf	((c:___ftneg@f1+1)),c
	movlw	low highword(0800000h)
	xorwf	((c:___ftneg@f1+2)),c

	
l641:
	line	19
	movff	(c:___ftneg@f1),(c:?___ftneg)
	movff	(c:___ftneg@f1+1),(c:?___ftneg+1)
	movff	(c:___ftneg@f1+2),(c:?___ftneg+2)
	line	20
	
l642:
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
	signat	___ftneg,4219
	global	_eval_poly

;; *************** function _eval_poly *****************
;; Defined at:
;;		line 4 in file "/opt/microchip/xc8/v1.32/sources/common/evalpoly.c"
;; Parameters:    Size  Location     Type
;;  x               3   38[COMRAM] float 
;;  d               2   41[COMRAM] PTR const 
;;		 -> atan@coeff_a(18), atan@coeff_b(15), 
;;  n               2   43[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  res             3   47[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  3   38[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         7       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftadd
;;		___ftmul
;;		___wmul
;; This function is called by:
;;		_atan
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.32/sources/common/evalpoly.c"
	line	4
global __ptext10
__ptext10:
psect	text10
	file	"/opt/microchip/xc8/v1.32/sources/common/evalpoly.c"
	line	4
	global	__size_of_eval_poly
	__size_of_eval_poly	equ	__end_of_eval_poly-_eval_poly
	
_eval_poly:
;incstack = 0
	opt	stack 25
	line	8
	
l1821:
	movff	(c:eval_poly@n),(c:___wmul@multiplier)
	movff	(c:eval_poly@n+1),(c:___wmul@multiplier+1)
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	(c:eval_poly@d),??_eval_poly+0+0
	movff	(c:eval_poly@d+1),??_eval_poly+0+0+1
	movf	(0+?___wmul),c,w
	addwf	(??_eval_poly+0+0),c
	movf	(1+?___wmul),c,w
	addwfc	(??_eval_poly+0+1),c
	movff	??_eval_poly+0+0,tblptrl
	movff	??_eval_poly+0+1,tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(c:eval_poly@res)
	tblrd*+
	
	movff	tablat,(c:eval_poly@res+1)
	tblrd*-
	
	movff	tablat,(c:eval_poly@res+2)

	line	9
	goto	l1825
	
l811:
	line	10
	
l1823:
	movff	(c:eval_poly@res),(c:___ftmul@f2)
	movff	(c:eval_poly@res+1),(c:___ftmul@f2+1)
	movff	(c:eval_poly@res+2),(c:___ftmul@f2+2)
	movff	(c:eval_poly@x),(c:___ftmul@f1)
	movff	(c:eval_poly@x+1),(c:___ftmul@f1+1)
	movff	(c:eval_poly@x+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftadd@f1)
	movff	1+?___ftmul,(c:___ftadd@f1+1)
	movff	2+?___ftmul,(c:___ftadd@f1+2)
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	decf	((c:eval_poly@n)),c
	btfss	status,0
	decf	((c:eval_poly@n+1)),c
	movff	(c:eval_poly@n),(c:___wmul@multiplier)
	movff	(c:eval_poly@n+1),(c:___wmul@multiplier+1)
	call	___wmul	;wreg free
	movff	(c:eval_poly@d),??_eval_poly+0+0
	movff	(c:eval_poly@d+1),??_eval_poly+0+0+1
	movf	(0+?___wmul),c,w
	addwf	(??_eval_poly+0+0),c
	movf	(1+?___wmul),c,w
	addwfc	(??_eval_poly+0+1),c
	movff	??_eval_poly+0+0,tblptrl
	movff	??_eval_poly+0+1,tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(c:___ftadd@f2)
	tblrd*+
	
	movff	tablat,(c:___ftadd@f2+1)
	tblrd*-
	
	movff	tablat,(c:___ftadd@f2+2)

	call	___ftadd	;wreg free
	movff	0+?___ftadd,(c:eval_poly@res)
	movff	1+?___ftadd,(c:eval_poly@res+1)
	movff	2+?___ftadd,(c:eval_poly@res+2)
	goto	l1825
	
l810:
	line	9
	
l1825:
	movf	((c:eval_poly@n+1)),c,w
	iorwf ((c:eval_poly@n)),c,w

	btfss	status,2
	goto	u1241
	goto	u1240
u1241:
	goto	l1823
u1240:
	
l812:
	line	11
	movff	(c:eval_poly@res),(c:?_eval_poly)
	movff	(c:eval_poly@res+1),(c:?_eval_poly+1)
	movff	(c:eval_poly@res+2),(c:?_eval_poly+2)
	line	12
	
l813:
	return
	opt stack 0
GLOBAL	__end_of_eval_poly
	__end_of_eval_poly:
	signat	_eval_poly,12411
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "/opt/microchip/xc8/v1.32/sources/common/Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMRAM] unsigned int 
;;  multiplicand    2    2[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		__pitch
;;		_eval_poly
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.32/sources/common/Umul16.c"
	line	15
global __ptext11
__ptext11:
psect	text11
	file	"/opt/microchip/xc8/v1.32/sources/common/Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:
;incstack = 0
	opt	stack 26
	line	37
	
l1619:
	movf	((c:___wmul@multiplier)),c,w
	mulwf	((c:___wmul@multiplicand)),c
	movff	prodl,(c:___wmul@product)
	movff	prodh,(c:___wmul@product+1)
	line	38
	movf	((c:___wmul@multiplier)),c,w
	mulwf	(0+((c:___wmul@multiplicand)+01h)),c
	movf	(prodl),c,w
	addwf	((c:___wmul@product+1)),c

	line	39
	movf	(0+((c:___wmul@multiplier)+01h)),c,w
	mulwf	((c:___wmul@multiplicand)),c
	movf	(prodl),c,w
	addwf	((c:___wmul@product+1)),c

	line	52
	
l1621:
	movff	(c:___wmul@product),(c:?___wmul)
	movff	(c:___wmul@product+1),(c:?___wmul+1)
	goto	l192
	
l1623:
	line	53
	
l192:
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "/opt/microchip/xc8/v1.32/sources/common/ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   11[COMRAM] float 
;;  f2              3   14[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   21[COMRAM] unsigned um
;;  sign            1   25[COMRAM] unsigned char 
;;  cntr            1   24[COMRAM] unsigned char 
;;  exp             1   20[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   11[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		__roll
;;		__pitch
;;		_sqrt
;;		_atan
;;		_eval_poly
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.32/sources/common/ftmul.c"
	line	62
global __ptext12
__ptext12:
psect	text12
	file	"/opt/microchip/xc8/v1.32/sources/common/ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:
;incstack = 0
	opt	stack 25
	line	67
	
l1695:
	movff	(c:___ftmul@f1+2),??___ftmul+0+0
	clrf	(??___ftmul+0+0+1)&0ffh,c
	clrf	(??___ftmul+0+0+2)&0ffh,c
	rlcf	((c:___ftmul@f1+1)),c,w
	rlcf	(??___ftmul+0+0)&0ffh,c
	bnc	u1081
	bsf	(??___ftmul+0+0+1)&0ffh,c,0
u1081:
	movf	(??___ftmul+0+0),c,w
	movwf	((c:___ftmul@exp)),c
	tstfsz	((c:___ftmul@exp))&0ffh
	goto	u1091
	goto	u1090
u1091:
	goto	l1701
u1090:
	line	68
	
l1697:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftmul)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftmul+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftmul+2)),c

	goto	l631
	
l1699:
	goto	l631
	
l630:
	line	69
	
l1701:
	movff	(c:___ftmul@f2+2),??___ftmul+0+0
	clrf	(??___ftmul+0+0+1)&0ffh,c
	clrf	(??___ftmul+0+0+2)&0ffh,c
	rlcf	((c:___ftmul@f2+1)),c,w
	rlcf	(??___ftmul+0+0)&0ffh,c
	bnc	u1101
	bsf	(??___ftmul+0+0+1)&0ffh,c,0
u1101:
	movf	(??___ftmul+0+0),c,w
	movwf	((c:___ftmul@sign)),c
	tstfsz	((c:___ftmul@sign))&0ffh
	goto	u1111
	goto	u1110
u1111:
	goto	l1707
u1110:
	line	70
	
l1703:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftmul)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftmul+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftmul+2)),c

	goto	l631
	
l1705:
	goto	l631
	
l632:
	line	71
	
l1707:
	movf	((c:___ftmul@sign)),c,w
	addlw	low(07Bh)
	addwf	((c:___ftmul@exp)),c
	line	72
	
l1709:
	movff	0+2+(c:___ftmul@f1),(c:___ftmul@sign)
	line	73
	movf	(0+2+(c:___ftmul@f2)),c,w
	xorwf	((c:___ftmul@sign)),c
	line	74
	movlw	(080h)&0ffh
	andwf	((c:___ftmul@sign)),c
	line	75
	
l1711:
	bsf	(0+(15/8)+(c:___ftmul@f1)),c,(15)&7
	line	77
	
l1713:
	bsf	(0+(15/8)+(c:___ftmul@f2)),c,(15)&7
	line	78
	
l1715:
	movlw	low(0FFFFh)
	andwf	((c:___ftmul@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftmul@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftmul@f2+2)),c

	line	79
	
l1717:
	movlw	low(0)
	movwf	((c:___ftmul@f3_as_product)),c
	movlw	high(0)
	movwf	((c:___ftmul@f3_as_product+1)),c
	movlw	low highword(0)
	movwf	((c:___ftmul@f3_as_product+2)),c

	line	134
	
l1719:
	movlw	low(07h)
	movwf	((c:___ftmul@cntr)),c
	goto	l1721
	line	135
	
l633:
	line	136
	
l1721:
	
	btfss	((c:___ftmul@f1)),c,(0)&7
	goto	u1121
	goto	u1120
u1121:
	goto	l1725
u1120:
	line	137
	
l1723:
	movf	((c:___ftmul@f2)),c,w
	addwf	((c:___ftmul@f3_as_product)),c
	movf	((c:___ftmul@f2+1)),c,w
	addwfc	((c:___ftmul@f3_as_product+1)),c
	movf	((c:___ftmul@f2+2)),c,w
	addwfc	((c:___ftmul@f3_as_product+2)),c

	goto	l1725
	
l634:
	line	138
	
l1725:
	bcf	status,0
	rrcf	((c:___ftmul@f1+2)),c
	rrcf	((c:___ftmul@f1+1)),c
	rrcf	((c:___ftmul@f1)),c
	line	139
	bcf	status,0
	rlcf	((c:___ftmul@f2)),c
	rlcf	((c:___ftmul@f2+1)),c
	rlcf	((c:___ftmul@f2+2)),c
	line	140
	
l1727:
	decfsz	((c:___ftmul@cntr)),c
	
	goto	l1721
	goto	l1729
	
l635:
	line	143
	
l1729:
	movlw	low(09h)
	movwf	((c:___ftmul@cntr)),c
	goto	l1731
	line	144
	
l636:
	line	145
	
l1731:
	
	btfss	((c:___ftmul@f1)),c,(0)&7
	goto	u1131
	goto	u1130
u1131:
	goto	l1735
u1130:
	line	146
	
l1733:
	movf	((c:___ftmul@f2)),c,w
	addwf	((c:___ftmul@f3_as_product)),c
	movf	((c:___ftmul@f2+1)),c,w
	addwfc	((c:___ftmul@f3_as_product+1)),c
	movf	((c:___ftmul@f2+2)),c,w
	addwfc	((c:___ftmul@f3_as_product+2)),c

	goto	l1735
	
l637:
	line	147
	
l1735:
	bcf	status,0
	rrcf	((c:___ftmul@f1+2)),c
	rrcf	((c:___ftmul@f1+1)),c
	rrcf	((c:___ftmul@f1)),c
	line	148
	bcf	status,0
	rrcf	((c:___ftmul@f3_as_product+2)),c
	rrcf	((c:___ftmul@f3_as_product+1)),c
	rrcf	((c:___ftmul@f3_as_product)),c
	line	149
	
l1737:
	decfsz	((c:___ftmul@cntr)),c
	
	goto	l1731
	goto	l1739
	
l638:
	line	156
	
l1739:
	movff	(c:___ftmul@f3_as_product),(c:___ftpack@arg)
	movff	(c:___ftmul@f3_as_product+1),(c:___ftpack@arg+1)
	movff	(c:___ftmul@f3_as_product+2),(c:___ftpack@arg+2)
	movff	(c:___ftmul@exp),(c:___ftpack@exp)
	movff	(c:___ftmul@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftmul)
	movff	1+?___ftpack,(c:?___ftmul+1)
	movff	2+?___ftpack,(c:?___ftmul+2)
	goto	l631
	
l1741:
	line	157
	
l631:
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 4 in file "/opt/microchip/xc8/v1.32/sources/common/ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    6[COMRAM] float 
;;  ff2             3    9[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_atan2
;;		_sqrt
;;		_atan
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.32/sources/common/ftge.c"
	line	4
global __ptext13
__ptext13:
psect	text13
	file	"/opt/microchip/xc8/v1.32/sources/common/ftge.c"
	line	4
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:
;incstack = 0
	opt	stack 27
	line	6
	
l1803:
	
	btfss	((c:___ftge@ff1+2)),c,(23)&7
	goto	u1211
	goto	u1210
u1211:
	goto	l1807
u1210:
	line	7
	
l1805:
	movff	(c:___ftge@ff1),??___ftge+0+0
	movff	(c:___ftge@ff1+1),??___ftge+0+0+1
	movff	(c:___ftge@ff1+2),??___ftge+0+0+2
	comf	(??___ftge+0+0),c
	comf	(??___ftge+0+1),c
	comf	(??___ftge+0+2),c
	incf	(??___ftge+0+0),c
	movlw	0
	addwfc	(??___ftge+0+1),c
	addwfc	(??___ftge+0+2),c

	movlw	low(0800000h)
	addwf	(??___ftge+0+0),c,w
	movwf	((c:___ftge@ff1)),c
	movlw	0
	addwfc	(??___ftge+0+1),c,w
	movwf	1+((c:___ftge@ff1)),c
	movlw	080h
	addwfc	(??___ftge+0+2),c,w
	movwf	2+((c:___ftge@ff1)),c
	goto	l1807
	
l623:
	line	8
	
l1807:
	
	btfss	((c:___ftge@ff2+2)),c,(23)&7
	goto	u1221
	goto	u1220
u1221:
	goto	l1811
u1220:
	line	9
	
l1809:
	movff	(c:___ftge@ff2),??___ftge+0+0
	movff	(c:___ftge@ff2+1),??___ftge+0+0+1
	movff	(c:___ftge@ff2+2),??___ftge+0+0+2
	comf	(??___ftge+0+0),c
	comf	(??___ftge+0+1),c
	comf	(??___ftge+0+2),c
	incf	(??___ftge+0+0),c
	movlw	0
	addwfc	(??___ftge+0+1),c
	addwfc	(??___ftge+0+2),c

	movlw	low(0800000h)
	addwf	(??___ftge+0+0),c,w
	movwf	((c:___ftge@ff2)),c
	movlw	0
	addwfc	(??___ftge+0+1),c,w
	movwf	1+((c:___ftge@ff2)),c
	movlw	080h
	addwfc	(??___ftge+0+2),c,w
	movwf	2+((c:___ftge@ff2)),c
	goto	l1811
	
l624:
	line	10
	
l1811:
	movlw	low(0800000h)
	xorwf	((c:___ftge@ff1)),c
	movlw	high(0800000h)
	xorwf	((c:___ftge@ff1+1)),c
	movlw	low highword(0800000h)
	xorwf	((c:___ftge@ff1+2)),c

	line	11
	
l1813:
	movlw	low(0800000h)
	xorwf	((c:___ftge@ff2)),c
	movlw	high(0800000h)
	xorwf	((c:___ftge@ff2+1)),c
	movlw	low highword(0800000h)
	xorwf	((c:___ftge@ff2+2)),c

	line	12
	movf	((c:___ftge@ff2)),c,w
	subwf	((c:___ftge@ff1)),c,w
	movf	((c:___ftge@ff2+1)),c,w
	subwfb	((c:___ftge@ff1+1)),c,w
	movf	((c:___ftge@ff2+2)),c,w
	subwfb	((c:___ftge@ff1+2)),c,w
	btfsc	status,0
	goto	u1231
	goto	u1230
u1231:
	goto	l1817
u1230:
	
l1815:
	bcf	status,0
	goto	l625
	
l1581:
	
l1817:
	bsf	status,0
	goto	l625
	
l1583:
	goto	l625
	
l1819:
	line	13
	
l625:
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 49 in file "/opt/microchip/xc8/v1.32/sources/common/ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f1              3   63[COMRAM] float 
;;  f2              3   66[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   73[COMRAM] float 
;;  sign            1   77[COMRAM] unsigned char 
;;  exp             1   76[COMRAM] unsigned char 
;;  cntr            1   72[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   63[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		__roll
;;		__pitch
;;		_atan2
;;		_atan
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.32/sources/common/ftdiv.c"
	line	49
global __ptext14
__ptext14:
psect	text14
	file	"/opt/microchip/xc8/v1.32/sources/common/ftdiv.c"
	line	49
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:
;incstack = 0
	opt	stack 26
	line	55
	
l1751:
	movff	(c:___ftdiv@f1+2),??___ftdiv+0+0
	clrf	(??___ftdiv+0+0+1)&0ffh,c
	clrf	(??___ftdiv+0+0+2)&0ffh,c
	rlcf	((c:___ftdiv@f1+1)),c,w
	rlcf	(??___ftdiv+0+0)&0ffh,c
	bnc	u1151
	bsf	(??___ftdiv+0+0+1)&0ffh,c,0
u1151:
	movf	(??___ftdiv+0+0),c,w
	movwf	((c:___ftdiv@exp)),c
	tstfsz	((c:___ftdiv@exp))&0ffh
	goto	u1161
	goto	u1160
u1161:
	goto	l1757
u1160:
	line	56
	
l1753:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftdiv)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+2)),c

	goto	l616
	
l1755:
	goto	l616
	
l615:
	line	57
	
l1757:
	movff	(c:___ftdiv@f2+2),??___ftdiv+0+0
	clrf	(??___ftdiv+0+0+1)&0ffh,c
	clrf	(??___ftdiv+0+0+2)&0ffh,c
	rlcf	((c:___ftdiv@f2+1)),c,w
	rlcf	(??___ftdiv+0+0)&0ffh,c
	bnc	u1171
	bsf	(??___ftdiv+0+0+1)&0ffh,c,0
u1171:
	movf	(??___ftdiv+0+0),c,w
	movwf	((c:___ftdiv@sign)),c
	tstfsz	((c:___ftdiv@sign))&0ffh
	goto	u1181
	goto	u1180
u1181:
	goto	l1763
u1180:
	line	58
	
l1759:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftdiv)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+2)),c

	goto	l616
	
l1761:
	goto	l616
	
l617:
	line	59
	
l1763:
	movlw	low(0)
	movwf	((c:___ftdiv@f3)),c
	movlw	high(0)
	movwf	((c:___ftdiv@f3+1)),c
	movlw	low highword(0)
	movwf	((c:___ftdiv@f3+2)),c

	line	60
	
l1765:
	movf	((c:___ftdiv@sign)),c,w
	addlw	low(089h)
	subwf	((c:___ftdiv@exp)),c
	line	61
	
l1767:
	movff	0+2+(c:___ftdiv@f1),(c:___ftdiv@sign)
	line	62
	
l1769:
	movf	(0+2+(c:___ftdiv@f2)),c,w
	xorwf	((c:___ftdiv@sign)),c
	line	63
	
l1771:
	movlw	(080h)&0ffh
	andwf	((c:___ftdiv@sign)),c
	line	64
	
l1773:
	bsf	(0+(15/8)+(c:___ftdiv@f1)),c,(15)&7
	line	65
	
l1775:
	movlw	low(0FFFFh)
	andwf	((c:___ftdiv@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftdiv@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftdiv@f1+2)),c

	line	66
	
l1777:
	bsf	(0+(15/8)+(c:___ftdiv@f2)),c,(15)&7
	line	67
	
l1779:
	movlw	low(0FFFFh)
	andwf	((c:___ftdiv@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftdiv@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftdiv@f2+2)),c

	line	68
	
l1781:
	movlw	low(018h)
	movwf	((c:___ftdiv@cntr)),c
	goto	l1783
	line	69
	
l618:
	line	70
	
l1783:
	bcf	status,0
	rlcf	((c:___ftdiv@f3)),c
	rlcf	((c:___ftdiv@f3+1)),c
	rlcf	((c:___ftdiv@f3+2)),c
	line	71
	
l1785:
	movf	((c:___ftdiv@f2)),c,w
	subwf	((c:___ftdiv@f1)),c,w
	movf	((c:___ftdiv@f2+1)),c,w
	subwfb	((c:___ftdiv@f1+1)),c,w
	movf	((c:___ftdiv@f2+2)),c,w
	subwfb	((c:___ftdiv@f1+2)),c,w
	btfss	status,0
	goto	u1191
	goto	u1190
u1191:
	goto	l619
u1190:
	line	72
	
l1787:
	movf	((c:___ftdiv@f2)),c,w
	subwf	((c:___ftdiv@f1)),c
	movf	((c:___ftdiv@f2+1)),c,w
	subwfb	((c:___ftdiv@f1+1)),c
	movf	((c:___ftdiv@f2+2)),c,w
	subwfb	((c:___ftdiv@f1+2)),c

	line	73
	
l1789:
	bsf	(0+(0/8)+(c:___ftdiv@f3)),c,(0)&7
	line	74
	
l619:
	line	75
	bcf	status,0
	rlcf	((c:___ftdiv@f1)),c
	rlcf	((c:___ftdiv@f1+1)),c
	rlcf	((c:___ftdiv@f1+2)),c
	line	76
	
l1791:
	decfsz	((c:___ftdiv@cntr)),c
	
	goto	l1783
	goto	l1793
	
l620:
	line	77
	
l1793:
	movff	(c:___ftdiv@f3),(c:___ftpack@arg)
	movff	(c:___ftdiv@f3+1),(c:___ftpack@arg+1)
	movff	(c:___ftdiv@f3+2),(c:___ftpack@arg+2)
	movff	(c:___ftdiv@exp),(c:___ftpack@exp)
	movff	(c:___ftdiv@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftdiv)
	movff	1+?___ftpack,(c:?___ftdiv+1)
	movff	2+?___ftpack,(c:?___ftdiv+2)
	goto	l616
	
l1795:
	line	78
	
l616:
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___ftsub

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 20 in file "/opt/microchip/xc8/v1.32/sources/common/ftsub.c"
;; Parameters:    Size  Location     Type
;;  f1              3   38[COMRAM] float 
;;  f2              3   41[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   38[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		_atan2
;;		_sqrt
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.32/sources/common/ftsub.c"
	line	20
global __ptext15
__ptext15:
psect	text15
	file	"/opt/microchip/xc8/v1.32/sources/common/ftsub.c"
	line	20
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:
;incstack = 0
	opt	stack 26
	line	23
	
l1833:
	movlw	low(0800000h)
	xorwf	((c:___ftsub@f2)),c
	movlw	high(0800000h)
	xorwf	((c:___ftsub@f2+1)),c
	movlw	low highword(0800000h)
	xorwf	((c:___ftsub@f2+2)),c

	line	24
	
l1835:
	movff	(c:___ftsub@f1),(c:___ftadd@f1)
	movff	(c:___ftsub@f1+1),(c:___ftadd@f1+1)
	movff	(c:___ftsub@f1+2),(c:___ftadd@f1+2)
	movff	(c:___ftsub@f2),(c:___ftadd@f2)
	movff	(c:___ftsub@f2+1),(c:___ftadd@f2+1)
	movff	(c:___ftsub@f2+2),(c:___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(c:?___ftsub)
	movff	1+?___ftadd,(c:?___ftsub+1)
	movff	2+?___ftadd,(c:?___ftsub+2)
	goto	l647
	
l1837:
	line	25
	
l647:
	return
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
	signat	___ftsub,8315
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "/opt/microchip/xc8/v1.32/sources/common/ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   26[COMRAM] float 
;;  f2              3   29[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   37[COMRAM] unsigned char 
;;  exp2            1   36[COMRAM] unsigned char 
;;  sign            1   35[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   26[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_atan2
;;		___ftsub
;;		_atan
;;		_eval_poly
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.32/sources/common/ftadd.c"
	line	86
global __ptext16
__ptext16:
psect	text16
	file	"/opt/microchip/xc8/v1.32/sources/common/ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:
;incstack = 0
	opt	stack 25
	line	90
	
l1625:
	movff	(c:___ftadd@f1+2),??___ftadd+0+0
	clrf	(??___ftadd+0+0+1)&0ffh,c
	clrf	(??___ftadd+0+0+2)&0ffh,c
	rlcf	((c:___ftadd@f1+1)),c,w
	rlcf	(??___ftadd+0+0)&0ffh,c
	bnc	u871
	bsf	(??___ftadd+0+0+1)&0ffh,c,0
u871:
	movf	(??___ftadd+0+0),c,w
	movwf	((c:___ftadd@exp1)),c
	line	91
	movff	(c:___ftadd@f2+2),??___ftadd+0+0
	clrf	(??___ftadd+0+0+1)&0ffh,c
	clrf	(??___ftadd+0+0+2)&0ffh,c
	rlcf	((c:___ftadd@f2+1)),c,w
	rlcf	(??___ftadd+0+0)&0ffh,c
	bnc	u881
	bsf	(??___ftadd+0+0+1)&0ffh,c,0
u881:
	movf	(??___ftadd+0+0),c,w
	movwf	((c:___ftadd@exp2)),c
	line	92
	
l1627:
	movf	((c:___ftadd@exp1)),c,w
	btfsc	status,2
	goto	u891
	goto	u890
u891:
	goto	l584
u890:
	
l1629:
	movf	((c:___ftadd@exp2)),c,w
	subwf	((c:___ftadd@exp1)),c,w
	btfsc	status,0
	goto	u901
	goto	u900
u901:
	goto	l1633
u900:
	
l1631:
	movf	((c:___ftadd@exp1)),c,w
	sublw	0
	addwf	((c:___ftadd@exp2)),c,w
	movwf	(??___ftadd+0+0)&0ffh,c
	movlw	(019h)&0ffh
	subwf	((??___ftadd+0+0)),c,w
	btfss	status,0
	goto	u911
	goto	u910
u911:
	goto	l1633
u910:
	
l584:
	line	93
	movff	(c:___ftadd@f2),(c:?___ftadd)
	movff	(c:___ftadd@f2+1),(c:?___ftadd+1)
	movff	(c:___ftadd@f2+2),(c:?___ftadd+2)
	goto	l585
	
l582:
	line	94
	
l1633:
	movf	((c:___ftadd@exp2)),c,w
	btfsc	status,2
	goto	u921
	goto	u920
u921:
	goto	l588
u920:
	
l1635:
	movf	((c:___ftadd@exp1)),c,w
	subwf	((c:___ftadd@exp2)),c,w
	btfsc	status,0
	goto	u931
	goto	u930
u931:
	goto	l1639
u930:
	
l1637:
	movf	((c:___ftadd@exp2)),c,w
	sublw	0
	addwf	((c:___ftadd@exp1)),c,w
	movwf	(??___ftadd+0+0)&0ffh,c
	movlw	(019h)&0ffh
	subwf	((??___ftadd+0+0)),c,w
	btfss	status,0
	goto	u941
	goto	u940
u941:
	goto	l1639
u940:
	
l588:
	line	95
	movff	(c:___ftadd@f1),(c:?___ftadd)
	movff	(c:___ftadd@f1+1),(c:?___ftadd+1)
	movff	(c:___ftadd@f1+2),(c:?___ftadd+2)
	goto	l585
	
l586:
	line	96
	
l1639:
	movlw	low(06h)
	movwf	((c:___ftadd@sign)),c
	line	97
	
l1641:
	
	btfss	((c:___ftadd@f1+2)),c,(23)&7
	goto	u951
	goto	u950
u951:
	goto	l1645
u950:
	line	98
	
l1643:
	bsf	(0+(7/8)+(c:___ftadd@sign)),c,(7)&7
	goto	l1645
	
l589:
	line	99
	
l1645:
	
	btfss	((c:___ftadd@f2+2)),c,(23)&7
	goto	u961
	goto	u960
u961:
	goto	l590
u960:
	line	100
	
l1647:
	bsf	(0+(6/8)+(c:___ftadd@sign)),c,(6)&7
	
l590:
	line	101
	bsf	(0+(15/8)+(c:___ftadd@f1)),c,(15)&7
	line	102
	
l1649:
	movlw	low(0FFFFh)
	andwf	((c:___ftadd@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftadd@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftadd@f1+2)),c

	line	103
	bsf	(0+(15/8)+(c:___ftadd@f2)),c,(15)&7
	line	104
	
l1651:
	movlw	low(0FFFFh)
	andwf	((c:___ftadd@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftadd@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftadd@f2+2)),c

	line	106
	
l1653:
	movf	((c:___ftadd@exp2)),c,w
	subwf	((c:___ftadd@exp1)),c,w
	btfsc	status,0
	goto	u971
	goto	u970
u971:
	goto	l1665
u970:
	goto	l1655
	line	109
	
l592:
	line	110
	
l1655:
	bcf	status,0
	rlcf	((c:___ftadd@f2)),c
	rlcf	((c:___ftadd@f2+1)),c
	rlcf	((c:___ftadd@f2+2)),c
	line	111
	decf	((c:___ftadd@exp2)),c
	line	112
	
l1657:
	movf	((c:___ftadd@exp2)),c,w
	xorwf	((c:___ftadd@exp1)),c,w
	btfsc	status,2
	goto	u981
	goto	u980
u981:
	goto	l1663
u980:
	
l1659:
	decf	((c:___ftadd@sign)),c
	movff	(c:___ftadd@sign),??___ftadd+0+0
	movlw	07h
	andwf	(??___ftadd+0+0),c
	btfss	status,2
	goto	u991
	goto	u990
u991:
	goto	l1655
u990:
	goto	l1663
	
l594:
	goto	l1663
	
l595:
	line	113
	goto	l1663
	
l597:
	line	114
	
l1661:
	bcf	status,0
	rrcf	((c:___ftadd@f1+2)),c
	rrcf	((c:___ftadd@f1+1)),c
	rrcf	((c:___ftadd@f1)),c
	line	115
	incf	((c:___ftadd@exp1)),c
	goto	l1663
	line	116
	
l596:
	line	113
	
l1663:
	movf	((c:___ftadd@exp2)),c,w
	cpfseq	((c:___ftadd@exp1)),c
	goto	u1001
	goto	u1000
u1001:
	goto	l1661
u1000:
	goto	l599
	
l598:
	line	117
	goto	l599
	
l591:
	
l1665:
	movf	((c:___ftadd@exp1)),c,w
	subwf	((c:___ftadd@exp2)),c,w
	btfsc	status,0
	goto	u1011
	goto	u1010
u1011:
	goto	l599
u1010:
	goto	l1667
	line	120
	
l601:
	line	121
	
l1667:
	bcf	status,0
	rlcf	((c:___ftadd@f1)),c
	rlcf	((c:___ftadd@f1+1)),c
	rlcf	((c:___ftadd@f1+2)),c
	line	122
	decf	((c:___ftadd@exp1)),c
	line	123
	
l1669:
	movf	((c:___ftadd@exp2)),c,w
	xorwf	((c:___ftadd@exp1)),c,w
	btfsc	status,2
	goto	u1021
	goto	u1020
u1021:
	goto	l1675
u1020:
	
l1671:
	decf	((c:___ftadd@sign)),c
	movff	(c:___ftadd@sign),??___ftadd+0+0
	movlw	07h
	andwf	(??___ftadd+0+0),c
	btfss	status,2
	goto	u1031
	goto	u1030
u1031:
	goto	l1667
u1030:
	goto	l1675
	
l603:
	goto	l1675
	
l604:
	line	124
	goto	l1675
	
l606:
	line	125
	
l1673:
	bcf	status,0
	rrcf	((c:___ftadd@f2+2)),c
	rrcf	((c:___ftadd@f2+1)),c
	rrcf	((c:___ftadd@f2)),c
	line	126
	incf	((c:___ftadd@exp2)),c
	goto	l1675
	line	127
	
l605:
	line	124
	
l1675:
	movf	((c:___ftadd@exp2)),c,w
	cpfseq	((c:___ftadd@exp1)),c
	goto	u1041
	goto	u1040
u1041:
	goto	l1673
u1040:
	goto	l599
	
l607:
	goto	l599
	line	128
	
l600:
	line	129
	
l599:
	
	btfss	((c:___ftadd@sign)),c,(7)&7
	goto	u1051
	goto	u1050
u1051:
	goto	l608
u1050:
	line	131
	
l1677:
	movlw	low(0FFFFFFh)
	xorwf	((c:___ftadd@f1)),c
	movlw	high(0FFFFFFh)
	xorwf	((c:___ftadd@f1+1)),c
	movlw	low highword(0FFFFFFh)
	xorwf	((c:___ftadd@f1+2)),c

	line	132
	movlw	low(01h)
	addwf	((c:___ftadd@f1)),c
	movlw	high(01h)
	addwfc	((c:___ftadd@f1+1)),c
	movlw	low highword(01h)
	addwfc	((c:___ftadd@f1+2)),c

	line	133
	
l608:
	line	134
	
	btfss	((c:___ftadd@sign)),c,(6)&7
	goto	u1061
	goto	u1060
u1061:
	goto	l1681
u1060:
	line	136
	
l1679:
	movlw	low(0FFFFFFh)
	xorwf	((c:___ftadd@f2)),c
	movlw	high(0FFFFFFh)
	xorwf	((c:___ftadd@f2+1)),c
	movlw	low highword(0FFFFFFh)
	xorwf	((c:___ftadd@f2+2)),c

	line	137
	movlw	low(01h)
	addwf	((c:___ftadd@f2)),c
	movlw	high(01h)
	addwfc	((c:___ftadd@f2+1)),c
	movlw	low highword(01h)
	addwfc	((c:___ftadd@f2+2)),c

	goto	l1681
	line	138
	
l609:
	line	139
	
l1681:
	movlw	low(0)
	movwf	((c:___ftadd@sign)),c
	line	140
	
l1683:
	movf	((c:___ftadd@f1)),c,w
	addwf	((c:___ftadd@f2)),c
	movf	((c:___ftadd@f1+1)),c,w
	addwfc	((c:___ftadd@f2+1)),c
	movf	((c:___ftadd@f1+2)),c,w
	addwfc	((c:___ftadd@f2+2)),c

	line	141
	
l1685:
	
	btfss	((c:___ftadd@f2+2)),c,(23)&7
	goto	u1071
	goto	u1070
u1071:
	goto	l1691
u1070:
	line	142
	
l1687:
	movlw	low(0FFFFFFh)
	xorwf	((c:___ftadd@f2)),c
	movlw	high(0FFFFFFh)
	xorwf	((c:___ftadd@f2+1)),c
	movlw	low highword(0FFFFFFh)
	xorwf	((c:___ftadd@f2+2)),c

	line	143
	movlw	low(01h)
	addwf	((c:___ftadd@f2)),c
	movlw	high(01h)
	addwfc	((c:___ftadd@f2+1)),c
	movlw	low highword(01h)
	addwfc	((c:___ftadd@f2+2)),c

	line	144
	
l1689:
	movlw	low(01h)
	movwf	((c:___ftadd@sign)),c
	goto	l1691
	line	145
	
l610:
	line	146
	
l1691:
	movff	(c:___ftadd@f2),(c:___ftpack@arg)
	movff	(c:___ftadd@f2+1),(c:___ftpack@arg+1)
	movff	(c:___ftadd@f2+2),(c:___ftpack@arg+2)
	movff	(c:___ftadd@exp1),(c:___ftpack@exp)
	movff	(c:___ftadd@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftadd)
	movff	1+?___ftpack,(c:?___ftadd+1)
	movff	2+?___ftpack,(c:?___ftadd+2)
	goto	l585
	
l1693:
	line	148
	
l585:
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	___lwtoft

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 28 in file "/opt/microchip/xc8/v1.32/sources/common/lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		__roll
;;		__pitch
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.32/sources/common/lwtoft.c"
	line	28
global __ptext17
__ptext17:
psect	text17
	file	"/opt/microchip/xc8/v1.32/sources/common/lwtoft.c"
	line	28
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:
;incstack = 0
	opt	stack 28
	line	30
	
l2049:
	movff	(c:___lwtoft@c),(c:___ftpack@arg)
	movff	(c:___lwtoft@c+1),(c:___ftpack@arg+1)
	clrf	((c:___ftpack@arg+2)),c
	movlw	low(08Eh)
	movwf	((c:___ftpack@exp)),c
	movlw	low(0)
	movwf	((c:___ftpack@sign)),c
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___lwtoft)
	movff	1+?___ftpack,(c:?___lwtoft+1)
	movff	2+?___ftpack,(c:?___lwtoft+2)
	goto	l780
	
l2051:
	line	31
	
l780:
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "/opt/microchip/xc8/v1.32/sources/common/float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMRAM] unsigned um
;;  exp             1    3[COMRAM] unsigned char 
;;  sign            1    4[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lwtoft
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.32/sources/common/float.c"
	line	62
global __ptext18
__ptext18:
psect	text18
	file	"/opt/microchip/xc8/v1.32/sources/common/float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:
;incstack = 0
	opt	stack 25
	line	64
	
l1585:
	movf	((c:___ftpack@exp)),c,w
	btfsc	status,2
	goto	u801
	goto	u800
u801:
	goto	l1589
u800:
	
l1587:
	movf	((c:___ftpack@arg)),c,w
	iorwf	((c:___ftpack@arg+1)),c,w
	iorwf	((c:___ftpack@arg+2)),c,w
	btfss	status,2
	goto	u811
	goto	u810
u811:
	goto	l1595
u810:
	goto	l1589
	
l546:
	line	65
	
l1589:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftpack)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftpack+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftpack+2)),c

	goto	l547
	
l1591:
	goto	l547
	
l544:
	line	66
	goto	l1595
	
l549:
	line	67
	
l1593:
	incf	((c:___ftpack@exp)),c
	line	68
	bcf	status,0
	rrcf	((c:___ftpack@arg+2)),c
	rrcf	((c:___ftpack@arg+1)),c
	rrcf	((c:___ftpack@arg)),c
	goto	l1595
	line	69
	
l548:
	line	66
	
l1595:
	movlw	low(0FE0000h)
	andwf	((c:___ftpack@arg)),c,w
	movwf	(??___ftpack+0+0)&0ffh,c
	movlw	0
	andwf	((c:___ftpack@arg+1)),c,w
	movwf	1+(??___ftpack+0+0)&0ffh,c
	movlw	0FEh
	andwf	((c:___ftpack@arg+2)),c,w
	movwf	2+(??___ftpack+0+0)&0ffh,c

	movf	(??___ftpack+0+0),c,w
	iorwf	(??___ftpack+0+1),c,w
	iorwf	(??___ftpack+0+2),c,w
	btfss	status,2
	goto	u821
	goto	u820
u821:
	goto	l1593
u820:
	goto	l1601
	
l550:
	line	70
	goto	l1601
	
l552:
	line	71
	
l1597:
	incf	((c:___ftpack@exp)),c
	line	72
	
l1599:
	movlw	low(01h)
	addwf	((c:___ftpack@arg)),c
	movlw	high(01h)
	addwfc	((c:___ftpack@arg+1)),c
	movlw	low highword(01h)
	addwfc	((c:___ftpack@arg+2)),c

	line	73
	bcf	status,0
	rrcf	((c:___ftpack@arg+2)),c
	rrcf	((c:___ftpack@arg+1)),c
	rrcf	((c:___ftpack@arg)),c
	goto	l1601
	line	74
	
l551:
	line	70
	
l1601:
	movlw	low(0FF0000h)
	andwf	((c:___ftpack@arg)),c,w
	movwf	(??___ftpack+0+0)&0ffh,c
	movlw	0
	andwf	((c:___ftpack@arg+1)),c,w
	movwf	1+(??___ftpack+0+0)&0ffh,c
	movlw	0FFh
	andwf	((c:___ftpack@arg+2)),c,w
	movwf	2+(??___ftpack+0+0)&0ffh,c

	movf	(??___ftpack+0+0),c,w
	iorwf	(??___ftpack+0+1),c,w
	iorwf	(??___ftpack+0+2),c,w
	btfss	status,2
	goto	u831
	goto	u830
u831:
	goto	l1597
u830:
	goto	l1605
	
l553:
	line	75
	goto	l1605
	
l555:
	line	76
	
l1603:
	decf	((c:___ftpack@exp)),c
	line	77
	bcf	status,0
	rlcf	((c:___ftpack@arg)),c
	rlcf	((c:___ftpack@arg+1)),c
	rlcf	((c:___ftpack@arg+2)),c
	goto	l1605
	line	78
	
l554:
	line	75
	
l1605:
	
	btfss	((c:___ftpack@arg+1)),c,(15)&7
	goto	u841
	goto	u840
u841:
	goto	l1603
u840:
	
l556:
	line	79
	
	btfsc	((c:___ftpack@exp)),c,(0)&7
	goto	u851
	goto	u850
u851:
	goto	l1609
u850:
	line	80
	
l1607:
	bcf	(0+(15/8)+(c:___ftpack@arg)),c,(15)&7
	goto	l1609
	
l557:
	line	81
	
l1609:
	bcf status,0
	rrcf	((c:___ftpack@exp)),c

	line	82
	movf	((c:___ftpack@exp)),c,w
	iorwf	((c:___ftpack@arg+2)),c

	line	83
	
l1611:
	movf	((c:___ftpack@sign)),c,w
	btfsc	status,2
	goto	u861
	goto	u860
u861:
	goto	l1615
u860:
	line	84
	
l1613:
	bsf	(0+(23/8)+(c:___ftpack@arg)),c,(23)&7
	goto	l1615
	
l558:
	line	85
	
l1615:
	movff	(c:___ftpack@arg),(c:?___ftpack)
	movff	(c:___ftpack@arg+1),(c:?___ftpack+1)
	movff	(c:___ftpack@arg+2),(c:?___ftpack+2)
	goto	l547
	
l1617:
	line	86
	
l547:
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
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
psect	text19,class=CODE,space=0,reloc=2
	file	"./XLCD/openxlcd.c"
	line	21
global __ptext19
__ptext19:
psect	text19
	file	"./XLCD/openxlcd.c"
	line	21
	global	__size_of_OpenXLCD
	__size_of_OpenXLCD	equ	__end_of_OpenXLCD-_OpenXLCD
	
_OpenXLCD:
;incstack = 0
	opt	stack 27
	movwf	((c:OpenXLCD@lcdtype)),c
	line	30
	
l2067:
	movlw	(0Fh)&0ffh
	andwf	((c:3971)),c	;volatile
	line	31
	movlw	(0F0h)&0ffh
	iorwf	((c:3989)),c	;volatile
	line	37
	
l2069:
	bcf	((c:3990)),c,0	;volatile
	line	38
	
l2071:
	bcf	((c:3990)),c,1	;volatile
	line	39
	
l2073:
	bcf	((c:3990)),c,2	;volatile
	line	40
	
l2075:
	bcf	((c:3981)),c,0	;volatile
	line	41
	
l2077:
	bcf	((c:3981)),c,1	;volatile
	line	42
	
l2079:
	bcf	((c:3981)),c,2	;volatile
	line	45
	
l2081:
	call	_DelayPORXLCD	;wreg free
	line	53
	
l2083:
	movlw	(0Fh)&0ffh
	andwf	((c:3989)),c	;volatile
	line	54
	
l2085:
	movlw	(0Fh)&0ffh
	andwf	((c:3971)),c	;volatile
	line	55
	
l2087:
	bsf	(0+(5/8)+(c:3971)),c,(5)&7	;volatile
	line	62
	
l2089:
	bsf	((c:3981)),c,2	;volatile
	line	63
	
l2091:
	call	_DelayFor18TCY	;wreg free
	line	64
	
l2093:
	bcf	((c:3981)),c,2	;volatile
	line	67
	
l2095:
	call	_DelayXLCD	;wreg free
	line	74
	
l2097:
	movlw	(0Fh)&0ffh
	andwf	((c:3971)),c	;volatile
	line	75
	
l2099:
	bsf	(0+(5/8)+(c:3971)),c,(5)&7	;volatile
	line	81
	
l2101:
	bsf	((c:3981)),c,2	;volatile
	line	82
	call	_DelayFor18TCY	;wreg free
	line	83
	
l2103:
	bcf	((c:3981)),c,2	;volatile
	line	86
	call	_DelayXLCD	;wreg free
	line	93
	
l2105:
	movlw	(0Fh)&0ffh
	andwf	((c:3971)),c	;volatile
	line	94
	
l2107:
	bsf	(0+(5/8)+(c:3971)),c,(5)&7	;volatile
	line	100
	
l2109:
	bsf	((c:3981)),c,2	;volatile
	line	101
	
l2111:
	call	_DelayFor18TCY	;wreg free
	line	102
	
l2113:
	bcf	((c:3981)),c,2	;volatile
	line	108
	
l2115:
	movlw	(0F0h)&0ffh
	iorwf	((c:3989)),c	;volatile
	line	115
	goto	l2117
	
l84:
	goto	l2117
	
l83:
	
l2117:
	call	_BusyXLCD	;wreg free
	iorlw	0
	btfss	status,2
	goto	u1411
	goto	u1410
u1411:
	goto	l2117
u1410:
	goto	l2119
	
l85:
	line	116
	
l2119:
	movf	((c:OpenXLCD@lcdtype)),c,w
	
	call	_WriteCmdXLCD
	line	119
	goto	l2121
	
l87:
	goto	l2121
	
l86:
	
l2121:
	call	_BusyXLCD	;wreg free
	iorlw	0
	btfss	status,2
	goto	u1421
	goto	u1420
u1421:
	goto	l2121
u1420:
	goto	l2123
	
l88:
	line	120
	
l2123:
	movlw	(08h)&0ffh
	
	call	_WriteCmdXLCD
	line	121
	goto	l2125
	
l90:
	goto	l2125
	
l89:
	
l2125:
	call	_BusyXLCD	;wreg free
	iorlw	0
	btfss	status,2
	goto	u1431
	goto	u1430
u1431:
	goto	l2125
u1430:
	goto	l2127
	
l91:
	line	122
	
l2127:
	movlw	(0Fh)&0ffh
	
	call	_WriteCmdXLCD
	line	125
	goto	l2129
	
l93:
	goto	l2129
	
l92:
	
l2129:
	call	_BusyXLCD	;wreg free
	iorlw	0
	btfss	status,2
	goto	u1441
	goto	u1440
u1441:
	goto	l2129
u1440:
	goto	l2131
	
l94:
	line	126
	
l2131:
	movlw	(01h)&0ffh
	
	call	_WriteCmdXLCD
	line	129
	goto	l2133
	
l96:
	goto	l2133
	
l95:
	
l2133:
	call	_BusyXLCD	;wreg free
	iorlw	0
	btfss	status,2
	goto	u1451
	goto	u1450
u1451:
	goto	l2133
u1450:
	goto	l2135
	
l97:
	line	130
	
l2135:
	movlw	(04h)&0ffh
	
	call	_WriteCmdXLCD
	line	133
	goto	l2137
	
l99:
	goto	l2137
	
l98:
	
l2137:
	call	_BusyXLCD	;wreg free
	iorlw	0
	btfss	status,2
	goto	u1461
	goto	u1460
u1461:
	goto	l2137
u1460:
	goto	l2139
	
l100:
	line	134
	
l2139:
	movlw	(0)&0ffh
	
	call	_SetDDRamAddr
	goto	l101
	line	136
	
l2141:
	line	137
	
l101:
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
psect	text20,class=CODE,space=0,reloc=2
	file	"./XLCD/wcmdxlcd.c"
	line	16
global __ptext20
__ptext20:
psect	text20
	file	"./XLCD/wcmdxlcd.c"
	line	16
	global	__size_of_WriteCmdXLCD
	__size_of_WriteCmdXLCD	equ	__end_of_WriteCmdXLCD-_WriteCmdXLCD
	
_WriteCmdXLCD:
;incstack = 0
	opt	stack 28
	movwf	((c:WriteCmdXLCD@cmd)),c
	line	31
	
l1967:
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
	
l1969:
	bcf	((c:3981)),c,0	;volatile
	line	40
	
l1971:
	bcf	((c:3981)),c,1	;volatile
	line	41
	
l1973:
	call	_DelayFor18TCY	;wreg free
	line	42
	
l1975:
	bsf	((c:3981)),c,2	;volatile
	line	43
	
l1977:
	call	_DelayFor18TCY	;wreg free
	line	44
	
l1979:
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
	
l1981:
	call	_DelayFor18TCY	;wreg free
	line	53
	
l1983:
	bsf	((c:3981)),c,2	;volatile
	line	54
	
l1985:
	call	_DelayFor18TCY	;wreg free
	line	55
	
l1987:
	bcf	((c:3981)),c,2	;volatile
	line	57
	movlw	(0F0h)&0ffh
	iorwf	((c:3989)),c	;volatile
	goto	l178
	line	63
	
l1989:
	line	64
	
l178:
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
psect	text21,class=CODE,space=0,reloc=2
	file	"./XLCD/setddram.c"
	line	14
global __ptext21
__ptext21:
psect	text21
	file	"./XLCD/setddram.c"
	line	14
	global	__size_of_SetDDRamAddr
	__size_of_SetDDRamAddr	equ	__end_of_SetDDRamAddr-_SetDDRamAddr
	
_SetDDRamAddr:
;incstack = 0
	opt	stack 27
	movwf	((c:SetDDRamAddr@DDaddr)),c
	line	29
	
l2001:
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
	
l2003:
	bcf	((c:3981)),c,0	;volatile
	line	38
	
l2005:
	bcf	((c:3981)),c,1	;volatile
	line	39
	
l2007:
	call	_DelayFor18TCY	;wreg free
	line	40
	
l2009:
	bsf	((c:3981)),c,2	;volatile
	line	41
	
l2011:
	call	_DelayFor18TCY	;wreg free
	line	42
	
l2013:
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
	
l2015:
	call	_DelayFor18TCY	;wreg free
	line	51
	
l2017:
	bsf	((c:3981)),c,2	;volatile
	line	52
	
l2019:
	call	_DelayFor18TCY	;wreg free
	line	53
	
l2021:
	bcf	((c:3981)),c,2	;volatile
	line	55
	movlw	(0F0h)&0ffh
	iorwf	((c:3989)),c	;volatile
	goto	l167
	line	60
	
l2023:
	line	61
	
l167:
	return
	opt stack 0
GLOBAL	__end_of_SetDDRamAddr
	__end_of_SetDDRamAddr:
	signat	_SetDDRamAddr,4216
	global	_DelayXLCD

;; *************** function _DelayXLCD *****************
;; Defined at:
;;		line 139 in file "c18_lcd.c"
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
psect	text22,class=CODE,space=0,reloc=2
	file	"c18_lcd.c"
	line	139
global __ptext22
__ptext22:
psect	text22
	file	"c18_lcd.c"
	line	139
	global	__size_of_DelayXLCD
	__size_of_DelayXLCD	equ	__end_of_DelayXLCD-_DelayXLCD
	
_DelayXLCD:
;incstack = 0
	opt	stack 28
	line	141
	
l1993:
	movlw	(0Ah)&0ffh
	
	call	_Delay1KTCYx
	line	145
	
l55:
	return
	opt stack 0
GLOBAL	__end_of_DelayXLCD
	__end_of_DelayXLCD:
	signat	_DelayXLCD,88
	global	_DelayPORXLCD

;; *************** function _DelayPORXLCD *****************
;; Defined at:
;;		line 131 in file "c18_lcd.c"
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
psect	text23,class=CODE,space=0,reloc=2
	line	131
global __ptext23
__ptext23:
psect	text23
	file	"c18_lcd.c"
	line	131
	global	__size_of_DelayPORXLCD
	__size_of_DelayPORXLCD	equ	__end_of_DelayPORXLCD-_DelayPORXLCD
	
_DelayPORXLCD:
;incstack = 0
	opt	stack 28
	line	133
	
l1991:
	movlw	(01Eh)&0ffh
	
	call	_Delay1KTCYx
	line	137
	
l52:
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
psect	text24,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.32/sources/pic18/d1ktcyx.c"
	line	8
global __ptext24
__ptext24:
psect	text24
	file	"/opt/microchip/xc8/v1.32/sources/pic18/d1ktcyx.c"
	line	8
	global	__size_of_Delay1KTCYx
	__size_of_Delay1KTCYx	equ	__end_of_Delay1KTCYx-_Delay1KTCYx
	
_Delay1KTCYx:
;incstack = 0
	opt	stack 28
	movwf	((c:Delay1KTCYx@unit)),c
	line	10
	
l451:
	line	11
	
l1827:
	movlw	250
u1597:
	nop
decfsz	wreg,f
	goto	u1597

	line	12
	
l1829:
	decfsz	((c:Delay1KTCYx@unit)),c
	
	goto	l451
	goto	l453
	
l452:
	line	13
	
l453:
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
psect	text25,class=CODE,space=0,reloc=2
	file	"./XLCD/busyxlcd.c"
	line	12
global __ptext25
__ptext25:
psect	text25
	file	"./XLCD/busyxlcd.c"
	line	12
	global	__size_of_BusyXLCD
	__size_of_BusyXLCD	equ	__end_of_BusyXLCD-_BusyXLCD
	
_BusyXLCD:
;incstack = 0
	opt	stack 27
	line	68
	
l1995:
	call	_DelayFor18TCY	;wreg free
	line	69
	call	_DelayFor18TCY	;wreg free
	line	70
	
l1997:
	movlw	(0)&0ffh
	goto	l60
	
l1999:
	line	71
	
l60:
	return
	opt stack 0
GLOBAL	__end_of_BusyXLCD
	__end_of_BusyXLCD:
	signat	_BusyXLCD,89
	global	_DelayFor18TCY

;; *************** function _DelayFor18TCY *****************
;; Defined at:
;;		line 126 in file "c18_lcd.c"
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
psect	text26,class=CODE,space=0,reloc=2
	file	"c18_lcd.c"
	line	126
global __ptext26
__ptext26:
psect	text26
	file	"c18_lcd.c"
	line	126
	global	__size_of_DelayFor18TCY
	__size_of_DelayFor18TCY	equ	__end_of_DelayFor18TCY-_DelayFor18TCY
	
_DelayFor18TCY:
;incstack = 0
	opt	stack 27
	line	128
	
l1831:
	movlw	(014h)&0ffh
	
	call	_Delay100TCYx
	line	129
	
l49:
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
psect	text27,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.32/sources/pic18/d100tcyx.c"
	line	8
global __ptext27
__ptext27:
psect	text27
	file	"/opt/microchip/xc8/v1.32/sources/pic18/d100tcyx.c"
	line	8
	global	__size_of_Delay100TCYx
	__size_of_Delay100TCYx	equ	__end_of_Delay100TCYx-_Delay100TCYx
	
_Delay100TCYx:
;incstack = 0
	opt	stack 27
	movwf	((c:Delay100TCYx@unit)),c
	line	10
	
l437:
	line	11
	
l1747:
	movlw	33
u1607:
decfsz	wreg,f
	goto	u1607
	nop

	line	12
	
l1749:
	decfsz	((c:Delay100TCYx@unit)),c
	
	goto	l437
	goto	l439
	
l438:
	line	13
	
l439:
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
psect	text28,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.32/sources/pic18/d10ktcyx.c"
	line	8
global __ptext28
__ptext28:
psect	text28
	file	"/opt/microchip/xc8/v1.32/sources/pic18/d10ktcyx.c"
	line	8
	global	__size_of_Delay10KTCYx
	__size_of_Delay10KTCYx	equ	__end_of_Delay10KTCYx-_Delay10KTCYx
	
_Delay10KTCYx:
;incstack = 0
	opt	stack 30
	movwf	((c:Delay10KTCYx@unit)),c
	line	10
	
l444:
	line	11
	
l2153:
	movlw	13
movwf	(??_Delay10KTCYx+0+0)&0ffh,c,f
	movlw	252
u1617:
	decfsz	wreg,f
	goto	u1617
	decfsz	(??_Delay10KTCYx+0+0)&0ffh,c,f
	goto	u1617

	line	12
	
l2155:
	decfsz	((c:Delay10KTCYx@unit)),c
	
	goto	l444
	goto	l446
	
l445:
	line	13
	
l446:
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
