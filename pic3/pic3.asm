;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Nov 22 2011) (Linux)
; This file was generated Thu Feb 14 15:36:39 2013
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
	.file	"pic3.c"
	list	p=16f877
	radix dec
	include "p16f877.inc"
;--------------------------------------------------------
; config word(s)
;--------------------------------------------------------
	__config 0x3fff
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
	extern	__mulchar
	extern	__sdcc_gsinit_startup
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_delay_ms
	global	_main
	global	_display
	global	_i

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
UDL_pic3_0	udata
r0x1016	res	1
r0x1015	res	1
r0x1017	res	1
r0x1018	res	1
r0x1019	res	1
r0x101A	res	1
r0x101B	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_pic3_0	idata
_display
	db	0x06, 0x00
	db	0x5b, 0x00
	db	0x4f, 0x00
	db	0x66, 0x00
	db	0x6d, 0x00
	db	0x7d, 0x00
	db	0x07, 0x00
	db	0x7f, 0x00
	db	0x67, 0x00
	db	0x3f, 0x00


ID_pic3_1	idata
_i
	db	0x00

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
; code
;--------------------------------------------------------
code_pic3	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;functions called:
;   __mulchar
;   _delay_ms
;   __mulchar
;   _delay_ms
;5 compiler assigned registers:
;   r0x1019
;   STK00
;   r0x101A
;   r0x101B
;   r0x101C
;; Starting pCode block
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2584:genLabel *{*
;; ***	genLabel  2587
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2258:genFunction *{*
;; ***	genFunction  2260 curr label offset=4previous max_key=1 
_main	;Function start
; 2 exit points
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6444:genAssign *{*
;; ***	genAssign  6445
;; ***	aopForSym 351
;;	362 sym->rname = _TRISB, size = 1
;; 	line = 6454 result AOP_DIR=_TRISB, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  6546
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6555:genAssign
;;	1014
;;	1030  _TRISB   offset=0
	.line	20; "pic3.c"	TRISB=0;            //Configurar Puerto b como Salidas
	BANKSEL	_TRISB
	CLRF	_TRISB
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2584:genLabel *{*
;; ***	genLabel  2587
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6444:genAssign *{*
;; ***	genAssign  6445
;; ***	aopForSym 351
;;	362 sym->rname = _i, size = 1
;;	722 register type nRegs=1
;; 	line = 6454 result AOP_REG=r0x104D, size=1, left -=-, size=0, right AOP_DIR=_i, size=1
;; ***	genAssign  6533
;; WARNING	genAssign  6540 ignoring register storage
;; ***	genAssign  6546
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1325:mov2w_op *{*
;; ***	mov2w  1357  offset=0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1362:mov2w
;;	1014
;;	1030  _i   offset=0
_00113_DS_
	.line	24; "pic3.c"	PORTB=display[i++];
	BANKSEL	_i
	MOVF	_i,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6565:genAssign
;;	1110 rIdx = r0x104D 
	BANKSEL	r0x1019
	MOVWF	r0x1019
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; ***	genPlus  547
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:548:genPlus *{*
;; ***	aopForSym 351
;;	362 sym->rname = _i, size = 1
;; 	line = 554 result AOP_DIR=_i, size=1, left AOP_DIR=_i, size=1, right AOP_LIT=0x01, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
;; 	genPlusIncr  156
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
;;	1014
;;	1030  _i   offset=0
	BANKSEL	_i
	INCF	_i,F
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2700:genMult *{*
;; ***	genMult  2702
;;	722 register type nRegs=1
;;	722 register type nRegs=1
;; 	line = 2708 result AOP_REG=r0x104E, size=1, left AOP_REG=r0x104D, size=1, right AOP_LIT=0x02, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2641:genMultOneByte *{*
;; ***	genMultOneByte  2643
;; 	line = 2644 result AOP_REG=r0x104E, size=1, left AOP_REG=r0x104D, size=1, right AOP_LIT=0x02, size=1
;; 	line = 2645, signs: result AOP_REG=s, left AOP_REG=s, right AOP_LIT=u
;; ***	mov2w  1357  offset=0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1360:mov2w
	MOVLW	0x02
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2664:genMultOneByte
;; ***	popRegFromIdx,1044  , rIdx=0x7f
	MOVWF	STK00
;; ***	mov2w  1357  offset=0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1362:mov2w
;;	1110 rIdx = r0x104D 
	BANKSEL	r0x1019
	MOVF	r0x1019,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1403:call_libraryfunc
	PAGESEL	__mulchar
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1405:call_libraryfunc
	CALL	__mulchar
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:call_libraryfunc
	PAGESEL	$
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1368:movwf
;;	1110 rIdx = r0x104E 
	BANKSEL	r0x101A
	MOVWF	r0x101A
	ADDLW	(_display + 0)
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:672:genPlus
;;	1110 rIdx = r0x104D 
	MOVWF	r0x1019
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:735:genPlus
	MOVLW	high (_display + 0)
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:736:genPlus
	BTFSC	STATUS,0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:737:genPlus
	ADDLW	0x01
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:738:genPlus
;;	1110 rIdx = r0x104F 
	MOVWF	r0x101B
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5712:genPointerGet *{*
;; ***	genPointerGet  5713
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5498:genNearPointerGet *{*
;; ***	genNearPointerGet  5499
;;	722 register type nRegs=2
;; ***	genNearPointerGet  5515
;;	722 register type nRegs=2
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1325:mov2w_op *{*
;; ***	mov2w  1357  offset=0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1362:mov2w
;;	1110 rIdx = r0x104D 
	MOVF	r0x1019,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5193:setup_fsr
	BANKSEL	FSR
	MOVWF	FSR
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5154:SetIrp *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5171:SetIrp
	BCF	STATUS,7
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5173:SetIrp
	BANKSEL	r0x101B
	BTFSC	r0x101B,0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5174:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerGet  5544
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5550:genNearPointerGet
	BANKSEL	INDF
	MOVF	INDF,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5554:genNearPointerGet
;;	1110 rIdx = r0x104E 
	BANKSEL	r0x101A
	MOVWF	r0x101A
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5220:inc_fsr
	BANKSEL	FSR
	INCF	FSR,F
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5550:genNearPointerGet
	MOVF	INDF,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5554:genNearPointerGet
;;	1110 rIdx = r0x1050 
;;1	MOVWF	r0x101C
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6633:genCast *{*
;; ***	genCast  6634
;;	722 register type nRegs=2
;; ***	aopForSym 351
;;	362 sym->rname = _PORTB, size = 1
;; 	line = 6642 result AOP_DIR=_PORTB, size=1, left -=-, size=0, right AOP_REG=r0x104E, size=2
;; ***	genCast  6757
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6777:genCast
;;	1110 rIdx = r0x104E 
	BANKSEL	r0x101A
	MOVF	r0x101A,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6778:genCast
;;	1014
;;	1030  _PORTB   offset=0
	BANKSEL	_PORTB
	MOVWF	_PORTB
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2005:genCall *{*
;; ***	genCall  2007
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1740:saveRegisters *{*
;; ***	saveRegisters  1742
;; 	2054 left AOP_LIT
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1325:mov2w_op *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1340:mov2w_op
	.line	25; "pic3.c"	delay_ms(500);
	MOVLW	0xf4
;; 	2054 left AOP_LIT
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2062:genCall
;; ***	popRegFromIdx,1044  , rIdx=0x7f
	MOVWF	STK00
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1325:mov2w_op *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1340:mov2w_op
	MOVLW	0x01
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2093:genCall
	CALL	_delay_ms
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1784:unsaveRegisters *{*
;; ***	unsaveRegisters  1786
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6444:genAssign *{*
;; ***	genAssign  6445
;; ***	aopForSym 351
;;	362 sym->rname = _PORTB, size = 1
;; 	line = 6454 result AOP_DIR=_PORTB, size=1, left -=-, size=0, right AOP_LIT=0x80, size=1
;; ***	genAssign  6546
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6551:genAssign
	.line	26; "pic3.c"	PORTB=0x80;
	MOVLW	0x80
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6553:genAssign
;;	1014
;;	1030  _PORTB   offset=0
	BANKSEL	_PORTB
	MOVWF	_PORTB
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3541:ifxForOp *{*
;; ***	ifxForOp  3543
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3425:genCmpEq *{*
;; ***	genCmpEq  3426
;; ifx is non-null
;; ***	aopForSym 351
;;	362 sym->rname = _i, size = 1
;; 	line = 3437 result AOP_CRY=0x00, size=0, left AOP_DIR=_i, size=1, right AOP_LIT=0x0a, size=1
;; ***	mov2w  1357  offset=0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1362:mov2w
;;	1014
;;	1030  _i   offset=0
	.line	27; "pic3.c"	if (i==10) 
	BANKSEL	_i
	MOVF	_i,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3489:genCmpEq
	XORLW	0x0a
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3491:genCmpEq
	BTFSS	STATUS,2
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3493:genCmpEq
;; ***	popGetLabel  key=4, label offset 9
	GOTO	_00113_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6444:genAssign *{*
;; ***	genAssign  6445
;; ***	aopForSym 351
;;	362 sym->rname = _i, size = 1
;; 	line = 6454 result AOP_DIR=_i, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  6546
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6555:genAssign
;;	1014
;;	1030  _i   offset=0
	.line	28; "pic3.c"	i=0;    
	CLRF	_i
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2601:genGoto *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2603:genGoto
;; ***	popGetLabel  key=4, label offset 9
	GOTO	_00113_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2584:genLabel *{*
;; ***	genLabel  2587
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2418:genEndFunction *{*
;; ***	genEndFunction  2420
	RETURN	
; exit point of _main

;***
;  pBlock Stats: dbName = C
;***
;entry:  _delay_ms	;Function start
; 2 exit points
;has an exit
;5 compiler assigned registers:
;   r0x1015
;   STK00
;   r0x1016
;   r0x1017
;   r0x1018
;; Starting pCode block
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2584:genLabel *{*
;; ***	genLabel  2587
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2258:genFunction *{*
;; ***	genFunction  2260 curr label offset=0previous max_key=0 
_delay_ms	;Function start
; 2 exit points
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6860:genReceive *{*
;; ***	genReceive  6861
;;	722 register type nRegs=2
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1841:assignResultValue *{*
;; ***	assignResultValue  1843
;; 	line = 1845 result -=-, size=0, left AOP_REG=r0x1048, size=2, right -=-, size=0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1368:movwf
;;	1110 rIdx = r0x1049 
	.line	8; "/home/federico/Projects/piklabworkspace/delay.h"	void delay_ms(unsigned int ms) {
	BANKSEL	r0x1015
	MOVWF	r0x1015
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1394:get_returnvalue
;; ***	popRegFromIdx,1044  , rIdx=0x7f
	MOVF	STK00,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1368:movwf
;;	1110 rIdx = r0x1048 
	MOVWF	r0x1016
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6444:genAssign *{*
;; ***	genAssign  6445
;;	722 register type nRegs=2
;;	722 register type nRegs=2
;; 	line = 6454 result AOP_REG=r0x1048, size=2, left -=-, size=0, right AOP_REG=r0x1048, size=2
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2584:genLabel *{*
;; ***	genLabel  2587
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6444:genAssign *{*
;; ***	genAssign  6445
;;	722 register type nRegs=2
;;	722 register type nRegs=2
;; 	line = 6454 result AOP_REG=r0x104A, size=2, left -=-, size=0, right AOP_REG=r0x1048, size=2
;; ***	genAssign  6546
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1325:mov2w_op *{*
;; ***	mov2w  1357  offset=0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1362:mov2w
;;	1110 rIdx = r0x1048 
_00105_DS_
	.line	11; "/home/federico/Projects/piklabworkspace/delay.h"	while (ms--){
	BANKSEL	r0x1016
	MOVF	r0x1016,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6565:genAssign
;;	1110 rIdx = r0x104A 
	MOVWF	r0x1017
;; ***	genAssign  6546
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1325:mov2w_op *{*
;; ***	mov2w  1357  offset=1
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1362:mov2w
;;	1110 rIdx = r0x1049 
	MOVF	r0x1015,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6565:genAssign
;;	1110 rIdx = r0x104B 
	MOVWF	r0x1018
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3541:ifxForOp *{*
;; ***	ifxForOp  3543
;; NULL :(	3563
;; ic-next	 is an IFX
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6816:genDjnz *{*
;; ***	genDjnz  6817
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:832:genMinus *{*
;; ***	genMinus  833
;;	722 register type nRegs=2
;;	607
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:270:genAddLit *{*
;; ***	genAddLit  271
;; hi = ff	genAddLit  342
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:353:genAddLit
	MOVLW	0xff
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:354:genAddLit
;;	1110 rIdx = r0x1048 
	ADDWF	r0x1016,F
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:355:genAddLit
	BTFSS	STATUS,0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:356:genAddLit
;;	1110 rIdx = r0x1049 
	DECF	r0x1015,F
;; ***	addSign  797
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:798:addSign *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6299:genIfx *{*
;; ***	genIfx  6300
;;	722 register type nRegs=2
;; ***	pic14_toBoolean  1478
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1487:pic14_toBoolean
;;	1110 rIdx = r0x104A 
	MOVF	r0x1017,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1492:pic14_toBoolean
;;	1110 rIdx = r0x104B 
	IORWF	r0x1018,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6345:genIfx
	BTFSS	STATUS,2
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6346:genIfx
;; ***	popGetLabel  key=1, label offset 4
	GOTO	_00105_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2584:genLabel *{*
;; ***	genLabel  2587
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2418:genEndFunction *{*
;; ***	genEndFunction  2420
	.line	13; "/home/federico/Projects/piklabworkspace/delay.h"	for (u = 0; u < LOOPS_PER_MS; u++) { 
	RETURN	
; exit point of _delay_ms
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6924:genpic14Code *{*


;	code size estimation:
;	   55+   19 =    74 instructions (  186 byte)

	end
