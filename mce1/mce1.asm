;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.1 #8747 (Jul 10 2013) (Linux)
; This file was generated Wed Jul 31 09:09:14 2013
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------

	.ident "SDCC version 3.3.1 #8747 [pic16 port]"
	.file	"mce1.c"
	list	p=18f46k20
	radix	dec
	__config 0x300001, 0x38
	__config 0x300002, 0xff
	__config 0x300003, 0xfe
	__config 0x300005, 0xfb
	__config 0x300006, 0xbb
	__config 0x300008, 0xff
	__config 0x300009, 0xff
	__config 0x30000a, 0xff
	__config 0x30000b, 0xff
	__config 0x30000c, 0xff
	__config 0x30000d, 0xff


;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_dvar
	global	_cycle_eater
	global	_main

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	_SSPMSKbits
	extern	_SLRCONbits
	extern	_CM2CON1bits
	extern	_CM2CON0bits
	extern	_CM1CON0bits
	extern	_WPUBbits
	extern	_IOCBbits
	extern	_ANSELbits
	extern	_ANSELHbits
	extern	_PORTAbits
	extern	_PORTBbits
	extern	_PORTCbits
	extern	_PORTDbits
	extern	_PORTEbits
	extern	_LATAbits
	extern	_LATBbits
	extern	_LATCbits
	extern	_LATDbits
	extern	_LATEbits
	extern	_DDRAbits
	extern	_TRISAbits
	extern	_DDRBbits
	extern	_TRISBbits
	extern	_DDRCbits
	extern	_TRISCbits
	extern	_DDRDbits
	extern	_TRISDbits
	extern	_DDREbits
	extern	_TRISEbits
	extern	_OSCTUNEbits
	extern	_PIE1bits
	extern	_PIR1bits
	extern	_IPR1bits
	extern	_PIE2bits
	extern	_PIR2bits
	extern	_IPR2bits
	extern	_EECON1bits
	extern	_EEADRbits
	extern	_EEADRHbits
	extern	_RCSTAbits
	extern	_TXSTAbits
	extern	_T3CONbits
	extern	_CVRCON2bits
	extern	_CVRCONbits
	extern	_ECCP1ASbits
	extern	_PWM1CONbits
	extern	_BAUDCONbits
	extern	_BAUDCTLbits
	extern	_PSTRCONbits
	extern	_CCP2CONbits
	extern	_CCP1CONbits
	extern	_ADCON2bits
	extern	_ADCON1bits
	extern	_ADCON0bits
	extern	_SSPCON2bits
	extern	_SSPCON1bits
	extern	_SSPSTATbits
	extern	_T2CONbits
	extern	_T1CONbits
	extern	_RCONbits
	extern	_WDTCONbits
	extern	_HLVDCONbits
	extern	_LVDCONbits
	extern	_OSCCONbits
	extern	_T0CONbits
	extern	_STATUSbits
	extern	_INTCON3bits
	extern	_INTCON2bits
	extern	_INTCONbits
	extern	_STKPTRbits
	extern	_SSPMSK
	extern	_SLRCON
	extern	_CM2CON1
	extern	_CM2CON0
	extern	_CM1CON0
	extern	_WPUB
	extern	_IOCB
	extern	_ANSEL
	extern	_ANSELH
	extern	_PORTA
	extern	_PORTB
	extern	_PORTC
	extern	_PORTD
	extern	_PORTE
	extern	_LATA
	extern	_LATB
	extern	_LATC
	extern	_LATD
	extern	_LATE
	extern	_DDRA
	extern	_TRISA
	extern	_DDRB
	extern	_TRISB
	extern	_DDRC
	extern	_TRISC
	extern	_DDRD
	extern	_TRISD
	extern	_DDRE
	extern	_TRISE
	extern	_OSCTUNE
	extern	_PIE1
	extern	_PIR1
	extern	_IPR1
	extern	_PIE2
	extern	_PIR2
	extern	_IPR2
	extern	_EECON1
	extern	_EECON2
	extern	_EEDATA
	extern	_EEADR
	extern	_EEADRH
	extern	_RCSTA
	extern	_TXSTA
	extern	_TXREG
	extern	_RCREG
	extern	_SPBRG
	extern	_SPBRGH
	extern	_T3CON
	extern	_TMR3
	extern	_TMR3L
	extern	_TMR3H
	extern	_CVRCON2
	extern	_CVRCON
	extern	_ECCP1AS
	extern	_PWM1CON
	extern	_BAUDCON
	extern	_BAUDCTL
	extern	_PSTRCON
	extern	_CCP2CON
	extern	_CCPR2
	extern	_CCPR2L
	extern	_CCPR2H
	extern	_CCP1CON
	extern	_CCPR1
	extern	_CCPR1L
	extern	_CCPR1H
	extern	_ADCON2
	extern	_ADCON1
	extern	_ADCON0
	extern	_ADRES
	extern	_ADRESL
	extern	_ADRESH
	extern	_SSPCON2
	extern	_SSPCON1
	extern	_SSPSTAT
	extern	_SSPADD
	extern	_SSPBUF
	extern	_T2CON
	extern	_PR2
	extern	_TMR2
	extern	_T1CON
	extern	_TMR1
	extern	_TMR1L
	extern	_TMR1H
	extern	_RCON
	extern	_WDTCON
	extern	_HLVDCON
	extern	_LVDCON
	extern	_OSCCON
	extern	_T0CON
	extern	_TMR0
	extern	_TMR0L
	extern	_TMR0H
	extern	_STATUS
	extern	_FSR2L
	extern	_FSR2H
	extern	_PLUSW2
	extern	_PREINC2
	extern	_POSTDEC2
	extern	_POSTINC2
	extern	_INDF2
	extern	_BSR
	extern	_FSR1L
	extern	_FSR1H
	extern	_PLUSW1
	extern	_PREINC1
	extern	_POSTDEC1
	extern	_POSTINC1
	extern	_INDF1
	extern	_WREG
	extern	_FSR0L
	extern	_FSR0H
	extern	_PLUSW0
	extern	_PREINC0
	extern	_POSTDEC0
	extern	_POSTINC0
	extern	_INDF0
	extern	_INTCON3
	extern	_INTCON2
	extern	_INTCON
	extern	_PROD
	extern	_PRODL
	extern	_PRODH
	extern	_TABLAT
	extern	_TBLPTR
	extern	_TBLPTRL
	extern	_TBLPTRH
	extern	_TBLPTRU
	extern	_PC
	extern	_PCL
	extern	_PCLATH
	extern	_PCLATU
	extern	_STKPTR
	extern	_TOS
	extern	_TOSL
	extern	_TOSH
	extern	_TOSU

;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4


; Internal registers
.registers	udata_ovr	0x0000
r0x00	res	1

udata_mce1_0	udata
_dvar	res	3

;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
S_mce1__main	code
_main:
	.line	35; mce1.c	BIT_CLEAR(TRISB, 1); 
	MOVF	_TRISB, W
	MOVWF	r0x00
	MOVLW	0xfd
	ANDWF	r0x00, W
	MOVWF	_TRISB
	.line	36; mce1.c	BIT_CLEAR(TRISB, 2);
	MOVF	_TRISB, W
	MOVWF	r0x00
	MOVLW	0xfb
	ANDWF	r0x00, W
	MOVWF	_TRISB
	.line	39; mce1.c	BIT_SET(PORTB, 2);
	BSF	_PORTB, 2
	.line	40; mce1.c	BIT_SET(PORTB, 1);
	BSF	_PORTB, 1
_00123_DS_:
	BANKSEL	(_dvar + 1)
	.line	45; mce1.c	DELAY_BIG_US(500UL);
	CLRF	(_dvar + 1), B
	MOVLW	0xa2
	BANKSEL	(_dvar + 2)
	MOVWF	(_dvar + 2), B
	CALL	_cycle_eater
	.line	46; mce1.c	BIT_SET(PORTB,2);
	BSF	_PORTB, 2
	BANKSEL	(_dvar + 1)
	.line	47; mce1.c	DELAY_BIG_US(500UL);
	CLRF	(_dvar + 1), B
	MOVLW	0xa2
	BANKSEL	(_dvar + 2)
	MOVWF	(_dvar + 2), B
	CALL	_cycle_eater
	.line	48; mce1.c	BIT_CLEAR(PORTB,2);
	MOVF	_PORTB, W
	MOVWF	r0x00
	MOVLW	0xfb
	ANDWF	r0x00, W
	MOVWF	_PORTB
	.line	49; mce1.c	BIT_TOGGLE(PORTB,1);
	BTG	_PORTB, 1
	BRA	_00123_DS_
	RETURN	

; ; Starting pCode block
S_mce1__cycle_eater	code
_cycle_eater:
	.line	67; /home/federico/Projects/piklabworkspace/include/tsmdelay.h	void cycle_eater(void)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	banksel _dvar
	nop
delay_big:
	movlw 191
	movwf _dvar+0
delay_inner:
	nop
	decfsz _dvar+0, 1
	goto delay_inner
	decfsz _dvar+1, 1
	goto delay_big
correction:
	decfsz _dvar+2, 1
	goto correction
	
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  114 (0x0072) bytes ( 0.09%)
;           	   57 (0x0039) words
; udata size:	    3 (0x0003) bytes ( 0.08%)
; access size:	    1 (0x0001) bytes


	end
