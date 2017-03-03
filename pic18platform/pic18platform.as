opt subtitle "Microchip Technology Omniscient Code Generator v1.40 (Free mode) build 201612010151"

opt pagewidth 120

	opt lm

	processor	18F46K20
opt include "/opt/microchip/xc8/v1.40/include/18f46k20.cgen.inc"
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
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 51 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
SSPMSK equ 0F77h ;# 
# 112 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
SLRCON equ 0F78h ;# 
# 155 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
CM2CON1 equ 0F79h ;# 
# 193 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
CM2CON0 equ 0F7Ah ;# 
# 262 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
CM1CON0 equ 0F7Bh ;# 
# 331 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
WPUB equ 0F7Ch ;# 
# 392 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
IOCB equ 0F7Dh ;# 
# 430 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
ANSEL equ 0F7Eh ;# 
# 491 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
ANSELH equ 0F7Fh ;# 
# 534 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
PORTA equ 0F80h ;# 
# 769 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
PORTB equ 0F81h ;# 
# 976 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
PORTC equ 0F82h ;# 
# 1163 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
PORTD equ 0F83h ;# 
# 1304 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
PORTE equ 0F84h ;# 
# 1509 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
LATA equ 0F89h ;# 
# 1620 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
LATB equ 0F8Ah ;# 
# 1731 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
LATC equ 0F8Bh ;# 
# 1842 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
LATD equ 0F8Ch ;# 
# 1953 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
LATE equ 0F8Dh ;# 
# 2004 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
TRISA equ 0F92h ;# 
# 2009 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
DDRA equ 0F92h ;# 
# 2225 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
TRISB equ 0F93h ;# 
# 2230 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
DDRB equ 0F93h ;# 
# 2446 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
TRISC equ 0F94h ;# 
# 2451 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
DDRC equ 0F94h ;# 
# 2667 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
TRISD equ 0F95h ;# 
# 2672 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
DDRD equ 0F95h ;# 
# 2888 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
TRISE equ 0F96h ;# 
# 2893 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
DDRE equ 0F96h ;# 
# 3039 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
OSCTUNE equ 0F9Bh ;# 
# 3108 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
PIE1 equ 0F9Dh ;# 
# 3184 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
PIR1 equ 0F9Eh ;# 
# 3260 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
IPR1 equ 0F9Fh ;# 
# 3336 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
PIE2 equ 0FA0h ;# 
# 3415 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
PIR2 equ 0FA1h ;# 
# 3494 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
IPR2 equ 0FA2h ;# 
# 3573 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
EECON1 equ 0FA6h ;# 
# 3638 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
EECON2 equ 0FA7h ;# 
# 3644 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
EEDATA equ 0FA8h ;# 
# 3650 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
EEADR equ 0FA9h ;# 
# 3711 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
EEADRH equ 0FAAh ;# 
# 3736 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
RCSTA equ 0FABh ;# 
# 3741 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
RCSTA1 equ 0FABh ;# 
# 3945 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
TXSTA equ 0FACh ;# 
# 3950 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
TXSTA1 equ 0FACh ;# 
# 4200 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
TXREG equ 0FADh ;# 
# 4205 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
TXREG1 equ 0FADh ;# 
# 4211 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
RCREG equ 0FAEh ;# 
# 4216 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
RCREG1 equ 0FAEh ;# 
# 4222 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
SPBRG equ 0FAFh ;# 
# 4227 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
SPBRG1 equ 0FAFh ;# 
# 4233 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
SPBRGH equ 0FB0h ;# 
# 4239 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
T3CON equ 0FB1h ;# 
# 4350 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
TMR3 equ 0FB2h ;# 
# 4356 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
TMR3L equ 0FB2h ;# 
# 4362 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
TMR3H equ 0FB3h ;# 
# 4368 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
CVRCON2 equ 0FB4h ;# 
# 4394 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
CVRCON equ 0FB5h ;# 
# 4472 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
ECCP1AS equ 0FB6h ;# 
# 4553 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
PWM1CON equ 0FB7h ;# 
# 4622 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
BAUDCON equ 0FB8h ;# 
# 4627 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
BAUDCTL equ 0FB8h ;# 
# 4787 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
PSTRCON equ 0FB9h ;# 
# 4830 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
CCP2CON equ 0FBAh ;# 
# 4893 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
CCPR2 equ 0FBBh ;# 
# 4899 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
CCPR2L equ 0FBBh ;# 
# 4905 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
CCPR2H equ 0FBCh ;# 
# 4911 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
CCP1CON equ 0FBDh ;# 
# 4992 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
CCPR1 equ 0FBEh ;# 
# 4998 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
CCPR1L equ 0FBEh ;# 
# 5004 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
CCPR1H equ 0FBFh ;# 
# 5010 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
ADCON2 equ 0FC0h ;# 
# 5080 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
ADCON1 equ 0FC1h ;# 
# 5130 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
ADCON0 equ 0FC2h ;# 
# 5248 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
ADRES equ 0FC3h ;# 
# 5254 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
ADRESL equ 0FC3h ;# 
# 5260 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
ADRESH equ 0FC4h ;# 
# 5266 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
SSPCON2 equ 0FC5h ;# 
# 5327 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
SSPCON1 equ 0FC6h ;# 
# 5396 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
SSPSTAT equ 0FC7h ;# 
# 5620 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
SSPADD equ 0FC8h ;# 
# 5626 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
SSPBUF equ 0FC9h ;# 
# 5632 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
T2CON equ 0FCAh ;# 
# 5702 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
PR2 equ 0FCBh ;# 
# 5707 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
MEMCON equ 0FCBh ;# 
# 5811 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
TMR2 equ 0FCCh ;# 
# 5817 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
T1CON equ 0FCDh ;# 
# 5919 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
TMR1 equ 0FCEh ;# 
# 5925 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
TMR1L equ 0FCEh ;# 
# 5931 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
TMR1H equ 0FCFh ;# 
# 5937 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
RCON equ 0FD0h ;# 
# 6069 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
WDTCON equ 0FD1h ;# 
# 6096 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
HLVDCON equ 0FD2h ;# 
# 6101 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
LVDCON equ 0FD2h ;# 
# 6365 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
OSCCON equ 0FD3h ;# 
# 6441 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
T0CON equ 0FD5h ;# 
# 6510 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
TMR0 equ 0FD6h ;# 
# 6516 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
TMR0L equ 0FD6h ;# 
# 6522 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
TMR0H equ 0FD7h ;# 
# 6528 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
STATUS equ 0FD8h ;# 
# 6598 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
FSR2 equ 0FD9h ;# 
# 6604 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
FSR2L equ 0FD9h ;# 
# 6610 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
FSR2H equ 0FDAh ;# 
# 6616 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
PLUSW2 equ 0FDBh ;# 
# 6622 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
PREINC2 equ 0FDCh ;# 
# 6628 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
POSTDEC2 equ 0FDDh ;# 
# 6634 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
POSTINC2 equ 0FDEh ;# 
# 6640 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
INDF2 equ 0FDFh ;# 
# 6646 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
BSR equ 0FE0h ;# 
# 6652 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
FSR1 equ 0FE1h ;# 
# 6658 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
FSR1L equ 0FE1h ;# 
# 6664 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
FSR1H equ 0FE2h ;# 
# 6670 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
PLUSW1 equ 0FE3h ;# 
# 6676 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
PREINC1 equ 0FE4h ;# 
# 6682 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
POSTDEC1 equ 0FE5h ;# 
# 6688 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
POSTINC1 equ 0FE6h ;# 
# 6694 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
INDF1 equ 0FE7h ;# 
# 6700 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
WREG equ 0FE8h ;# 
# 6711 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
FSR0 equ 0FE9h ;# 
# 6717 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
FSR0L equ 0FE9h ;# 
# 6723 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
FSR0H equ 0FEAh ;# 
# 6729 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
PLUSW0 equ 0FEBh ;# 
# 6735 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
PREINC0 equ 0FECh ;# 
# 6741 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
POSTDEC0 equ 0FEDh ;# 
# 6747 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
POSTINC0 equ 0FEEh ;# 
# 6753 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
INDF0 equ 0FEFh ;# 
# 6759 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
INTCON3 equ 0FF0h ;# 
# 6850 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
INTCON2 equ 0FF1h ;# 
# 6919 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
INTCON equ 0FF2h ;# 
# 7035 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
PROD equ 0FF3h ;# 
# 7041 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
PRODL equ 0FF3h ;# 
# 7047 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
PRODH equ 0FF4h ;# 
# 7053 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
TABLAT equ 0FF5h ;# 
# 7061 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
TBLPTR equ 0FF6h ;# 
# 7067 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
TBLPTRL equ 0FF6h ;# 
# 7073 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
TBLPTRH equ 0FF7h ;# 
# 7079 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
TBLPTRU equ 0FF8h ;# 
# 7087 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
PCLAT equ 0FF9h ;# 
# 7094 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
PC equ 0FF9h ;# 
# 7100 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
PCL equ 0FF9h ;# 
# 7106 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
PCLATH equ 0FFAh ;# 
# 7112 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
PCLATU equ 0FFBh ;# 
# 7118 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
STKPTR equ 0FFCh ;# 
# 7191 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
TOS equ 0FFDh ;# 
# 7197 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
TOSL equ 0FFDh ;# 
# 7203 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
TOSH equ 0FFEh ;# 
# 7209 "/opt/microchip/xc8/v1.40/include/pic18f46k20.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_OpenUSART
	FNCALL	_main,_increment
	FNCALL	_main,_putsUSART
	FNCALL	_main,_sprintf
	FNROOT	_main
	global	_serialbuffer
	global	_OSCCON
_OSCCON	set	0xFD3
	global	_OSCTUNE
_OSCTUNE	set	0xF9B
	global	_RCSTAbits
_RCSTAbits	set	0xFAB
	global	_TRISBbits
_TRISBbits	set	0xF93
	global	_TXREG
_TXREG	set	0xFAD
	global	_LATB
_LATB	set	0xF8A
	global	_TXIF
_TXIF	set	0x7CF4
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	
STR_1:
	db	77	;'M'
	db	65	;'A'
	db	73	;'I'
	db	78	;'N'
	db	32
	db	83	;'S'
	db	84	;'T'
	db	65	;'A'
	db	82	;'R'
	db	84	;'T'
	db	32
	db	10
	db	0
; #config settings
global __CFG_FOSC$INTIO7
__CFG_FOSC$INTIO7 equ 0x0
global __CFG_FCMEN$OFF
__CFG_FCMEN$OFF equ 0x0
global __CFG_IESO$OFF
__CFG_IESO$OFF equ 0x0
global __CFG_PWRT$OFF
__CFG_PWRT$OFF equ 0x0
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_BORV$30
__CFG_BORV$30 equ 0x0
global __CFG_WDTEN$OFF
__CFG_WDTEN$OFF equ 0x0
global __CFG_WDTPS$32768
__CFG_WDTPS$32768 equ 0x0
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
global __CFG_WRTC$OFF
__CFG_WRTC$OFF equ 0x0
global __CFG_WRTB$OFF
__CFG_WRTB$OFF equ 0x0
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
	file	"pic18platform.as"
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
	global	_serialbuffer
_serialbuffer:
       ds      30
	file	"pic18platform.as"
	line	#
psect	cinit
; Clear objects allocated to COMRAM (30 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	30
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	GLOBAL	__Lsmallconst
	movlw	low highword(__Lsmallconst)
	movwf	tblptru
	movlw	high(__Lsmallconst)
	movwf	tblptrh
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_OpenUSART:	; 1 bytes @ 0x0
??_OpenUSART:	; 1 bytes @ 0x0
?_putsUSART:	; 1 bytes @ 0x0
??_putsUSART:	; 1 bytes @ 0x0
?_increment:	; 1 bytes @ 0x0
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	_OpenUSART$1
_OpenUSART$1:	; 2 bytes @ 0x0
	global	_putsUSART$0
_putsUSART$0:	; 2 bytes @ 0x0
	global	increment@p_port
increment@p_port:	; 2 bytes @ 0x0
	global	sprintf@sp
sprintf@sp:	; 2 bytes @ 0x0
	ds   2
??_increment:	; 1 bytes @ 0x2
	global	sprintf@f
sprintf@f:	; 2 bytes @ 0x2
	ds   2
??_sprintf:	; 1 bytes @ 0x4
	global	sprintf@ap
sprintf@ap:	; 2 bytes @ 0x4
	ds   2
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x6
	ds   1
??_main:	; 1 bytes @ 0x7
	ds   1
	global	main@port
main@port:	; 2 bytes @ 0x8
	ds   2
	global	main@dead_cycles
main@dead_cycles:	; 2 bytes @ 0xA
	ds   2
;!
;!Data Sizes:
;!    Strings     13
;!    Constant    0
;!    Data        0
;!    BSS         30
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     12      42
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
;!    putsUSART$0	PTR unsigned char  size(2) Largest target is 30
;!		 -> serialbuffer(COMRAM[30]), 
;!
;!    sprintf@f	PTR const unsigned char  size(2) Largest target is 13
;!		 -> STR_1(CODE[13]), 
;!
;!    sprintf@sp	PTR unsigned char  size(2) Largest target is 30
;!		 -> serialbuffer(COMRAM[30]), 
;!
;!    sprintf@ap	PTR void [1] size(2) Largest target is 2
;!		 -> ?_sprintf(COMRAM[2]), 
;!
;!    main@port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(SFR[1]), 
;!
;!    increment@p_port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(SFR[1]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_sprintf
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 5     5      0     486
;!                                              7 COMRAM     5     5      0
;!                          _OpenUSART
;!                          _increment
;!                          _putsUSART
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (1) _sprintf                                             20    16      4     219
;!                                              0 COMRAM     7     3      4
;! ---------------------------------------------------------------------------------
;! (1) _putsUSART                                            2     0      2      11
;! ---------------------------------------------------------------------------------
;! (1) _increment                                            2     0      2      86
;!                                              0 COMRAM     2     0      2
;! ---------------------------------------------------------------------------------
;! (1) _OpenUSART                                            2     0      2      11
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _OpenUSART
;!   _increment
;!   _putsUSART
;!   _sprintf
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
;!COMRAM              5F      C      2A       1       44.2%
;!BITSFR               0      0       0     200        0.0%
;!SFR                  0      0       0     200        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      2A      32        0.0%
;!DATA                 0      0      2A       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 52 in file "pic18platform.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  dead_cycles     2   10[COMRAM] unsigned int 
;;  port            2    8[COMRAM] PTR volatile unsigned ch
;;		 -> LATB(1), 
;; Return value:  Size  Location     Type
;;                  2   45[None  ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclath, btemp, btemp+1, btemp+2, btemp+3, btemp+4, btemp+5, btemp+6, btemp+7, btemp+8, btemp+9, btemp+10, btemp+11, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_OpenUSART
;;		_increment
;;		_putsUSART
;;		_sprintf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"pic18platform.c"
	line	52
global __ptext0
__ptext0:
psect	text0
	file	"pic18platform.c"
	line	52
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 30
	line	57
	
l767:
	movlw	high(019h)
	movwf	((c:_OpenUSART$1+1)),c
	movlw	low(019h)
	movwf	((c:_OpenUSART$1)),c
	movlw	(034h)&0ffh
	
	call	_OpenUSART
	line	58
	
l769:
	bsf	((c:4011)),c,4	;volatile
	line	60
	
l771:
		movlw	low(_serialbuffer)
	movwf	((c:sprintf@sp)),c
	movlw	high(_serialbuffer)
	movwf	((c:sprintf@sp+1)),c

		movlw	low(STR_1)
	movwf	((c:sprintf@f)),c
	movlw	high(STR_1)
	movwf	((c:sprintf@f+1)),c

	call	_sprintf	;wreg free
	line	61
	
l773:
		movlw	low(_serialbuffer)
	movwf	((c:_putsUSART$0)),c
	movlw	high(_serialbuffer)
	movwf	((c:_putsUSART$0+1)),c

	call	_putsUSART	;wreg free
	line	64
	
l775:
	bcf	((c:3987)),c,0	;volatile
	line	65
	
l777:
	bcf	((c:3987)),c,1	;volatile
	line	66
	
l779:
	bcf	((c:3987)),c,2	;volatile
	line	68
	
l781:
		movlw	low(3978)
	movwf	((c:main@port)),c
	movlw	high(3978)
	movwf	((c:main@port+1)),c

	line	70
	
l783:
	movlw	low(06h)
	movwf	((c:3978)),c	;volatile
	line	74
	
l785:
	movlw	high(0)
	movwf	((c:main@dead_cycles+1)),c
	movlw	low(0)
	movwf	((c:main@dead_cycles)),c
	
l787:
		movlw	136
	subwf	 ((c:main@dead_cycles)),c,w
	movlw	19
	subwfb	((c:main@dead_cycles+1)),c,w
	btfss	status,0
	goto	u121
	goto	u120

u121:
	goto	l791
u120:
	goto	l795
	
l789:
	goto	l795
	
l46:
	
l791:
	infsnz	((c:main@dead_cycles)),c
	incf	((c:main@dead_cycles+1)),c
	
l793:
		movlw	136
	subwf	 ((c:main@dead_cycles)),c,w
	movlw	19
	subwfb	((c:main@dead_cycles+1)),c,w
	btfss	status,0
	goto	u131
	goto	u130

u131:
	goto	l791
u130:
	goto	l795
	
l47:
	line	75
	
l795:
	movff	(c:main@port),fsr2l
	movff	(c:main@port+1),fsr2h
	incf	indf2

	goto	l797
	line	77
	
l48:
	line	80
	
l797:
	movlw	high(0)
	movwf	((c:main@dead_cycles+1)),c
	movlw	low(0)
	movwf	((c:main@dead_cycles)),c
	
l799:
		movlw	136
	subwf	 ((c:main@dead_cycles)),c,w
	movlw	19
	subwfb	((c:main@dead_cycles+1)),c,w
	btfss	status,0
	goto	u141
	goto	u140

u141:
	goto	l803
u140:
	goto	l807
	
l801:
	goto	l807
	
l49:
	
l803:
	infsnz	((c:main@dead_cycles)),c
	incf	((c:main@dead_cycles+1)),c
	
l805:
		movlw	136
	subwf	 ((c:main@dead_cycles)),c,w
	movlw	19
	subwfb	((c:main@dead_cycles+1)),c,w
	btfss	status,0
	goto	u151
	goto	u150

u151:
	goto	l803
u150:
	goto	l807
	
l50:
	line	81
	
l807:
	movff	(c:main@port),fsr2l
	movff	(c:main@port+1),fsr2h
	movlw	7
	xorwf	postinc2,w
	btfss	status,2
	goto	u161
	goto	u160

u161:
	goto	l811
u160:
	line	82
	
l809:
	movff	(c:main@port),fsr2l
	movff	(c:main@port+1),fsr2h
	movlw	low(0)
	movwf	indf2
	goto	l797
	line	83
	
l51:
	line	85
	
l811:
		movlw	low(3978)
	movwf	((c:increment@p_port)),c
	movlw	high(3978)
	movwf	((c:increment@p_port+1)),c

	call	_increment	;wreg free
	goto	l797
	
l52:
	goto	l797
	line	86
	
l53:
	line	77
	goto	l797
	
l54:
	line	87
	
l55:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 492 in file "/opt/microchip/xc8/v1.40/sources/common/doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              2    0[COMRAM] PTR unsigned char 
;;		 -> serialbuffer(30), 
;;  f               2    2[COMRAM] PTR const unsigned char 
;;		 -> STR_1(13), 
;; Auto vars:     Size  Location     Type
;;  tmpval          4    0        struct .
;;  cp              3    0        PTR const unsigned char 
;;  ap              2    4[COMRAM] PTR void [1]
;;		 -> ?_sprintf(2), 
;;  len             2    0        unsigned int 
;;  val             2    0        unsigned int 
;;  c               1    6[COMRAM] char 
;;  flag            1    0        unsigned char 
;;  prec            1    0        char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.40/sources/common/doprnt.c"
	line	492
global __ptext1
__ptext1:
psect	text1
	file	"/opt/microchip/xc8/v1.40/sources/common/doprnt.c"
	line	492
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:
;incstack = 0
	opt	stack 30
	line	533
	
l755:
		movlw	low(?_sprintf+04h)
	movwf	((c:sprintf@ap)),c
	movlw	high(?_sprintf+04h)
	movwf	((c:sprintf@ap+1)),c

	line	536
	goto	l761
	
l61:
	line	541
	
l757:
	movff	(c:sprintf@sp),fsr2l
	movff	(c:sprintf@sp+1),fsr2h
	movff	(c:sprintf@c),indf2

	
l759:
	infsnz	((c:sprintf@sp)),c
	incf	((c:sprintf@sp+1)),c
	line	542
	goto	l761
	line	1533
	
l60:
	line	536
	
l761:
	movff	(c:sprintf@f),tblptrl
	movff	(c:sprintf@f+1),tblptrh
	infsnz	((c:sprintf@f)),c
	incf	((c:sprintf@f+1)),c
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movff	tablat,(c:sprintf@c)
	movf	((c:sprintf@c)),c,w
	btfss	status,2
	goto	u111
	goto	u110
u111:
	goto	l757
u110:
	goto	l763
	
l62:
	line	1538
	
l763:
	movff	(c:sprintf@sp),fsr2l
	movff	(c:sprintf@sp+1),fsr2h
	movlw	low(0)
	movwf	indf2
	goto	l63
	line	1540
	
l765:
	line	1541
;	Return value of _sprintf is never used
	
l63:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
	signat	_sprintf,4698
	global	_putsUSART
	global	_increment

;; *************** function _increment *****************
;; Defined at:
;;		line 46 in file "pic18platform.c"
;; Parameters:    Size  Location     Type
;;  p_port          2    0[COMRAM] PTR volatile unsigned ch
;;		 -> LATB(1), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		fsr2l, fsr2h, status,2, status,0
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	file	"pic18platform.c"
	line	46
global __ptext2
__ptext2:
psect	text2
	file	"pic18platform.c"
	line	46
	global	__size_of_increment
	__size_of_increment	equ	__end_of_increment-_increment
	
_increment:
;incstack = 0
	opt	stack 30
	line	48
	
l753:
	movff	(c:increment@p_port),fsr2l
	movff	(c:increment@p_port+1),fsr2h
	incf	indf2

	line	50
	
l43:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_increment
	__end_of_increment:
	signat	_increment,4217
	global	_OpenUSART
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
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 0
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
