opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 58300"

opt pagewidth 120

	opt lm

	processor	18F4620
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
# 49 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
PORTA equ 0F80h ;# 
# 187 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
PORTB equ 0F81h ;# 
# 357 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
PORTC equ 0F82h ;# 
# 534 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
PORTD equ 0F83h ;# 
# 675 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
PORTE equ 0F84h ;# 
# 1003 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
LATA equ 0F89h ;# 
# 1135 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
LATB equ 0F8Ah ;# 
# 1267 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
LATC equ 0F8Bh ;# 
# 1399 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
LATD equ 0F8Ch ;# 
# 1531 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
LATE equ 0F8Dh ;# 
# 1633 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
TRISA equ 0F92h ;# 
# 1638 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
DDRA equ 0F92h ;# 
# 1854 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
TRISB equ 0F93h ;# 
# 1859 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
DDRB equ 0F93h ;# 
# 2075 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
TRISC equ 0F94h ;# 
# 2080 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
DDRC equ 0F94h ;# 
# 2296 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
TRISD equ 0F95h ;# 
# 2301 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
DDRD equ 0F95h ;# 
# 2517 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
TRISE equ 0F96h ;# 
# 2522 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
DDRE equ 0F96h ;# 
# 2680 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
OSCTUNE equ 0F9Bh ;# 
# 2744 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
PIE1 equ 0F9Dh ;# 
# 2823 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
PIR1 equ 0F9Eh ;# 
# 2902 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
IPR1 equ 0F9Fh ;# 
# 2981 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
PIE2 equ 0FA0h ;# 
# 3046 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
PIR2 equ 0FA1h ;# 
# 3111 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
IPR2 equ 0FA2h ;# 
# 3176 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
EECON1 equ 0FA6h ;# 
# 3241 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
EECON2 equ 0FA7h ;# 
# 3247 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
EEDATA equ 0FA8h ;# 
# 3253 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
EEADR equ 0FA9h ;# 
# 3259 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
EEADRH equ 0FAAh ;# 
# 3265 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
RCSTA equ 0FABh ;# 
# 3270 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
RCSTA1 equ 0FABh ;# 
# 3474 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
TXSTA equ 0FACh ;# 
# 3479 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
TXSTA1 equ 0FACh ;# 
# 3771 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
TXREG equ 0FADh ;# 
# 3776 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
TXREG1 equ 0FADh ;# 
# 3782 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
RCREG equ 0FAEh ;# 
# 3787 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
RCREG1 equ 0FAEh ;# 
# 3793 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
SPBRG equ 0FAFh ;# 
# 3798 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
SPBRG1 equ 0FAFh ;# 
# 3804 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
SPBRGH equ 0FB0h ;# 
# 3810 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
T3CON equ 0FB1h ;# 
# 3923 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
TMR3 equ 0FB2h ;# 
# 3929 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
TMR3L equ 0FB2h ;# 
# 3935 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
TMR3H equ 0FB3h ;# 
# 3941 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
CMCON equ 0FB4h ;# 
# 4036 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
CVRCON equ 0FB5h ;# 
# 4114 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
ECCP1AS equ 0FB6h ;# 
# 4195 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
PWM1CON equ 0FB7h ;# 
# 4264 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
BAUDCON equ 0FB8h ;# 
# 4269 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
BAUDCTL equ 0FB8h ;# 
# 4435 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
CCP2CON equ 0FBAh ;# 
# 4513 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
CCPR2 equ 0FBBh ;# 
# 4519 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
CCPR2L equ 0FBBh ;# 
# 4525 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
CCPR2H equ 0FBCh ;# 
# 4531 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
CCP1CON equ 0FBDh ;# 
# 4627 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
CCPR1 equ 0FBEh ;# 
# 4633 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
CCPR1L equ 0FBEh ;# 
# 4639 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
CCPR1H equ 0FBFh ;# 
# 4645 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
ADCON2 equ 0FC0h ;# 
# 4715 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
ADCON1 equ 0FC1h ;# 
# 4805 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
ADCON0 equ 0FC2h ;# 
# 4927 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
ADRES equ 0FC3h ;# 
# 4933 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
ADRESL equ 0FC3h ;# 
# 4939 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
ADRESH equ 0FC4h ;# 
# 4945 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
SSPCON2 equ 0FC5h ;# 
# 5006 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
SSPCON1 equ 0FC6h ;# 
# 5075 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
SSPSTAT equ 0FC7h ;# 
# 5314 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
SSPADD equ 0FC8h ;# 
# 5320 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
SSPBUF equ 0FC9h ;# 
# 5326 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
T2CON equ 0FCAh ;# 
# 5396 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
PR2 equ 0FCBh ;# 
# 5401 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
MEMCON equ 0FCBh ;# 
# 5505 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
TMR2 equ 0FCCh ;# 
# 5511 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
T1CON equ 0FCDh ;# 
# 5615 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
TMR1 equ 0FCEh ;# 
# 5621 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
TMR1L equ 0FCEh ;# 
# 5627 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
TMR1H equ 0FCFh ;# 
# 5633 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
RCON equ 0FD0h ;# 
# 5765 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
WDTCON equ 0FD1h ;# 
# 5792 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
HLVDCON equ 0FD2h ;# 
# 5797 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
LVDCON equ 0FD2h ;# 
# 6061 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
OSCCON equ 0FD3h ;# 
# 6137 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
T0CON equ 0FD5h ;# 
# 6213 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
TMR0 equ 0FD6h ;# 
# 6219 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
TMR0L equ 0FD6h ;# 
# 6225 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
TMR0H equ 0FD7h ;# 
# 6231 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
STATUS equ 0FD8h ;# 
# 6309 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
FSR2 equ 0FD9h ;# 
# 6315 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
FSR2L equ 0FD9h ;# 
# 6321 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
FSR2H equ 0FDAh ;# 
# 6327 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
PLUSW2 equ 0FDBh ;# 
# 6333 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
PREINC2 equ 0FDCh ;# 
# 6339 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
POSTDEC2 equ 0FDDh ;# 
# 6345 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
POSTINC2 equ 0FDEh ;# 
# 6351 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
INDF2 equ 0FDFh ;# 
# 6357 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
BSR equ 0FE0h ;# 
# 6363 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
FSR1 equ 0FE1h ;# 
# 6369 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
FSR1L equ 0FE1h ;# 
# 6375 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
FSR1H equ 0FE2h ;# 
# 6381 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
PLUSW1 equ 0FE3h ;# 
# 6387 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
PREINC1 equ 0FE4h ;# 
# 6393 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
POSTDEC1 equ 0FE5h ;# 
# 6399 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
POSTINC1 equ 0FE6h ;# 
# 6405 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
INDF1 equ 0FE7h ;# 
# 6411 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
WREG equ 0FE8h ;# 
# 6422 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
FSR0 equ 0FE9h ;# 
# 6428 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
FSR0L equ 0FE9h ;# 
# 6434 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
FSR0H equ 0FEAh ;# 
# 6440 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
PLUSW0 equ 0FEBh ;# 
# 6446 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
PREINC0 equ 0FECh ;# 
# 6452 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
POSTDEC0 equ 0FEDh ;# 
# 6458 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
POSTINC0 equ 0FEEh ;# 
# 6464 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
INDF0 equ 0FEFh ;# 
# 6470 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
INTCON3 equ 0FF0h ;# 
# 6561 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
INTCON2 equ 0FF1h ;# 
# 6630 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
INTCON equ 0FF2h ;# 
# 6766 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
PROD equ 0FF3h ;# 
# 6772 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
PRODL equ 0FF3h ;# 
# 6778 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
PRODH equ 0FF4h ;# 
# 6784 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
TABLAT equ 0FF5h ;# 
# 6792 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
TBLPTR equ 0FF6h ;# 
# 6798 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
TBLPTRL equ 0FF6h ;# 
# 6804 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
TBLPTRH equ 0FF7h ;# 
# 6810 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
TBLPTRU equ 0FF8h ;# 
# 6818 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
PCLAT equ 0FF9h ;# 
# 6825 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
PC equ 0FF9h ;# 
# 6831 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
PCL equ 0FF9h ;# 
# 6837 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
PCLATH equ 0FFAh ;# 
# 6843 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
PCLATU equ 0FFBh ;# 
# 6849 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
STKPTR equ 0FFCh ;# 
# 6954 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
TOS equ 0FFDh ;# 
# 6960 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
TOSL equ 0FFDh ;# 
# 6966 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
TOSH equ 0FFEh ;# 
# 6972 "/opt/microchip/xc8/v1.32/include/pic18f4620.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_initialize
	FNCALL	_initialize,_initialize_pwm
	FNCALL	_initialize,_initialize_pwm_pulse
	FNCALL	_initialize_pwm,___wmul
	FNROOT	_main
	FNCALL	_isr,_handle_tick
	FNCALL	_handle_tick,i2___wmul
	FNCALL	intlevel2,_isr
	global	intlevel2
	FNROOT	intlevel2
	global	_pwm_module
	global	_TMR0
_TMR0	set	0xFD6
	global	_INTCON
_INTCON	set	0xFF2
	global	_PORTAbits
_PORTAbits	set	0xF80
	global	_TRISBbits
_TRISBbits	set	0xF93
	global	_GIE
_GIE	set	0x7F97
	global	_PSA
_PSA	set	0x7EAB
	global	_T0CS
_T0CS	set	0x7EAD
	global	_T0IE
_T0IE	set	0x7F95
	global	_T0PS0
_T0PS0	set	0x7EA8
	global	_T0PS1
_T0PS1	set	0x7EA9
	global	_T0PS2
_T0PS2	set	0x7EAA
	global	_TMR0IE
_TMR0IE	set	0x7F95
	global	_TMR0IF
_TMR0IF	set	0x7F92
	global	_PORTBbits
_PORTBbits	set	0xF81
psect	text0,class=CODE,space=0,reloc=2
; #config settings
	file	"/opt/microchip/xc8/v1.32/include/pic18f4620.h"
	line	226
global __ptext0
__ptext0:
global __CFG_OSC$INTIO67
__CFG_OSC$INTIO67 equ 0x0
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_WDT$OFF
__CFG_WDT$OFF equ 0x0
global __CFG_MCLRE$OFF
__CFG_MCLRE$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
	file	"xc8_pwm_timer.as"
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
	global	_pwm_module
_pwm_module:
       ds      41
	line	#
psect	cinit
; Clear objects allocated to COMRAM (41 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	41
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_isr:	; 0 bytes @ 0x0
?_initialize:	; 0 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	?i2___wmul
?i2___wmul:	; 2 bytes @ 0x0
	global	i2___wmul@multiplier
i2___wmul@multiplier:	; 2 bytes @ 0x0
	ds   2
	global	i2___wmul@multiplicand
i2___wmul@multiplicand:	; 2 bytes @ 0x2
	ds   2
??i2___wmul:	; 0 bytes @ 0x4
	global	i2___wmul@product
i2___wmul@product:	; 2 bytes @ 0x4
	ds   2
?_handle_tick:	; 0 bytes @ 0x6
	global	handle_tick@pwmArray
handle_tick@pwmArray:	; 2 bytes @ 0x6
	ds   2
??_handle_tick:	; 0 bytes @ 0x8
	ds   9
	global	handle_tick@i
handle_tick@i:	; 2 bytes @ 0x11
	ds   2
	global	handle_tick@i_237
handle_tick@i_237:	; 2 bytes @ 0x13
	ds   2
??_isr:	; 0 bytes @ 0x15
	ds   15
?_initialize_pwm_pulse:	; 0 bytes @ 0x24
	global	?___wmul
?___wmul:	; 2 bytes @ 0x24
	global	initialize_pwm_pulse@p_counter
initialize_pwm_pulse@p_counter:	; 2 bytes @ 0x24
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x24
	ds   2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x26
	global	initialize_pwm_pulse@reset_value
initialize_pwm_pulse@reset_value:	; 4 bytes @ 0x26
	ds   2
??___wmul:	; 0 bytes @ 0x28
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x28
	ds   2
?_initialize_pwm:	; 0 bytes @ 0x2A
	global	initialize_pwm@pwmArray
initialize_pwm@pwmArray:	; 2 bytes @ 0x2A
	global	initialize_pwm_pulse@p_port
initialize_pwm_pulse@p_port:	; 2 bytes @ 0x2A
	ds   2
??_initialize_pwm:	; 0 bytes @ 0x2C
	global	initialize_pwm_pulse@pin
initialize_pwm_pulse@pin:	; 2 bytes @ 0x2C
	ds   2
??_initialize_pwm_pulse:	; 0 bytes @ 0x2E
	ds   6
	global	initialize_pwm@i
initialize_pwm@i:	; 2 bytes @ 0x34
	ds   2
??_initialize:	; 0 bytes @ 0x36
??_main:	; 0 bytes @ 0x36
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         41
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM          127     54      95
;!    BANK0           128      0       0
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
;!    BANK15          128      0       0

;!
;!Pointer List with Targets:
;!
;!    pwm_module.port	PTR unsigned char  size(2) Largest target is 0
;!		 -> PORTBbits(ABS[1]), 
;!
;!    pwm_module.pulse_array.port	PTR unsigned char  size(2) Largest target is 1
;!		 -> PORTBbits(ABS[1]), 
;!
;!    initialize_pwm_pulse@p_port	PTR unsigned char  size(2) Largest target is 1
;!		 -> PORTBbits(ABS[1]), 
;!
;!    initialize_pwm_pulse@p_counter.port	PTR unsigned char  size(2) Largest target is 1
;!		 -> PORTBbits(ABS[1]), 
;!
;!    initialize_pwm_pulse@p_counter	PTR struct pwm_counter size(2) Largest target is 44
;!		 -> pwm_module.pulse_array(COMRAM[33]), pwm_module(COMRAM[41]), 
;!
;!    initialize_pwm@pwmArray.pulse_array.port	PTR unsigned char  size(2) Largest target is 1
;!		 -> PORTBbits(ABS[1]), 
;!
;!    initialize_pwm@pwmArray	PTR struct pwm_array size(2) Largest target is 44
;!		 -> pwm_module(COMRAM[41]), 
;!
;!    S21pwm_counter$port	PTR unsigned char  size(2) Largest target is 1
;!		 -> PORTBbits(ABS[1]), 
;!
;!    handle_tick@pwmArray.pulse_array.port	PTR unsigned char  size(2) Largest target is 1
;!		 -> PORTBbits(ABS[1]), 
;!
;!    handle_tick@pwmArray	PTR struct pwm_array size(2) Largest target is 44
;!		 -> pwm_module(COMRAM[41]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _initialize->_initialize_pwm
;!    _initialize_pwm->___wmul
;!
;!Critical Paths under _isr in COMRAM
;!
;!    _isr->_handle_tick
;!    _handle_tick->i2___wmul
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _isr in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _isr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _isr in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _isr in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _isr in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _isr in BANK7
;!
;!    None.
;!
;!Critical Paths under _main in BANK8
;!
;!    None.
;!
;!Critical Paths under _isr in BANK8
;!
;!    None.
;!
;!Critical Paths under _main in BANK9
;!
;!    None.
;!
;!Critical Paths under _isr in BANK9
;!
;!    None.
;!
;!Critical Paths under _main in BANK10
;!
;!    None.
;!
;!Critical Paths under _isr in BANK10
;!
;!    None.
;!
;!Critical Paths under _main in BANK11
;!
;!    None.
;!
;!Critical Paths under _isr in BANK11
;!
;!    None.
;!
;!Critical Paths under _main in BANK12
;!
;!    None.
;!
;!Critical Paths under _isr in BANK12
;!
;!    None.
;!
;!Critical Paths under _main in BANK13
;!
;!    None.
;!
;!Critical Paths under _isr in BANK13
;!
;!    None.
;!
;!Critical Paths under _main in BANK14
;!
;!    None.
;!
;!Critical Paths under _isr in BANK14
;!
;!    None.
;!
;!Critical Paths under _main in BANK15
;!
;!    None.
;!
;!Critical Paths under _isr in BANK15
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
;! (0) _main                                                 0     0      0    2032
;!                         _initialize
;! ---------------------------------------------------------------------------------
;! (1) _initialize                                           0     0      0    2032
;!                     _initialize_pwm
;!               _initialize_pwm_pulse
;! ---------------------------------------------------------------------------------
;! (2) _initialize_pwm_pulse                                10     0     10     726
;!                                             36 COMRAM    10     0     10
;! ---------------------------------------------------------------------------------
;! (2) _initialize_pwm                                      12    10      2    1306
;!                                             42 COMRAM    12    10      2
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (3) ___wmul                                               6     2      4    1073
;!                                             36 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _isr                                                 15    15      0     822
;!                                             21 COMRAM    15    15      0
;!                        _handle_tick
;! ---------------------------------------------------------------------------------
;! (5) _handle_tick                                         15    13      2     822
;!                                              6 COMRAM    15    13      2
;!                           i2___wmul
;! ---------------------------------------------------------------------------------
;! (6) i2___wmul                                             6     2      4     409
;!                                              0 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _initialize
;!     _initialize_pwm
;!       ___wmul
;!     _initialize_pwm_pulse
;!
;! _isr (ROOT)
;!   _handle_tick
;!     i2___wmul
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             F7F      0       0      37        0.0%
;!EEDATA             400      0       0       0        0.0%
;!BITBANK14          100      0       0      32        0.0%
;!BANK14             100      0       0      33        0.0%
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
;!BITBANK15           80      0       0      35        0.0%
;!BANK15              80      0       0      36        0.0%
;!BITBANK0            80      0       0       4        0.0%
;!BANK0               80      0       0       5        0.0%
;!BITCOMRAM           7F      0       0       0        0.0%
;!COMRAM              7F     36      5F       1       74.8%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      5F      34        0.0%
;!DATA                 0      0      5F       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 78 in file "xc8_pwm_timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   60[COMRAM] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_initialize
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0
psect	text0
	file	"xc8_pwm_timer.c"
	line	78
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 25
	line	81
	
l773:
	call	_initialize	;wreg free
	goto	l62
	line	82
	
l61:
	line	83
	goto	l62
	
l63:
	
l62:
	btfsc	((c:3968)),c,0	;volatile
	goto	u151
	goto	u150
u151:
	goto	l66
u150:
	
l775:
	btfsc	((c:3968)),c,1	;volatile
	goto	u161
	goto	u160
u161:
	goto	l66
u160:
	
l777:
	btfss	((c:3968)),c,2	;volatile
	goto	u171
	goto	u170
u171:
	goto	l62
u170:
	goto	l66
	
l65:
	
l66:
	line	85
	btfss	((c:3968)),c,0	;volatile
	goto	u181
	goto	u180
u181:
	goto	l781
u180:
	line	86
	
l779:
	movlw	low(0Ah)
	addwf	(0+((c:_pwm_module)+04h)),c
	movlw	0
	addwfc	(1+((c:_pwm_module)+04h)),c
	addwfc	(2+((c:_pwm_module)+04h)),c
	addwfc	(3+((c:_pwm_module)+04h)),c
	line	87
	movlw	low(0Ah)
	subwf	(0+((c:_pwm_module)+0Fh)),c
	movlw	0
	subwfb	(1+((c:_pwm_module)+0Fh)),c
	subwfb	(2+((c:_pwm_module)+0Fh)),c
	subwfb	(3+((c:_pwm_module)+0Fh)),c
	goto	l781
	line	88
	
l67:
	line	89
	
l781:
	btfss	((c:3968)),c,1	;volatile
	goto	u191
	goto	u190
u191:
	goto	l62
u190:
	line	91
	
l783:
	btfss	((c:3968)),c,2	;volatile
	goto	u201
	goto	u200
u201:
	goto	l62
u200:
	goto	l70
	line	94
	
l785:
	goto	l70
	
l71:
	
l70:
	btfsc	((c:3968)),c,0	;volatile
	goto	u211
	goto	u210
u211:
	goto	l70
u210:
	
l787:
	btfsc	((c:3968)),c,1	;volatile
	goto	u221
	goto	u220
u221:
	goto	l70
u220:
	
l789:
	btfsc	((c:3968)),c,2	;volatile
	goto	u231
	goto	u230
u231:
	goto	l70
u230:
	goto	l62
	
l72:
	goto	l62
	
l69:
	goto	l62
	line	95
	
l68:
	goto	l62
	
l73:
	line	82
	goto	l62
	
l74:
	line	96
	
l75:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_initialize

;; *************** function _initialize *****************
;; Defined at:
;;		line 46 in file "xc8_pwm_timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_initialize_pwm
;;		_initialize_pwm_pulse
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	line	46
global __ptext1
__ptext1:
psect	text1
	file	"xc8_pwm_timer.c"
	line	46
	global	__size_of_initialize
	__size_of_initialize	equ	__end_of_initialize-_initialize
	
_initialize:
;incstack = 0
	opt	stack 25
	line	48
	
l735:
	bcf	c:(32429/8),(32429)&7	;volatile
	line	50
	bcf	c:(32427/8),(32427)&7	;volatile
	line	51
	bsf	c:(32426/8),(32426)&7	;volatile
	line	52
	bsf	c:(32425/8),(32425)&7	;volatile
	line	53
	bsf	c:(32424/8),(32424)&7	;volatile
	line	55
	
l737:
	movlw	low(0)
	movwf	((c:4082)),c	;volatile
	line	56
	
l739:
	bsf	c:(32663/8),(32663)&7	;volatile
	line	57
	
l741:
	bsf	c:(32661/8),(32661)&7	;volatile
	line	58
	movlw	high(0)
	movwf	((c:4054+1)),c	;volatile
	movlw	low(0)
	movwf	((c:4054)),c	;volatile
	line	60
	movlw	low(050h)
	movwf	(0+((c:_pwm_module)+021h)),c
	movlw	high(050h)
	movwf	(1+((c:_pwm_module)+021h)),c
	movlw	low highword(050h)
	movwf	(2+((c:_pwm_module)+021h)),c
	movlw	high highword(050h)
	movwf	(3+((c:_pwm_module)+021h)),c
	line	62
	
l743:
		movlw	high((c:_pwm_module))
	movwf	((c:initialize_pwm_pulse@p_counter+1)),c
	movlw	low((c:_pwm_module))
	movwf	((c:initialize_pwm_pulse@p_counter)),c

	movlw	low(028h)
	movwf	((c:initialize_pwm_pulse@reset_value)),c
	movlw	high(028h)
	movwf	((c:initialize_pwm_pulse@reset_value+1)),c
	movlw	low highword(028h)
	movwf	((c:initialize_pwm_pulse@reset_value+2)),c
	movlw	high highword(028h)
	movwf	((c:initialize_pwm_pulse@reset_value+3)),c
		movlw	high((c:3969))	;volatile
	movwf	((c:initialize_pwm_pulse@p_port+1)),c
	movlw	low((c:3969))	;volatile
	movwf	((c:initialize_pwm_pulse@p_port)),c

	movlw	high(0)
	movwf	((c:initialize_pwm_pulse@pin+1)),c
	movlw	low(0)
	movwf	((c:initialize_pwm_pulse@pin)),c
	call	_initialize_pwm_pulse	;wreg free
	line	63
	
l745:
	bcf	((c:3987)),c,0	;volatile
	line	65
	
l747:
		movlw	high((c:_pwm_module)+0Bh)
	movwf	((c:initialize_pwm_pulse@p_counter+1)),c
	movlw	low((c:_pwm_module)+0Bh)
	movwf	((c:initialize_pwm_pulse@p_counter)),c

	movlw	low(03Ch)
	movwf	((c:initialize_pwm_pulse@reset_value)),c
	movlw	high(03Ch)
	movwf	((c:initialize_pwm_pulse@reset_value+1)),c
	movlw	low highword(03Ch)
	movwf	((c:initialize_pwm_pulse@reset_value+2)),c
	movlw	high highword(03Ch)
	movwf	((c:initialize_pwm_pulse@reset_value+3)),c
		movlw	high((c:3969))	;volatile
	movwf	((c:initialize_pwm_pulse@p_port+1)),c
	movlw	low((c:3969))	;volatile
	movwf	((c:initialize_pwm_pulse@p_port)),c

	movlw	high(01h)
	movwf	((c:initialize_pwm_pulse@pin+1)),c
	movlw	low(01h)
	movwf	((c:initialize_pwm_pulse@pin)),c
	call	_initialize_pwm_pulse	;wreg free
	line	66
	
l749:
	bcf	((c:3987)),c,1	;volatile
	line	68
	
l751:
		movlw	high((c:_pwm_module)+016h)
	movwf	((c:initialize_pwm_pulse@p_counter+1)),c
	movlw	low((c:_pwm_module)+016h)
	movwf	((c:initialize_pwm_pulse@p_counter)),c

	movlw	low(028h)
	movwf	((c:initialize_pwm_pulse@reset_value)),c
	movlw	high(028h)
	movwf	((c:initialize_pwm_pulse@reset_value+1)),c
	movlw	low highword(028h)
	movwf	((c:initialize_pwm_pulse@reset_value+2)),c
	movlw	high highword(028h)
	movwf	((c:initialize_pwm_pulse@reset_value+3)),c
		movlw	high((c:3969))	;volatile
	movwf	((c:initialize_pwm_pulse@p_port+1)),c
	movlw	low((c:3969))	;volatile
	movwf	((c:initialize_pwm_pulse@p_port)),c

	movlw	high(02h)
	movwf	((c:initialize_pwm_pulse@pin+1)),c
	movlw	low(02h)
	movwf	((c:initialize_pwm_pulse@pin)),c
	call	_initialize_pwm_pulse	;wreg free
	line	69
	
l753:
	bcf	((c:3987)),c,2	;volatile
	line	71
	
l755:
		movlw	high((c:_pwm_module))
	movwf	((c:initialize_pwm@pwmArray+1)),c
	movlw	low((c:_pwm_module))
	movwf	((c:initialize_pwm@pwmArray)),c

	call	_initialize_pwm	;wreg free
	line	73
	
l757:
	bcf	((c:3987)),c,3	;volatile
	line	74
	
l759:
	bsf	((c:3969)),c,3	;volatile
	line	76
	
l58:
	return
	opt stack 0
GLOBAL	__end_of_initialize
	__end_of_initialize:
	signat	_initialize,88
	global	_initialize_pwm_pulse

;; *************** function _initialize_pwm_pulse *****************
;; Defined at:
;;		line 94 in file "pwmhub.h"
;; Parameters:    Size  Location     Type
;;  p_counter       2   36[COMRAM] PTR struct pwm_counter
;;		 -> pwm_module.pulse_array(33), pwm_module(41), 
;;  reset_value     4   38[COMRAM] unsigned long 
;;  p_port          2   42[COMRAM] PTR unsigned char 
;;		 -> PORTBbits(1), 
;;  pin             2   44[COMRAM] unsigned int 
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
;;      Params:        10       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        10       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_initialize
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	file	"pwmhub.h"
	line	94
global __ptext2
__ptext2:
psect	text2
	file	"pwmhub.h"
	line	94
	global	__size_of_initialize_pwm_pulse
	__size_of_initialize_pwm_pulse	equ	__end_of_initialize_pwm_pulse-_initialize_pwm_pulse
	
_initialize_pwm_pulse:
;incstack = 0
	opt	stack 26
	line	96
	
l689:
	movff	(c:initialize_pwm_pulse@p_counter),fsr2l
	movff	(c:initialize_pwm_pulse@p_counter+1),fsr2h
	movff	(c:initialize_pwm_pulse@reset_value),postinc2
	movff	(c:initialize_pwm_pulse@reset_value+1),postinc2
	movff	(c:initialize_pwm_pulse@reset_value+2),postinc2
	movff	(c:initialize_pwm_pulse@reset_value+3),postinc2
	line	97
	
l691:
	lfsr	2,08h
	movf	((c:initialize_pwm_pulse@p_counter)),c,w
	addwf	fsr2l
	movf	((c:initialize_pwm_pulse@p_counter+1)),c,w
	addwfc	fsr2h
	movff	(c:initialize_pwm_pulse@p_port),postinc2
	movff	(c:initialize_pwm_pulse@p_port+1),postdec2
	line	98
	
l693:
	lfsr	2,0Ah
	movf	((c:initialize_pwm_pulse@p_counter)),c,w
	addwf	fsr2l
	movf	((c:initialize_pwm_pulse@p_counter+1)),c,w
	addwfc	fsr2h
	movff	(c:initialize_pwm_pulse@pin),indf2

	line	99
	
l49:
	return
	opt stack 0
GLOBAL	__end_of_initialize_pwm_pulse
	__end_of_initialize_pwm_pulse:
	signat	_initialize_pwm_pulse,16504
	global	_initialize_pwm

;; *************** function _initialize_pwm *****************
;; Defined at:
;;		line 82 in file "pwmhub.h"
;; Parameters:    Size  Location     Type
;;  pwmArray        2   42[COMRAM] PTR struct pwm_array
;;		 -> pwm_module(41), 
;; Auto vars:     Size  Location     Type
;;  i               2   52[COMRAM] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___wmul
;; This function is called by:
;;		_initialize
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	line	82
global __ptext3
__ptext3:
psect	text3
	file	"pwmhub.h"
	line	82
	global	__size_of_initialize_pwm
	__size_of_initialize_pwm	equ	__end_of_initialize_pwm-_initialize_pwm
	
_initialize_pwm:
;incstack = 0
	opt	stack 25
	line	85
	
l673:
	lfsr	2,021h
	movf	((c:initialize_pwm@pwmArray)),c,w
	addwf	fsr2l
	movf	((c:initialize_pwm@pwmArray+1)),c,w
	addwfc	fsr2h
	lfsr	1,025h
	movf	((c:initialize_pwm@pwmArray)),c,w
	addwf	fsr1l
	movf	((c:initialize_pwm@pwmArray+1)),c,w
	addwfc	fsr1h
	movff	postinc2,postinc1
	movff	postinc2,postinc1
	movff	postinc2,postinc1
	movff	postdec2,postdec1
	movf	postdec1
	movf	postdec1
	line	86
	
l675:
	movlw	high(0)
	movwf	((c:initialize_pwm@i+1)),c
	movlw	low(0)
	movwf	((c:initialize_pwm@i)),c
	
l677:
	movf	((c:initialize_pwm@i+1)),c,w
	xorlw	80h
	addlw	-((0)^80h)
	movlw	03h
	btfsc	status,2
	subwf	((c:initialize_pwm@i)),c,w
	btfss	status,0
	goto	u11
	goto	u10
u11:
	goto	l681
u10:
	goto	l46
	
l679:
	goto	l46
	line	87
	
l44:
	line	88
	
l681:
	movff	(c:initialize_pwm@i),(c:___wmul@multiplier)
	movff	(c:initialize_pwm@i+1),(c:___wmul@multiplier+1)
	movlw	high(0Bh)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0Bh)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	addwf	((c:initialize_pwm@pwmArray)),c,w
	movwf	c:fsr2l
	movf	(1+?___wmul),c,w
	addwfc	((c:initialize_pwm@pwmArray+1)),c,w
	movwf	1+c:fsr2l
	movff	(c:initialize_pwm@i),(c:___wmul@multiplier)
	movff	(c:initialize_pwm@i+1),(c:___wmul@multiplier+1)
	movlw	high(0Bh)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0Bh)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	(c:initialize_pwm@pwmArray),??_initialize_pwm+0+0
	movff	(c:initialize_pwm@pwmArray+1),??_initialize_pwm+0+0+1
	movf	(0+?___wmul),c,w
	addwf	(??_initialize_pwm+0+0),c
	movf	(1+?___wmul),c,w
	addwfc	(??_initialize_pwm+0+1),c
	movlw	low(04h)
	addwf	(??_initialize_pwm+0+0),c,w
	movwf	c:fsr1l
	movlw	high(04h)
	addwfc	(??_initialize_pwm+0+1),c,w
	movwf	1+c:fsr1l
	movff	postinc2,postinc1
	movff	postinc2,postinc1
	movff	postinc2,postinc1
	movff	postdec2,postdec1
	movf	postdec1
	movf	postdec1
	line	89
	
l683:
	movff	(c:initialize_pwm@i),(c:___wmul@multiplier)
	movff	(c:initialize_pwm@i+1),(c:___wmul@multiplier+1)
	movlw	high(0Bh)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0Bh)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	(c:initialize_pwm@pwmArray),??_initialize_pwm+0+0
	movff	(c:initialize_pwm@pwmArray+1),??_initialize_pwm+0+0+1
	movf	(0+?___wmul),c,w
	addwf	(??_initialize_pwm+0+0),c
	movf	(1+?___wmul),c,w
	addwfc	(??_initialize_pwm+0+1),c
	movlw	low(0Ah)
	addwf	(??_initialize_pwm+0+0),c,w
	movwf	c:fsr2l
	movlw	high(0Ah)
	addwfc	(??_initialize_pwm+0+1),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	(??_initialize_pwm+2+0)&0ffh,c
	movlw	(01h)&0ffh
	movwf	(??_initialize_pwm+3+0)&0ffh,c
	incf	((??_initialize_pwm+2+0)),c
	goto	u24
u25:
	bcf	status,0
	rlcf	((??_initialize_pwm+3+0)),c
u24:
	decfsz	((??_initialize_pwm+2+0)),c
	goto	u25
	movff	(c:initialize_pwm@i),(c:___wmul@multiplier)
	movff	(c:initialize_pwm@i+1),(c:___wmul@multiplier+1)
	movlw	high(0Bh)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0Bh)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	(c:initialize_pwm@pwmArray),??_initialize_pwm+4+0
	movff	(c:initialize_pwm@pwmArray+1),??_initialize_pwm+4+0+1
	movf	(0+?___wmul),c,w
	addwf	(??_initialize_pwm+4+0),c
	movf	(1+?___wmul),c,w
	addwfc	(??_initialize_pwm+4+1),c
	movlw	low(08h)
	addwf	(??_initialize_pwm+4+0),c,w
	movwf	c:fsr2l
	movlw	high(08h)
	addwfc	(??_initialize_pwm+4+1),c,w
	movwf	1+c:fsr2l
	movff	postinc2,??_initialize_pwm+6+0
	movff	postdec2,??_initialize_pwm+6+0+1
	movff	??_initialize_pwm+6+0,fsr2l
	movff	??_initialize_pwm+6+1,fsr2h
	movf	((??_initialize_pwm+3+0)),c,w
	iorwf	indf2
	line	86
	
l685:
	infsnz	((c:initialize_pwm@i)),c
	incf	((c:initialize_pwm@i+1)),c
	
l687:
	movf	((c:initialize_pwm@i+1)),c,w
	xorlw	80h
	addlw	-((0)^80h)
	movlw	03h
	btfsc	status,2
	subwf	((c:initialize_pwm@i)),c,w
	btfss	status,0
	goto	u31
	goto	u30
u31:
	goto	l681
u30:
	goto	l46
	
l45:
	line	92
	
l46:
	return
	opt stack 0
GLOBAL	__end_of_initialize_pwm
	__end_of_initialize_pwm:
	signat	_initialize_pwm,4216
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "/opt/microchip/xc8/v1.32/sources/common/Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2   36[COMRAM] unsigned int 
;;  multiplicand    2   38[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2   40[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   36[COMRAM] unsigned int 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_initialize_pwm
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.32/sources/common/Umul16.c"
	line	15
global __ptext4
__ptext4:
psect	text4
	file	"/opt/microchip/xc8/v1.32/sources/common/Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:
;incstack = 0
	opt	stack 25
	line	37
	
l667:
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
	
l669:
	movff	(c:___wmul@product),(c:?___wmul)
	movff	(c:___wmul@product+1),(c:?___wmul+1)
	goto	l78
	
l671:
	line	53
	
l78:
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	_isr

;; *************** function _isr *****************
;; Defined at:
;;		line 32 in file "xc8_pwm_timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:         15       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_handle_tick
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
global __pintcode
__pintcode:
psect	intcode
	file	"xc8_pwm_timer.c"
	line	32
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:
;incstack = 0
	opt	stack 25
	movff	pclat+0,??_isr+1
	movff	pclat+1,??_isr+2
	movff	fsr0l+0,??_isr+3
	global	int_func
	call	int_func,f	;refresh shadow registers
psect	intcode_body,class=CODE,space=0,reloc=2
global __pintcode_body
__pintcode_body:
int_func:

	pop	; remove dummy address from shadow register refresh
	movff	fsr0h+0,??_isr+4
	movff	fsr1l+0,??_isr+5
	movff	fsr1h+0,??_isr+6
	movff	fsr2l+0,??_isr+7
	movff	fsr2h+0,??_isr+8
	movff	prodl+0,??_isr+9
	movff	prodh+0,??_isr+10
	movff	tblptrl+0,??_isr+11
	movff	tblptrh+0,??_isr+12
	movff	tblptru+0,??_isr+13
	movff	tablat+0,??_isr+14
	line	36
	
i2l761:
	btfss	c:(32661/8),(32661)&7	;volatile
	goto	i2u12_41
	goto	i2u12_40
i2u12_41:
	goto	i2l55
i2u12_40:
	
i2l763:
	btfss	c:(32658/8),(32658)&7	;volatile
	goto	i2u13_41
	goto	i2u13_40
i2u13_41:
	goto	i2l55
i2u13_40:
	line	37
	
i2l765:
	btfss	((c:3969)),c,3	;volatile
	goto	i2u14_41
	goto	i2u14_40
i2u14_41:
	movlw	1
	goto	i2u14_46
i2u14_40:
	movlw	0
i2u14_46:
	movwf	(??_isr+0+0)&0ffh,c
	rlncf	((??_isr+0+0)),c
	rlncf	((??_isr+0+0)),c
	rlncf	((??_isr+0+0)),c
	movf	((c:3969)),c,w	;volatile
	xorwf	((??_isr+0+0)),c,w
	andlw	not (((1<<1)-1)<<3)
	xorwf	((??_isr+0+0)),c,w
	movwf	((c:3969)),c	;volatile
	line	38
	
i2l767:
	bcf	c:(32658/8),(32658)&7	;volatile
	line	39
	
i2l769:
		movlw	high((c:_pwm_module))
	movwf	((c:handle_tick@pwmArray+1)),c
	movlw	low((c:_pwm_module))
	movwf	((c:handle_tick@pwmArray)),c

	call	_handle_tick	;wreg free
	goto	i2l55
	line	40
	
i2l54:
	goto	i2l55
	line	43
	
i2l771:
	line	44
	
i2l55:
	movff	??_isr+14,tablat+0
	movff	??_isr+13,tblptru+0
	movff	??_isr+12,tblptrh+0
	movff	??_isr+11,tblptrl+0
	movff	??_isr+10,prodh+0
	movff	??_isr+9,prodl+0
	movff	??_isr+8,fsr2h+0
	movff	??_isr+7,fsr2l+0
	movff	??_isr+6,fsr1h+0
	movff	??_isr+5,fsr1l+0
	movff	??_isr+4,fsr0h+0
	movff	??_isr+3,fsr0l+0
	movff	??_isr+2,pclat+1
	movff	??_isr+1,pclat+0
	retfie f
	opt stack 0
GLOBAL	__end_of_isr
	__end_of_isr:
	signat	_isr,88
	global	_handle_tick

;; *************** function _handle_tick *****************
;; Defined at:
;;		line 53 in file "pwmhub.h"
;; Parameters:    Size  Location     Type
;;  pwmArray        2    6[COMRAM] PTR struct pwm_array
;;		 -> pwm_module(41), 
;; Auto vars:     Size  Location     Type
;;  i               2   19[COMRAM] int 
;;  i               2   17[COMRAM] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          9       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i2___wmul
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	file	"pwmhub.h"
	line	53
global __ptext6
__ptext6:
psect	text6
	file	"pwmhub.h"
	line	53
	global	__size_of_handle_tick
	__size_of_handle_tick	equ	__end_of_handle_tick-_handle_tick
	
_handle_tick:
;incstack = 0
	opt	stack 25
	line	57
	
i2l701:
	lfsr	2,025h
	movf	((c:handle_tick@pwmArray)),c,w
	addwf	fsr2l
	movf	((c:handle_tick@pwmArray+1)),c,w
	addwfc	fsr2h
	decf	postinc2
	movlw	0
	subwfb	postinc2
	subwfb	postinc2
	subwfb	postdec2

	line	59
	lfsr	2,025h
	movf	((c:handle_tick@pwmArray)),c,w
	addwf	fsr2l
	movf	((c:handle_tick@pwmArray+1)),c,w
	addwfc	fsr2h
	movff	postinc2,??_handle_tick+0+0
	movff	postinc2,??_handle_tick+0+0+1
	movff	postinc2,??_handle_tick+0+0+2
	movff	postinc2,??_handle_tick+0+0+3
	movf	(??_handle_tick+0+3),c,w
	iorwf (??_handle_tick+0+0),c,w
	iorwf (??_handle_tick+0+1),c,w
	iorwf (??_handle_tick+0+2),c,w

	btfss	status,2
	goto	i2u4_41
	goto	i2u4_40
i2u4_41:
	goto	i2l719
i2u4_40:
	line	61
	
i2l703:
	lfsr	2,021h
	movf	((c:handle_tick@pwmArray)),c,w
	addwf	fsr2l
	movf	((c:handle_tick@pwmArray+1)),c,w
	addwfc	fsr2h
	lfsr	1,025h
	movf	((c:handle_tick@pwmArray)),c,w
	addwf	fsr1l
	movf	((c:handle_tick@pwmArray+1)),c,w
	addwfc	fsr1h
	movff	postinc2,postinc1
	movff	postinc2,postinc1
	movff	postinc2,postinc1
	movff	postdec2,postdec1
	movf	postdec1
	movf	postdec1
	line	63
	
i2l705:
	movlw	high(0)
	movwf	((c:handle_tick@i+1)),c
	movlw	low(0)
	movwf	((c:handle_tick@i)),c
	
i2l707:
	movf	((c:handle_tick@i+1)),c,w
	xorlw	80h
	addlw	-((0)^80h)
	movlw	03h
	btfsc	status,2
	subwf	((c:handle_tick@i)),c,w
	btfss	status,0
	goto	i2u5_41
	goto	i2u5_40
i2u5_41:
	goto	i2l711
i2u5_40:
	goto	i2l41
	
i2l709:
	goto	i2l41
	line	64
	
i2l32:
	line	65
	
i2l711:
	movff	(c:handle_tick@i),(c:i2___wmul@multiplier)
	movff	(c:handle_tick@i+1),(c:i2___wmul@multiplier+1)
	movlw	high(0Bh)
	movwf	((c:i2___wmul@multiplicand+1)),c
	movlw	low(0Bh)
	movwf	((c:i2___wmul@multiplicand)),c
	call	i2___wmul	;wreg free
	movf	(0+?i2___wmul),c,w
	addwf	((c:handle_tick@pwmArray)),c,w
	movwf	c:fsr2l
	movf	(1+?i2___wmul),c,w
	addwfc	((c:handle_tick@pwmArray+1)),c,w
	movwf	1+c:fsr2l
	movff	(c:handle_tick@i),(c:i2___wmul@multiplier)
	movff	(c:handle_tick@i+1),(c:i2___wmul@multiplier+1)
	movlw	high(0Bh)
	movwf	((c:i2___wmul@multiplicand+1)),c
	movlw	low(0Bh)
	movwf	((c:i2___wmul@multiplicand)),c
	call	i2___wmul	;wreg free
	movff	(c:handle_tick@pwmArray),??_handle_tick+0+0
	movff	(c:handle_tick@pwmArray+1),??_handle_tick+0+0+1
	movf	(0+?i2___wmul),c,w
	addwf	(??_handle_tick+0+0),c
	movf	(1+?i2___wmul),c,w
	addwfc	(??_handle_tick+0+1),c
	movlw	low(04h)
	addwf	(??_handle_tick+0+0),c,w
	movwf	c:fsr1l
	movlw	high(04h)
	addwfc	(??_handle_tick+0+1),c,w
	movwf	1+c:fsr1l
	movff	postinc2,postinc1
	movff	postinc2,postinc1
	movff	postinc2,postinc1
	movff	postdec2,postdec1
	movf	postdec1
	movf	postdec1
	line	66
	
i2l713:
	movff	(c:handle_tick@i),(c:i2___wmul@multiplier)
	movff	(c:handle_tick@i+1),(c:i2___wmul@multiplier+1)
	movlw	high(0Bh)
	movwf	((c:i2___wmul@multiplicand+1)),c
	movlw	low(0Bh)
	movwf	((c:i2___wmul@multiplicand)),c
	call	i2___wmul	;wreg free
	movff	(c:handle_tick@pwmArray),??_handle_tick+0+0
	movff	(c:handle_tick@pwmArray+1),??_handle_tick+0+0+1
	movf	(0+?i2___wmul),c,w
	addwf	(??_handle_tick+0+0),c
	movf	(1+?i2___wmul),c,w
	addwfc	(??_handle_tick+0+1),c
	movlw	low(0Ah)
	addwf	(??_handle_tick+0+0),c,w
	movwf	c:fsr2l
	movlw	high(0Ah)
	addwfc	(??_handle_tick+0+1),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	(??_handle_tick+2+0)&0ffh,c
	movlw	(01h)&0ffh
	movwf	(??_handle_tick+3+0)&0ffh,c
	incf	((??_handle_tick+2+0)),c
	goto	i2u6_44
i2u6_45:
	bcf	status,0
	rlcf	((??_handle_tick+3+0)),c
i2u6_44:
	decfsz	((??_handle_tick+2+0)),c
	goto	i2u6_45
	movff	(c:handle_tick@i),(c:i2___wmul@multiplier)
	movff	(c:handle_tick@i+1),(c:i2___wmul@multiplier+1)
	movlw	high(0Bh)
	movwf	((c:i2___wmul@multiplicand+1)),c
	movlw	low(0Bh)
	movwf	((c:i2___wmul@multiplicand)),c
	call	i2___wmul	;wreg free
	movff	(c:handle_tick@pwmArray),??_handle_tick+4+0
	movff	(c:handle_tick@pwmArray+1),??_handle_tick+4+0+1
	movf	(0+?i2___wmul),c,w
	addwf	(??_handle_tick+4+0),c
	movf	(1+?i2___wmul),c,w
	addwfc	(??_handle_tick+4+1),c
	movlw	low(08h)
	addwf	(??_handle_tick+4+0),c,w
	movwf	c:fsr2l
	movlw	high(08h)
	addwfc	(??_handle_tick+4+1),c,w
	movwf	1+c:fsr2l
	movff	postinc2,??_handle_tick+6+0
	movff	postdec2,??_handle_tick+6+0+1
	movff	??_handle_tick+6+0,fsr2l
	movff	??_handle_tick+6+1,fsr2h
	movf	((??_handle_tick+3+0)),c,w
	iorwf	indf2
	line	63
	
i2l715:
	infsnz	((c:handle_tick@i)),c
	incf	((c:handle_tick@i+1)),c
	
i2l717:
	movf	((c:handle_tick@i+1)),c,w
	xorlw	80h
	addlw	-((0)^80h)
	movlw	03h
	btfsc	status,2
	subwf	((c:handle_tick@i)),c,w
	btfss	status,0
	goto	i2u7_41
	goto	i2u7_40
i2u7_41:
	goto	i2l711
i2u7_40:
	goto	i2l41
	
i2l33:
	line	68
	goto	i2l41
	line	70
	
i2l31:
	line	73
	
i2l719:
	movlw	high(0)
	movwf	((c:handle_tick@i_237+1)),c
	movlw	low(0)
	movwf	((c:handle_tick@i_237)),c
	
i2l721:
	movf	((c:handle_tick@i_237+1)),c,w
	xorlw	80h
	addlw	-((0)^80h)
	movlw	03h
	btfsc	status,2
	subwf	((c:handle_tick@i_237)),c,w
	btfss	status,0
	goto	i2u8_41
	goto	i2u8_40
i2u8_41:
	goto	i2l725
i2u8_40:
	goto	i2l41
	
i2l723:
	goto	i2l41
	line	74
	
i2l35:
	line	77
	
i2l725:
	movff	(c:handle_tick@i_237),(c:i2___wmul@multiplier)
	movff	(c:handle_tick@i_237+1),(c:i2___wmul@multiplier+1)
	movlw	high(0Bh)
	movwf	((c:i2___wmul@multiplicand+1)),c
	movlw	low(0Bh)
	movwf	((c:i2___wmul@multiplicand)),c
	call	i2___wmul	;wreg free
	movff	(c:handle_tick@pwmArray),??_handle_tick+0+0
	movff	(c:handle_tick@pwmArray+1),??_handle_tick+0+0+1
	movf	(0+?i2___wmul),c,w
	addwf	(??_handle_tick+0+0),c
	movf	(1+?i2___wmul),c,w
	addwfc	(??_handle_tick+0+1),c
	movlw	low(04h)
	addwf	(??_handle_tick+0+0),c,w
	movwf	c:fsr2l
	movlw	high(04h)
	addwfc	(??_handle_tick+0+1),c,w
	movwf	1+c:fsr2l
	movff	postinc2,??_handle_tick+2+0
	movff	postinc2,??_handle_tick+2+0+1
	movff	postinc2,??_handle_tick+2+0+2
	movff	postinc2,??_handle_tick+2+0+3
	decf	(??_handle_tick+2+0),c,w
	iorwf (??_handle_tick+2+1),c,w
	iorwf (??_handle_tick+2+2),c,w
	iorwf (??_handle_tick+2+3),c,w

	btfss	status,2
	goto	i2u9_41
	goto	i2u9_40
i2u9_41:
	goto	i2l729
i2u9_40:
	
i2l727:
	movff	(c:handle_tick@i_237),(c:i2___wmul@multiplier)
	movff	(c:handle_tick@i_237+1),(c:i2___wmul@multiplier+1)
	movlw	high(0Bh)
	movwf	((c:i2___wmul@multiplicand+1)),c
	movlw	low(0Bh)
	movwf	((c:i2___wmul@multiplicand)),c
	call	i2___wmul	;wreg free
	movff	(c:handle_tick@pwmArray),??_handle_tick+0+0
	movff	(c:handle_tick@pwmArray+1),??_handle_tick+0+0+1
	movf	(0+?i2___wmul),c,w
	addwf	(??_handle_tick+0+0),c
	movf	(1+?i2___wmul),c,w
	addwfc	(??_handle_tick+0+1),c
	movlw	low(0Ah)
	addwf	(??_handle_tick+0+0),c,w
	movwf	c:fsr2l
	movlw	high(0Ah)
	addwfc	(??_handle_tick+0+1),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	(??_handle_tick+2+0)&0ffh,c
	movlw	(01h)&0ffh
	movwf	(??_handle_tick+3+0)&0ffh,c
	incf	((??_handle_tick+2+0)),c
	goto	i2u10_44
i2u10_45:
	bcf	status,0
	rlcf	((??_handle_tick+3+0)),c
i2u10_44:
	decfsz	((??_handle_tick+2+0)),c
	goto	i2u10_45
	movf	((??_handle_tick+3+0)),c,w
	xorlw	0ffh
	movwf	(??_handle_tick+4+0)&0ffh,c
	movff	(c:handle_tick@i_237),(c:i2___wmul@multiplier)
	movff	(c:handle_tick@i_237+1),(c:i2___wmul@multiplier+1)
	movlw	high(0Bh)
	movwf	((c:i2___wmul@multiplicand+1)),c
	movlw	low(0Bh)
	movwf	((c:i2___wmul@multiplicand)),c
	call	i2___wmul	;wreg free
	movff	(c:handle_tick@pwmArray),??_handle_tick+5+0
	movff	(c:handle_tick@pwmArray+1),??_handle_tick+5+0+1
	movf	(0+?i2___wmul),c,w
	addwf	(??_handle_tick+5+0),c
	movf	(1+?i2___wmul),c,w
	addwfc	(??_handle_tick+5+1),c
	movlw	low(08h)
	addwf	(??_handle_tick+5+0),c,w
	movwf	c:fsr2l
	movlw	high(08h)
	addwfc	(??_handle_tick+5+1),c,w
	movwf	1+c:fsr2l
	movff	postinc2,??_handle_tick+7+0
	movff	postdec2,??_handle_tick+7+0+1
	movff	??_handle_tick+7+0,fsr2l
	movff	??_handle_tick+7+1,fsr2h
	movf	((??_handle_tick+4+0)),c,w
	andwf	indf2
	goto	i2l731
	
i2l38:
	
i2l729:
	movff	(c:handle_tick@i_237),(c:i2___wmul@multiplier)
	movff	(c:handle_tick@i_237+1),(c:i2___wmul@multiplier+1)
	movlw	high(0Bh)
	movwf	((c:i2___wmul@multiplicand+1)),c
	movlw	low(0Bh)
	movwf	((c:i2___wmul@multiplicand)),c
	call	i2___wmul	;wreg free
	movff	(c:handle_tick@pwmArray),??_handle_tick+0+0
	movff	(c:handle_tick@pwmArray+1),??_handle_tick+0+0+1
	movf	(0+?i2___wmul),c,w
	addwf	(??_handle_tick+0+0),c
	movf	(1+?i2___wmul),c,w
	addwfc	(??_handle_tick+0+1),c
	movlw	low(04h)
	addwf	(??_handle_tick+0+0),c,w
	movwf	c:fsr2l
	movlw	high(04h)
	addwfc	(??_handle_tick+0+1),c,w
	movwf	1+c:fsr2l
	decf	postinc2
	movlw	0
	subwfb	postinc2
	subwfb	postinc2
	subwfb	postdec2

	goto	i2l731
	
i2l40:
	line	73
	
i2l731:
	infsnz	((c:handle_tick@i_237)),c
	incf	((c:handle_tick@i_237+1)),c
	
i2l733:
	movf	((c:handle_tick@i_237+1)),c,w
	xorlw	80h
	addlw	-((0)^80h)
	movlw	03h
	btfsc	status,2
	subwf	((c:handle_tick@i_237)),c,w
	btfss	status,0
	goto	i2u11_41
	goto	i2u11_40
i2u11_41:
	goto	i2l725
i2u11_40:
	goto	i2l41
	
i2l36:
	goto	i2l41
	line	79
	
i2l34:
	line	80
	
i2l41:
	return
	opt stack 0
GLOBAL	__end_of_handle_tick
	__end_of_handle_tick:
	signat	_handle_tick,4216
	global	i2___wmul

;; *************** function i2___wmul *****************
;; Defined at:
;;		line 15 in file "/opt/microchip/xc8/v1.32/sources/common/Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMRAM] unsigned int 
;;  multiplicand    2    2[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  __wmul          2    4[COMRAM] unsigned int 
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
;;		_handle_tick
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.32/sources/common/Umul16.c"
	line	15
global __ptext7
__ptext7:
psect	text7
	file	"/opt/microchip/xc8/v1.32/sources/common/Umul16.c"
	line	15
	global	__size_ofi2___wmul
	__size_ofi2___wmul	equ	__end_ofi2___wmul-i2___wmul
	
i2___wmul:
;incstack = 0
	opt	stack 25
	line	37
	
i2l695:
	movf	((c:i2___wmul@multiplier)),c,w
	mulwf	((c:i2___wmul@multiplicand)),c
	movff	prodl,(c:i2___wmul@product)
	movff	prodh,(c:i2___wmul@product+1)
	line	38
	movf	((c:i2___wmul@multiplier)),c,w
	mulwf	(0+((c:i2___wmul@multiplicand)+01h)),c
	movf	(prodl),c,w
	addwf	((c:i2___wmul@product+1)),c

	line	39
	movf	(0+((c:i2___wmul@multiplier)+01h)),c,w
	mulwf	((c:i2___wmul@multiplicand)),c
	movf	(prodl),c,w
	addwf	((c:i2___wmul@product+1)),c

	line	52
	
i2l697:
	movff	(c:i2___wmul@product),(c:?i2___wmul)
	movff	(c:i2___wmul@product+1),(c:?i2___wmul+1)
	goto	i2l78
	
i2l699:
	line	53
	
i2l78:
	return
	opt stack 0
GLOBAL	__end_ofi2___wmul
	__end_ofi2___wmul:
	signat	i2___wmul,90
	GLOBAL	__activetblptr
__activetblptr	EQU	0
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
