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
	FNCALL	_main,_initialize
	FNCALL	_main,_lat_clear
	FNCALL	_main,_lat_set
	FNCALL	_main,_lat_toggle
	FNCALL	_initialize,_initializeOscillator
	FNROOT	_main
	global	_yaw_servo
	global	_pwm_module
	global	_LATAbits
_LATAbits	set	0xF89
	global	_OSCCON
_OSCCON	set	0xFD3
	global	_OSCTUNE
_OSCTUNE	set	0xF9B
	global	_TRISAbits
_TRISAbits	set	0xF92
	global	_TRISBbits
_TRISBbits	set	0xF93
	global	_LATB
_LATB	set	0xF8A
	global	_tick_flag
psect	nvCOMRAM,class=COMRAM,space=1,noexec
global __pnvCOMRAM
__pnvCOMRAM:
	global	_tick_flag
_tick_flag:
       ds      1
; #config settings
	file	"yawTimer.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec
global __pbssCOMRAM
__pbssCOMRAM:
	global	_yaw_servo
_yaw_servo:
       ds      3
	global	_pwm_module
_pwm_module:
       ds      19
	line	#
psect	cinit
; Clear objects allocated to COMRAM (22 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	22
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_lat_set:	; 0 bytes @ 0x0
?_lat_clear:	; 0 bytes @ 0x0
?_lat_toggle:	; 0 bytes @ 0x0
?_initializeOscillator:	; 0 bytes @ 0x0
??_initializeOscillator:	; 0 bytes @ 0x0
?_initialize:	; 0 bytes @ 0x0
??_initialize:	; 0 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	lat_set@lat
lat_set@lat:	; 2 bytes @ 0x0
	global	lat_clear@lat
lat_clear@lat:	; 2 bytes @ 0x0
	global	lat_toggle@lat
lat_toggle@lat:	; 2 bytes @ 0x0
	ds   2
	global	lat_set@pin_number
lat_set@pin_number:	; 1 bytes @ 0x2
	global	lat_clear@pin_number
lat_clear@pin_number:	; 1 bytes @ 0x2
	global	lat_toggle@pin_number
lat_toggle@pin_number:	; 1 bytes @ 0x2
	ds   1
??_lat_set:	; 0 bytes @ 0x3
??_lat_clear:	; 0 bytes @ 0x3
??_lat_toggle:	; 0 bytes @ 0x3
	ds   3
??_main:	; 0 bytes @ 0x6
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         22
;!    Persistent  1
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95      6      29
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
;!    pwm_module.port	PTR volatile unsigned char  size(2) Largest target is 0
;!		 -> LATB(ABS[1]), 
;!
;!    pwm_module.pulse_array.port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(ABS[1]), 
;!
;!    yaw_servo.pwm_reset_value	PTR unsigned long  size(2) Largest target is 12
;!		 -> pwm_module.pulse_array.reset_value(COMRAM[4]), pwm_module.pulse_array(COMRAM[11]), 
;!
;!    S33servo$pwm_reset_value	PTR unsigned long  size(2) Largest target is 12
;!		 -> pwm_module.pulse_array(COMRAM[11]), 
;!
;!    set_angle@act.pwm_reset_value	PTR unsigned long  size(2) Largest target is 12
;!		 -> pwm_module.pulse_array(COMRAM[11]), 
;!
;!    initialize_pwm_pulse@p_counter.port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(ABS[1]), 
;!
;!    initialize_pwm@pwmArray.pulse_array.port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(ABS[1]), 
;!
;!    S21pwm_counter$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(ABS[1]), 
;!
;!    handle_tick@pwmArray.pulse_array.port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(ABS[1]), 
;!
;!    lat_toggle@lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(ABS[1]), 
;!
;!    lat_clear@lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(ABS[1]), 
;!
;!    lat_set@lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(ABS[1]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_lat_clear
;!    _main->_lat_set
;!    _main->_lat_toggle
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
;! (0) _main                                                 0     0      0     665
;!                         _initialize
;!                          _lat_clear
;!                            _lat_set
;!                         _lat_toggle
;! ---------------------------------------------------------------------------------
;! (1) _lat_toggle                                           6     3      3     363
;!                                              0 COMRAM     6     3      3
;! ---------------------------------------------------------------------------------
;! (1) _lat_set                                              6     3      3     151
;!                                              0 COMRAM     6     3      3
;! ---------------------------------------------------------------------------------
;! (1) _lat_clear                                            6     3      3     151
;!                                              0 COMRAM     6     3      3
;! ---------------------------------------------------------------------------------
;! (1) _initialize                                           0     0      0       0
;!               _initializeOscillator
;! ---------------------------------------------------------------------------------
;! (2) _initializeOscillator                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _initialize
;!     _initializeOscillator
;!   _lat_clear
;!   _lat_set
;!   _lat_toggle
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
;!BANK0               A0      0       0       5        0.0%
;!BITBANK15           60      0       0      35        0.0%
;!BANK15              60      0       0      36        0.0%
;!BITCOMRAM           5F      0       0       0        0.0%
;!COMRAM              5F      6      1D       1       30.5%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      1D      32        0.0%
;!DATA                 0      0      1D       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 102 in file "yawTimer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   67[COMRAM] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_initialize
;;		_lat_clear
;;		_lat_set
;;		_lat_toggle
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"yawTimer.c"
	line	102
global __ptext0
__ptext0:
psect	text0
	file	"yawTimer.c"
	line	102
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 29
	line	104
	
l754:
	call	_initialize	;wreg free
	line	106
	
l756:
	bcf	((c:3987)),c,2	;volatile
	line	107
	
l758:
		movlw	high((c:3978))	;volatile
	movwf	((c:lat_clear@lat+1)),c
	movlw	low((c:3978))	;volatile
	movwf	((c:lat_clear@lat)),c

	movlw	low(02h)
	movwf	((c:lat_clear@pin_number)),c
	call	_lat_clear	;wreg free
	line	110
	
l760:
	setf	((c:_tick_flag)),c	;volatile
	goto	l762
	line	111
	
l68:
	line	113
	
l762:
	decf	((c:_tick_flag)),c	;volatile
	line	115
	
l764:
	decf	((c:_tick_flag)),c,w	;volatile

	btfss	status,2
	goto	u121
	goto	u120
u121:
	goto	l762
u120:
	line	117
	
l766:
	decf	((c:_tick_flag)),c	;volatile
	line	118
	
l768:
		movlw	high((c:3978))	;volatile
	movwf	((c:lat_set@lat+1)),c
	movlw	low((c:3978))	;volatile
	movwf	((c:lat_set@lat)),c

	movlw	low(02h)
	movwf	((c:lat_set@pin_number)),c
	call	_lat_set	;wreg free
	line	122
	
l770:
		movlw	high((c:3978))	;volatile
	movwf	((c:lat_toggle@lat+1)),c
	movlw	low((c:3978))	;volatile
	movwf	((c:lat_toggle@lat)),c

	movlw	low(06h)
	movwf	((c:lat_toggle@pin_number)),c
	call	_lat_toggle	;wreg free
	goto	l762
	line	123
	
l69:
	goto	l762
	line	125
	
l70:
	line	111
	goto	l762
	
l71:
	line	126
	
l72:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_lat_toggle

;; *************** function _lat_toggle *****************
;; Defined at:
;;		line 23 in file "macros.h"
;; Parameters:    Size  Location     Type
;;  lat             2    0[COMRAM] PTR volatile unsigned ch
;;		 -> LATB(1), 
;;  pin_number      1    2[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_handle_tick
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	file	"macros.h"
	line	23
global __ptext1
__ptext1:
psect	text1
	file	"macros.h"
	line	23
	global	__size_of_lat_toggle
	__size_of_lat_toggle	equ	__end_of_lat_toggle-_lat_toggle
	
_lat_toggle:
;incstack = 0
	opt	stack 30
	line	26
	
l670:
	movff	(c:lat_toggle@lat),fsr2l
	movff	(c:lat_toggle@lat+1),fsr2h
	movf	indf2,w
	movwf	(??_lat_toggle+0+0)&0ffh,c
	movff	(c:lat_toggle@pin_number),??_lat_toggle+1+0
	movlw	(01h)&0ffh
	movwf	(??_lat_toggle+2+0)&0ffh,c
	incf	(??_lat_toggle+1+0),c
	goto	u34
u35:
	bcf	status,0
	rlcf	((??_lat_toggle+2+0)),c
u34:
	decfsz	(??_lat_toggle+1+0),c
	goto	u35
	movf	((??_lat_toggle+2+0)),c,w
	xorwf	((??_lat_toggle+0+0)),c,w
	movff	(c:lat_toggle@lat),fsr2l
	movff	(c:lat_toggle@lat+1),fsr2h
	movwf	indf2,c

	line	28
	
l21:
	return
	opt stack 0
GLOBAL	__end_of_lat_toggle
	__end_of_lat_toggle:
	signat	_lat_toggle,8312
	global	_lat_set

;; *************** function _lat_set *****************
;; Defined at:
;;		line 9 in file "macros.h"
;; Parameters:    Size  Location     Type
;;  lat             2    0[COMRAM] PTR volatile unsigned ch
;;		 -> LATB(1), 
;;  pin_number      1    2[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	line	9
global __ptext2
__ptext2:
psect	text2
	file	"macros.h"
	line	9
	global	__size_of_lat_set
	__size_of_lat_set	equ	__end_of_lat_set-_lat_set
	
_lat_set:
;incstack = 0
	opt	stack 30
	line	12
	
l666:
	movff	(c:lat_set@lat),fsr2l
	movff	(c:lat_set@lat+1),fsr2h
	movf	indf2,w
	movwf	(??_lat_set+0+0)&0ffh,c
	movff	(c:lat_set@pin_number),??_lat_set+1+0
	movlw	(01h)&0ffh
	movwf	(??_lat_set+2+0)&0ffh,c
	incf	(??_lat_set+1+0),c
	goto	u14
u15:
	bcf	status,0
	rlcf	((??_lat_set+2+0)),c
u14:
	decfsz	(??_lat_set+1+0),c
	goto	u15
	movf	((??_lat_set+2+0)),c,w
	iorwf	((??_lat_set+0+0)),c,w
	movff	(c:lat_set@lat),fsr2l
	movff	(c:lat_set@lat+1),fsr2h
	movwf	indf2,c

	line	14
	
l15:
	return
	opt stack 0
GLOBAL	__end_of_lat_set
	__end_of_lat_set:
	signat	_lat_set,8312
	global	_lat_clear

;; *************** function _lat_clear *****************
;; Defined at:
;;		line 16 in file "macros.h"
;; Parameters:    Size  Location     Type
;;  lat             2    0[COMRAM] PTR volatile unsigned ch
;;		 -> LATB(1), 
;;  pin_number      1    2[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	line	16
global __ptext3
__ptext3:
psect	text3
	file	"macros.h"
	line	16
	global	__size_of_lat_clear
	__size_of_lat_clear	equ	__end_of_lat_clear-_lat_clear
	
_lat_clear:
;incstack = 0
	opt	stack 30
	line	19
	
l668:
	movff	(c:lat_clear@lat),fsr2l
	movff	(c:lat_clear@lat+1),fsr2h
	movf	indf2,w
	movwf	(??_lat_clear+0+0)&0ffh,c
	movff	(c:lat_clear@pin_number),??_lat_clear+1+0
	movlw	(01h)&0ffh
	movwf	(??_lat_clear+2+0)&0ffh,c
	incf	(??_lat_clear+1+0),c
	goto	u24
u25:
	bcf	status,0
	rlcf	((??_lat_clear+2+0)),c
u24:
	decfsz	(??_lat_clear+1+0),c
	goto	u25
	movf	((??_lat_clear+2+0)),c,w
	xorlw	0ffh
	andwf	((??_lat_clear+0+0)),c,w
	movff	(c:lat_clear@lat),fsr2l
	movff	(c:lat_clear@lat+1),fsr2h
	movwf	indf2,c

	line	21
	
l18:
	return
	opt stack 0
GLOBAL	__end_of_lat_clear
	__end_of_lat_clear:
	signat	_lat_clear,8312
	global	_initialize

;; *************** function _initialize *****************
;; Defined at:
;;		line 84 in file "yawTimer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, cstack
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
;;		_initializeOscillator
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	file	"yawTimer.c"
	line	84
global __ptext4
__ptext4:
psect	text4
	file	"yawTimer.c"
	line	84
	global	__size_of_initialize
	__size_of_initialize	equ	__end_of_initialize-_initialize
	
_initialize:
;incstack = 0
	opt	stack 29
	line	88
	
l692:
	bsf	((c:3986)),c,0	;volatile
	line	89
	bsf	((c:3986)),c,1	;volatile
	line	90
	bsf	((c:3986)),c,2	;volatile
	line	91
	bcf	((c:3986)),c,5	;volatile
	line	92
	bsf	((c:3987)),c,0	;volatile
	line	93
	bcf	((c:3987)),c,7	;volatile
	line	94
	bcf	((c:3987)),c,6	;volatile
	line	97
	
l694:
	call	_initializeOscillator	;wreg free
	line	100
	
l65:
	return
	opt stack 0
GLOBAL	__end_of_initialize
	__end_of_initialize:
	signat	_initialize,88
	global	_initializeOscillator

;; *************** function _initializeOscillator *****************
;; Defined at:
;;		line 46 in file "yawTimer.c"
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
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_initialize
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	line	46
global __ptext5
__ptext5:
psect	text5
	file	"yawTimer.c"
	line	46
	global	__size_of_initializeOscillator
	__size_of_initializeOscillator	equ	__end_of_initializeOscillator-_initializeOscillator
	
_initializeOscillator:
;incstack = 0
	opt	stack 29
	line	54
	
l664:
	movlw	low(0D8h)
	movwf	((c:4051)),c	;volatile
	line	63
	movlw	low(080h)
	movwf	((c:3995)),c	;volatile
	line	64
	
l59:
	return
	opt stack 0
GLOBAL	__end_of_initializeOscillator
	__end_of_initializeOscillator:
	signat	_initializeOscillator,88
	GLOBAL	__activetblptr
__activetblptr	EQU	2
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
