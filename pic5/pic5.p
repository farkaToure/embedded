pcode dump


	New pBlock

internal pblock, dbName =M
;; Starting pCode block
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2584:genLabel *{*
;; ***	genLabel  2587
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2258:genFunction *{*
;; ***	genFunction  2260 curr label offset=4previous max_key=5 
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
	.line	26; "pic5.c"	T0CS = 0;	// Clear to enable timer mode.
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
	.line	27; "pic5.c"	PSA = 0;	// Clear to assign prescaler to Timer 0.
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
	.line	28; "pic5.c"	PS2 = 0;	// Set up prescaler   
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
	.line	29; "pic5.c"	PS1 = 0;
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
	.line	30; "pic5.c"	PS0 = 1;
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
	.line	32; "pic5.c"	INTCON = 0;	// Clear interrupt flag bits.
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
	.line	33; "pic5.c"	GIE = 1;	// Enable all interrupts.
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
	.line	34; "pic5.c"	T0IE = 1;	  // Enable TMR0 OVERFLOW Interrupts
	BSF	_INTCONbits,5
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
	.line	35; "pic5.c"	INTE = 1;	  //Enable RB0 
	BSF	_INTCONbits,4
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
	.line	36; "pic5.c"	INTEDG = 0; 	//SET OPTION_REG.INTEDG TO BE EDGE_DOWN
	BCF	_OPTION_REGbits,6
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
	.line	40; "pic5.c"	TMR0 = 0;	  // Set Timer 0 to 0.
	CLRF	_TMR0
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3541:ifxForOp *{*
;; ***	ifxForOp  3543
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4018:genOr *{*
;; ***	genOr  4019
;; ***	aopForSym 351
;;	362 sym->rname = _TRISB, size = 1
;;	607
;; 	line = 4025 result AOP_DIR=_TRISB, size=1, left AOP_DIR=_TRISB, size=1, right AOP_LIT=0x01, size=1
;; 	line = 4050 result AOP_DIR=_TRISB, size=1, left AOP_DIR=_TRISB, size=1, right AOP_LIT=0x01, size=1
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4182:genOr
	.line	42; "pic5.c"	BIT_SET (TRISB,0);
	BSF	_TRISB,0
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
	.line	43; "pic5.c"	BIT_CLEAR(TRISB, 1); 
	MOVF	_TRISB,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6778:genCast
;;	1110 rIdx = r0x104A 
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
	.line	44; "pic5.c"	BIT_CLEAR(TRISB, 2);
	MOVF	_TRISB,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6778:genCast
;;	1110 rIdx = r0x104A 
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
	.line	46; "pic5.c"	BIT_SET(PORTB, 2);  
	BSF	_PORTB,2
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2584:genLabel *{*
;; ***	genLabel  2587
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2601:genGoto *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2603:genGoto
;; ***	popGetLabel  key=2, label offset 13
_00115_DS_
	.line	47; "pic5.c"	while(1);
	GOTO	_00115_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2584:genLabel *{*
;; ***	genLabel  2587
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2418:genEndFunction *{*
;; ***	genEndFunction  2420
	RETURN	
; exit point of _main

	New pBlock

internal pblock, dbName =I
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
	.line	10; "pic5.c"	void isr() interrupt 0 {                                                                                                         /* interrupt service routine */
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
	.line	12; "pic5.c"	if(T0IF){
	BTFSS	_INTCONbits,2
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5357:genUnpackBits
;; ***	popGetLabel  key=2, label offset 4
	GOTO	_00106_DS_
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
	.line	13; "pic5.c"	T0IF = 0;// Clear the Timer 0 interrupt.
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
	.line	14; "pic5.c"	BIT_TOGGLE(PORTB,1);	// Toggle the state of the LSB of the port bits
	MOVLW	0x02
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4383:genXor
;;	1014
;;	1030  _PORTB   offset=0
	XORWF	_PORTB,F
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2584:genLabel *{*
;; ***	genLabel  2587
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
_00106_DS_
	.line	16; "pic5.c"	if(INTF){
	BTFSS	_INTCONbits,1
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5357:genUnpackBits
;; ***	popGetLabel  key=5, label offset 4
	GOTO	_00109_DS_
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
	.line	17; "pic5.c"	INTF = 0;
	BCF	_INTCONbits,1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3541:ifxForOp *{*
;; ***	ifxForOp  3543
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4264:genXor *{*
;; ***	genXor  4265
;; ***	aopForSym 351
;;	362 sym->rname = _PORTB, size = 1
;;	607
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4382:genXor
	.line	18; "pic5.c"	BIT_TOGGLE(PORTB,2);
	MOVLW	0x04
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
_00109_DS_
	MOVF	___sdcc_saved_fsr,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2495:genEndFunction
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
