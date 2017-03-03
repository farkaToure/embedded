;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Nov 22 2011) (Linux)
; This file was generated Fri Feb 22 16:15:05 2013
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
	.file	"pic4.c"
	list	p=16f877
	radix dec
	include "p16f877.inc"
;--------------------------------------------------------
; config word(s)
;--------------------------------------------------------
	__config 0x3ffb
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_ADCON0bits
	extern	_ADCON1bits
	extern	_CCP1CONbits
	extern	_CCP2CONbits
	extern	_EECON1bits
	extern	_INTCONbits
	extern	_OPTION_REGbits
	extern	_PCONbits
	extern	_PIE1bits
	extern	_PIE2bits
	extern	_PIR1bits
	extern	_PIR2bits
	extern	_PORTAbits
	extern	_PORTBbits
	extern	_PORTCbits
	extern	_PORTDbits
	extern	_PORTEbits
	extern	_RCSTAbits
	extern	_SSPCONbits
	extern	_SSPCON2bits
	extern	_SSPSTATbits
	extern	_STATUSbits
	extern	_T1CONbits
	extern	_T2CONbits
	extern	_TRISAbits
	extern	_TRISBbits
	extern	_TRISCbits
	extern	_TRISDbits
	extern	_TRISEbits
	extern	_TXSTAbits
	extern	_INDF
	extern	_TMR0
	extern	_PCL
	extern	_STATUS
	extern	_FSR
	extern	_PORTA
	extern	_PORTB
	extern	_PORTC
	extern	_PORTD
	extern	_PORTE
	extern	_PCLATH
	extern	_INTCON
	extern	_PIR1
	extern	_PIR2
	extern	_TMR1L
	extern	_TMR1H
	extern	_T1CON
	extern	_TMR2
	extern	_T2CON
	extern	_SSPBUF
	extern	_SSPCON
	extern	_CCPR1L
	extern	_CCPR1H
	extern	_CCP1CON
	extern	_RCSTA
	extern	_TXREG
	extern	_RCREG
	extern	_CCPR2L
	extern	_CCPR2H
	extern	_CCP2CON
	extern	_ADRESH
	extern	_ADCON0
	extern	_OPTION_REG
	extern	_TRISA
	extern	_TRISB
	extern	_TRISC
	extern	_TRISD
	extern	_TRISE
	extern	_PIE1
	extern	_PIE2
	extern	_PCON
	extern	_SSPCON2
	extern	_PR2
	extern	_SSPADD
	extern	_SSPSTAT
	extern	_TXSTA
	extern	_SPBRG
	extern	_ADRESL
	extern	_ADCON1
	extern	_EEDATA
	extern	_EEADR
	extern	_EEDATH
	extern	_EEADRH
	extern	_EECON1
	extern	_EECON2
	extern	___sdcc_saved_fsr
	extern	__sdcc_gsinit_startup
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_isr
	global	_main

	global PSAVE
	global SSAVE
	global WSAVE
	global STK12
	global STK11
	global STK10
	global STK09
	global STK08
	global STK07
	global STK06
	global STK05
	global STK04
	global STK03
	global STK02
	global STK01
	global STK00

sharebank udata_ovr 0x0070
PSAVE	res 1
SSAVE	res 1
WSAVE	res 1
STK12	res 1
STK11	res 1
STK10	res 1
STK09	res 1
STK08	res 1
STK07	res 1
STK06	res 1
STK05	res 1
STK04	res 1
STK03	res 1
STK02	res 1
STK01	res 1
STK00	res 1

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_pic4_0	udata
r0x1001	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; reset vector 
;--------------------------------------------------------
STARTUP	code 0x0000
	nop
	pagesel __sdcc_gsinit_startup
	goto	__sdcc_gsinit_startup
;--------------------------------------------------------
; interrupt and initialization code
;--------------------------------------------------------
c_interrupt	code	0x4
__sdcc_interrupt
;***
;  pBlock Stats: dbName = I
;***
;entry:  _isr	;Function start
; 0 exit points
;; Starting pCode block
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2584:genLabel *{*
;; ***	genLabel  2587
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2258:genFunction *{*
;; ***	genFunction  2260 curr label offset=0previous max_key=0 
_isr	;Function start
; 0 exit points
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2322:genFunction
	.line	10; "pic4.c"	void isr() interrupt 0 {                                                                                                         /* interrupt service routine */
	MOVWF	WSAVE
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2323:genFunction
	SWAPF	STATUS,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2328:genFunction
	CLRF	STATUS
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2329:genFunction
	MOVWF	SSAVE
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2331:genFunction
	MOVF	PCLATH,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2333:genFunction
	CLRF	PCLATH
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2334:genFunction
	MOVWF	PSAVE
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2336:genFunction
	MOVF	FSR,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2337:genFunction
	BANKSEL	___sdcc_saved_fsr
	MOVWF	___sdcc_saved_fsr
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5712:genPointerGet *{*
;; ***	genPointerGet  5713
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5498:genNearPointerGet *{*
;; ***	genNearPointerGet  5499
;;	642
;;	aopForRemat 426
;;	447: rname _INTCONbits, val 0, const = 0
;; ***	genNearPointerGet  5515
;;	722 register type nRegs=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3541:ifxForOp *{*
;; ***	ifxForOp  3543
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5332:genUnpackBits *{*
;; ***	genUnpackBits  5333
;;	859: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5356:genUnpackBits
	.line	12; "pic4.c"	if(T0IF){
	BANKSEL	_INTCONbits
	BTFSS	_INTCONbits,2
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5357:genUnpackBits
;; ***	popGetLabel  key=3, label offset 4
	GOTO	_00107_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6229:genPointerSet *{*
;; ***	genPointerSet  6230
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6056:genNearPointerSet *{*
;; ***	genNearPointerSet  6057
;;	642
;;	aopForRemat 426
;;	447: rname _INTCONbits, val 0, const = 0
;; ***	genNearPointerSet  6074
;;	859: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; 	line = 6076 result AOP_PCODE=_INTCONbits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5798:genPackBits *{*
;; ***	genPackBits  5799
;;	859: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5824:genPackBits
	.line	13; "pic4.c"	T0IF = 0;// Clear the Timer 0 interrupt.
	BCF	_INTCONbits,2
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3541:ifxForOp *{*
;; ***	ifxForOp  3543
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4264:genXor *{*
;; ***	genXor  4265
;; ***	aopForSym 351
;;	362 sym->rname = _PORTB, size = 1
;;	607
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4382:genXor
	.line	14; "pic4.c"	BIT_TOGGLE(PORTB,1);	// Toggle the state of the LSB of the port bits
	MOVLW	0x02
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4383:genXor
;;	1014
;;	1030  _PORTB   offset=0
	XORWF	_PORTB,F
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2584:genLabel *{*
;; ***	genLabel  2587
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2418:genEndFunction *{*
;; ***	genEndFunction  2420
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2494:genEndFunction
_00107_DS_
	BANKSEL	___sdcc_saved_fsr
	MOVF	___sdcc_saved_fsr,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2495:genEndFunction
	BANKSEL	FSR
	MOVWF	FSR
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2497:genEndFunction
	MOVF	PSAVE,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2498:genEndFunction
	MOVWF	PCLATH
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2499:genEndFunction
	CLRF	STATUS
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2501:genEndFunction
	SWAPF	SSAVE,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2502:genEndFunction
	MOVWF	STATUS
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2503:genEndFunction
	SWAPF	WSAVE,F
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2504:genEndFunction
	SWAPF	WSAVE,W
END_OF_INTERRUPT
	RETFIE	
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6924:genpic14Code *{*

;--------------------------------------------------------
; code
;--------------------------------------------------------
code_pic4	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;1 compiler assigned register :
;   r0x1001
;; Starting pCode block
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2584:genLabel *{*
;; ***	genLabel  2587
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2258:genFunction *{*
;; ***	genFunction  2260 curr label offset=4previous max_key=3 
_main	;Function start
; 2 exit points
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6229:genPointerSet *{*
;; ***	genPointerSet  6230
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6056:genNearPointerSet *{*
;; ***	genNearPointerSet  6057
;;	642
;;	aopForRemat 426
;;	447: rname _OPTION_REGbits, val 0, const = 0
;; ***	genNearPointerSet  6074
;;	859: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; 	line = 6076 result AOP_PCODE=_OPTION_REGbits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5798:genPackBits *{*
;; ***	genPackBits  5799
;;	859: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5824:genPackBits
	.line	22; "pic4.c"	T0CS = 0;	// Clear to enable timer mode.
	BANKSEL	_OPTION_REGbits
	BCF	_OPTION_REGbits,5
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6229:genPointerSet *{*
;; ***	genPointerSet  6230
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6056:genNearPointerSet *{*
;; ***	genNearPointerSet  6057
;;	642
;;	aopForRemat 426
;;	447: rname _OPTION_REGbits, val 0, const = 0
;; ***	genNearPointerSet  6074
;;	859: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; 	line = 6076 result AOP_PCODE=_OPTION_REGbits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5798:genPackBits *{*
;; ***	genPackBits  5799
;;	859: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5824:genPackBits
	.line	23; "pic4.c"	PSA = 0;	// Clear to assign prescaler to Timer 0.
	BCF	_OPTION_REGbits,3
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6229:genPointerSet *{*
;; ***	genPointerSet  6230
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6056:genNearPointerSet *{*
;; ***	genNearPointerSet  6057
;;	642
;;	aopForRemat 426
;;	447: rname _OPTION_REGbits, val 0, const = 0
;; ***	genNearPointerSet  6074
;;	859: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; 	line = 6076 result AOP_PCODE=_OPTION_REGbits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5798:genPackBits *{*
;; ***	genPackBits  5799
;;	859: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5824:genPackBits
	.line	24; "pic4.c"	PS2 = 0;	// Set up prescaler   
	BCF	_OPTION_REGbits,2
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6229:genPointerSet *{*
;; ***	genPointerSet  6230
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6056:genNearPointerSet *{*
;; ***	genNearPointerSet  6057
;;	642
;;	aopForRemat 426
;;	447: rname _OPTION_REGbits, val 0, const = 0
;; ***	genNearPointerSet  6074
;;	859: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; 	line = 6076 result AOP_PCODE=_OPTION_REGbits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5798:genPackBits *{*
;; ***	genPackBits  5799
;;	859: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5824:genPackBits
	.line	25; "pic4.c"	PS1 = 0;
	BCF	_OPTION_REGbits,1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6229:genPointerSet *{*
;; ***	genPointerSet  6230
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6056:genNearPointerSet *{*
;; ***	genNearPointerSet  6057
;;	642
;;	aopForRemat 426
;;	447: rname _OPTION_REGbits, val 0, const = 0
;; ***	genNearPointerSet  6074
;;	859: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; 	line = 6076 result AOP_PCODE=_OPTION_REGbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5798:genPackBits *{*
;; ***	genPackBits  5799
;;	859: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5824:genPackBits
	.line	26; "pic4.c"	PS0 = 1;
	BSF	_OPTION_REGbits,0
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6444:genAssign *{*
;; ***	genAssign  6445
;; ***	aopForSym 351
;;	362 sym->rname = _INTCON, size = 1
;; 	line = 6454 result AOP_DIR=_INTCON, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  6546
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6555:genAssign
;;	1014
;;	1028  _INTCON   offset=0 - had to alloc by reg name
	.line	28; "pic4.c"	INTCON = 0;	// Clear interrupt flag bits.
	BANKSEL	_INTCON
	CLRF	_INTCON
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6229:genPointerSet *{*
;; ***	genPointerSet  6230
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6056:genNearPointerSet *{*
;; ***	genNearPointerSet  6057
;;	642
;;	aopForRemat 426
;;	447: rname _INTCONbits, val 0, const = 0
;; ***	genNearPointerSet  6074
;;	859: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; 	line = 6076 result AOP_PCODE=_INTCONbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5798:genPackBits *{*
;; ***	genPackBits  5799
;;	859: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5824:genPackBits
	.line	29; "pic4.c"	GIE = 1;	// Enable all interrupts.
	BSF	_INTCONbits,7
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6229:genPointerSet *{*
;; ***	genPointerSet  6230
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6056:genNearPointerSet *{*
;; ***	genNearPointerSet  6057
;;	642
;;	aopForRemat 426
;;	447: rname _INTCONbits, val 0, const = 0
;; ***	genNearPointerSet  6074
;;	859: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; 	line = 6076 result AOP_PCODE=_INTCONbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5798:genPackBits *{*
;; ***	genPackBits  5799
;;	859: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5824:genPackBits
	.line	30; "pic4.c"	T0IE = 1;	// Set Timer 0 to 0.  
	BSF	_INTCONbits,5
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6444:genAssign *{*
;; ***	genAssign  6445
;; ***	aopForSym 351
;;	362 sym->rname = _TMR0, size = 1
;; 	line = 6454 result AOP_DIR=_TMR0, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  6546
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6555:genAssign
;;	1014
;;	1030  _TMR0   offset=0
	.line	31; "pic4.c"	TMR0 = 0;	// Enable peripheral interrupts.  
	CLRF	_TMR0
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6633:genCast *{*
;; ***	genCast  6634
;; ***	aopForSym 351
;;	362 sym->rname = _TRISB, size = 1
;;	722 register type nRegs=1
;; 	line = 6642 result AOP_REG=r0x104A, size=1, left -=-, size=0, right AOP_DIR=_TRISB, size=1
;; ***	genCast  6757
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6777:genCast
;;	1014
;;	1030  _TRISB   offset=0
	.line	33; "pic4.c"	BIT_CLEAR(TRISB, 1); 
	BANKSEL	_TRISB
	MOVF	_TRISB,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6778:genCast
;;	1110 rIdx = r0x104A 
	BANKSEL	r0x1001
	MOVWF	r0x1001
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3541:ifxForOp *{*
;; ***	ifxForOp  3543
;; NULL :(	3563
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3756:genAnd *{*
;; ***	genAnd  3757
;;	722 register type nRegs=1
;;	722 register type nRegs=1
;; 	line = 3791 result AOP_REG=r0x104A, size=1, left AOP_REG=r0x104A, size=1, right AOP_LIT=0xfd, size=1
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3935:genAnd
	BCF	r0x1001,1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6633:genCast *{*
;; ***	genCast  6634
;;	722 register type nRegs=1
;; ***	aopForSym 351
;;	362 sym->rname = _TRISB, size = 1
;; 	line = 6642 result AOP_DIR=_TRISB, size=1, left -=-, size=0, right AOP_REG=r0x104A, size=1
;; ***	genCast  6757
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6777:genCast
;;	1110 rIdx = r0x104A 
	MOVF	r0x1001,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6778:genCast
;;	1014
;;	1030  _TRISB   offset=0
	BANKSEL	_TRISB
	MOVWF	_TRISB
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6633:genCast *{*
;; ***	genCast  6634
;; ***	aopForSym 351
;;	362 sym->rname = _TRISB, size = 1
;;	722 register type nRegs=1
;; 	line = 6642 result AOP_REG=r0x104A, size=1, left -=-, size=0, right AOP_DIR=_TRISB, size=1
;; ***	genCast  6757
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6777:genCast
;;	1014
;;	1030  _TRISB   offset=0
	.line	34; "pic4.c"	BIT_CLEAR(TRISB, 2);
	MOVF	_TRISB,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6778:genCast
;;	1110 rIdx = r0x104A 
	BANKSEL	r0x1001
	MOVWF	r0x1001
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3541:ifxForOp *{*
;; ***	ifxForOp  3543
;; NULL :(	3563
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3756:genAnd *{*
;; ***	genAnd  3757
;;	722 register type nRegs=1
;;	722 register type nRegs=1
;; 	line = 3791 result AOP_REG=r0x104A, size=1, left AOP_REG=r0x104A, size=1, right AOP_LIT=0xfb, size=1
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3935:genAnd
	BCF	r0x1001,2
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6633:genCast *{*
;; ***	genCast  6634
;;	722 register type nRegs=1
;; ***	aopForSym 351
;;	362 sym->rname = _TRISB, size = 1
;; 	line = 6642 result AOP_DIR=_TRISB, size=1, left -=-, size=0, right AOP_REG=r0x104A, size=1
;; ***	genCast  6757
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6777:genCast
;;	1110 rIdx = r0x104A 
	MOVF	r0x1001,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6778:genCast
;;	1014
;;	1030  _TRISB   offset=0
	BANKSEL	_TRISB
	MOVWF	_TRISB
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3541:ifxForOp *{*
;; ***	ifxForOp  3543
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4018:genOr *{*
;; ***	genOr  4019
;; ***	aopForSym 351
;;	362 sym->rname = _PORTB, size = 1
;;	607
;; 	line = 4025 result AOP_DIR=_PORTB, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0x04, size=1
;; 	line = 4050 result AOP_DIR=_PORTB, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0x04, size=1
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4182:genOr
	.line	36; "pic4.c"	BIT_SET(PORTB, 2);  
	BANKSEL	_PORTB
	BSF	_PORTB,2
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2584:genLabel *{*
;; ***	genLabel  2587
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2601:genGoto *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2603:genGoto
;; ***	popGetLabel  key=2, label offset 11
_00113_DS_
	.line	37; "pic4.c"	while(1);
	GOTO	_00113_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2584:genLabel *{*
;; ***	genLabel  2587
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2418:genEndFunction *{*
;; ***	genEndFunction  2420
	RETURN	
; exit point of _main


;	code size estimation:
;	   46+   12 =    58 instructions (  140 byte)

	end
