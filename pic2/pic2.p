pcode dump


	New pBlock

internal pblock, dbName =M
;; Starting pCode block
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2584:genLabel *{*
;; ***	genLabel  2587
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2258:genFunction *{*
;; ***	genFunction  2260 curr label offset=0previous max_key=0 
_main	;Function start
; 2 exit points
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6633:genCast *{*
;; ***	genCast  6634
;; ***	aopForSym 351
;;	362 sym->rname = _OPTION_REG, size = 1
;;	722 register type nRegs=1
;; 	line = 6642 result AOP_REG=r0x1048, size=1, left -=-, size=0, right AOP_DIR=_OPTION_REG, size=1
;; ***	genCast  6757
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6777:genCast
;;	1014
;;	1030  _OPTION_REG   offset=0
	.line	15; "pic2.c"	BIT_CLEAR(OPTION_REG, 7);
	MOVF	_OPTION_REG,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6778:genCast
;;	1110 rIdx = r0x1048 
	MOVWF	r0x1000
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3541:ifxForOp *{*
;; ***	ifxForOp  3543
;; NULL :(	3563
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3756:genAnd *{*
;; ***	genAnd  3757
;;	722 register type nRegs=1
;;	722 register type nRegs=1
;; 	line = 3791 result AOP_REG=r0x1048, size=1, left AOP_REG=r0x1048, size=1, right AOP_LIT=0x7f, size=1
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3935:genAnd
	BCF	r0x1000,7
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6633:genCast *{*
;; ***	genCast  6634
;;	722 register type nRegs=1
;; ***	aopForSym 351
;;	362 sym->rname = _OPTION_REG, size = 1
;; 	line = 6642 result AOP_DIR=_OPTION_REG, size=1, left -=-, size=0, right AOP_REG=r0x1048, size=1
;; ***	genCast  6757
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6777:genCast
;;	1110 rIdx = r0x1048 
	MOVF	r0x1000,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6778:genCast
;;	1014
;;	1030  _OPTION_REG   offset=0
	MOVWF	_OPTION_REG
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
	.line	16; "pic2.c"	BIT_SET(TRISB, 0);  	//B0 as input
	BSF	_TRISB,0
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6633:genCast *{*
;; ***	genCast  6634
;; ***	aopForSym 351
;;	362 sym->rname = _TRISB, size = 1
;;	722 register type nRegs=1
;; 	line = 6642 result AOP_REG=r0x1048, size=1, left -=-, size=0, right AOP_DIR=_TRISB, size=1
;; ***	genCast  6757
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6777:genCast
;;	1014
;;	1030  _TRISB   offset=0
	.line	17; "pic2.c"	BIT_CLEAR(TRISB,1); 	//B1 as output
	MOVF	_TRISB,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6778:genCast
;;	1110 rIdx = r0x1048 
	MOVWF	r0x1000
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3541:ifxForOp *{*
;; ***	ifxForOp  3543
;; NULL :(	3563
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3756:genAnd *{*
;; ***	genAnd  3757
;;	722 register type nRegs=1
;;	722 register type nRegs=1
;; 	line = 3791 result AOP_REG=r0x1048, size=1, left AOP_REG=r0x1048, size=1, right AOP_LIT=0xfd, size=1
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3935:genAnd
	BCF	r0x1000,1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6633:genCast *{*
;; ***	genCast  6634
;;	722 register type nRegs=1
;; ***	aopForSym 351
;;	362 sym->rname = _TRISB, size = 1
;; 	line = 6642 result AOP_DIR=_TRISB, size=1, left -=-, size=0, right AOP_REG=r0x1048, size=1
;; ***	genCast  6757
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6777:genCast
;;	1110 rIdx = r0x1048 
	MOVF	r0x1000,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6778:genCast
;;	1014
;;	1030  _TRISB   offset=0
	MOVWF	_TRISB
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6633:genCast *{*
;; ***	genCast  6634
;; ***	aopForSym 351
;;	362 sym->rname = _PORTB, size = 1
;;	722 register type nRegs=1
;; 	line = 6642 result AOP_REG=r0x1048, size=1, left -=-, size=0, right AOP_DIR=_PORTB, size=1
;; ***	genCast  6757
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6777:genCast
;;	1014
;;	1030  _PORTB   offset=0
	.line	18; "pic2.c"	BIT_CLEAR(PORTB,1); 	//turn off B1
	MOVF	_PORTB,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6778:genCast
;;	1110 rIdx = r0x1048 
	MOVWF	r0x1000
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3541:ifxForOp *{*
;; ***	ifxForOp  3543
;; NULL :(	3563
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3756:genAnd *{*
;; ***	genAnd  3757
;;	722 register type nRegs=1
;;	722 register type nRegs=1
;; 	line = 3791 result AOP_REG=r0x1048, size=1, left AOP_REG=r0x1048, size=1, right AOP_LIT=0xfd, size=1
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3935:genAnd
	BCF	r0x1000,1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6633:genCast *{*
;; ***	genCast  6634
;;	722 register type nRegs=1
;; ***	aopForSym 351
;;	362 sym->rname = _PORTB, size = 1
;; 	line = 6642 result AOP_DIR=_PORTB, size=1, left -=-, size=0, right AOP_REG=r0x1048, size=1
;; ***	genCast  6757
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6777:genCast
;;	1110 rIdx = r0x1048 
	MOVF	r0x1000,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6778:genCast
;;	1014
;;	1030  _PORTB   offset=0
	MOVWF	_PORTB
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2584:genLabel *{*
;; ***	genLabel  2587
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6633:genCast *{*
;; ***	genCast  6634
;; ***	aopForSym 351
;;	362 sym->rname = _PORTB, size = 1
;;	722 register type nRegs=1
;; 	line = 6642 result AOP_REG=r0x1048, size=1, left -=-, size=0, right AOP_DIR=_PORTB, size=1
;; ***	genCast  6757
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6777:genCast
;;	1014
;;	1030  _PORTB   offset=0
_00109_DS_
	.line	20; "pic2.c"	if(BIT_TEST(PORTB,0) == 1) 
	MOVF	_PORTB,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6778:genCast
;;	1110 rIdx = r0x1048 
	MOVWF	r0x1000
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3541:ifxForOp *{*
;; ***	ifxForOp  3543
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3756:genAnd *{*
;; ***	genAnd  3757
;;	722 register type nRegs=1
;; 	line = 3791 result AOP_CRY=0x00, size=0, left AOP_REG=r0x1048, size=1, right AOP_LIT=0x01, size=1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3683:isLiteralBit *{*
;; ***	isLiteralBit  3684
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3860:genAnd
	BTFSS	r0x1000,0
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3861:genAnd
;; ***	popGetLabel  key=2, label offset 4
	GOTO	_00106_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6633:genCast *{*
;; ***	genCast  6634
;; ***	aopForSym 351
;;	362 sym->rname = _PORTB, size = 1
;;	722 register type nRegs=1
;; 	line = 6642 result AOP_REG=r0x1048, size=1, left -=-, size=0, right AOP_DIR=_PORTB, size=1
;; ***	genCast  6757
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6777:genCast
;;	1014
;;	1030  _PORTB   offset=0
	.line	21; "pic2.c"	BIT_CLEAR(PORTB, 1);
	MOVF	_PORTB,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6778:genCast
;;	1110 rIdx = r0x1048 
	MOVWF	r0x1000
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3541:ifxForOp *{*
;; ***	ifxForOp  3543
;; NULL :(	3563
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3756:genAnd *{*
;; ***	genAnd  3757
;;	722 register type nRegs=1
;;	722 register type nRegs=1
;; 	line = 3791 result AOP_REG=r0x1048, size=1, left AOP_REG=r0x1048, size=1, right AOP_LIT=0xfd, size=1
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3935:genAnd
	BCF	r0x1000,1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6633:genCast *{*
;; ***	genCast  6634
;;	722 register type nRegs=1
;; ***	aopForSym 351
;;	362 sym->rname = _PORTB, size = 1
;; 	line = 6642 result AOP_DIR=_PORTB, size=1, left -=-, size=0, right AOP_REG=r0x1048, size=1
;; ***	genCast  6757
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6777:genCast
;;	1110 rIdx = r0x1048 
	MOVF	r0x1000,W
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6778:genCast
;;	1014
;;	1030  _PORTB   offset=0
	MOVWF	_PORTB
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2601:genGoto *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2603:genGoto
;; ***	popGetLabel  key=5, label offset 4
	GOTO	_00109_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2584:genLabel *{*
;; ***	genLabel  2587
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3541:ifxForOp *{*
;; ***	ifxForOp  3543
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4018:genOr *{*
;; ***	genOr  4019
;; ***	aopForSym 351
;;	362 sym->rname = _PORTB, size = 1
;;	607
;; 	line = 4025 result AOP_DIR=_PORTB, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0x02, size=1
;; 	line = 4050 result AOP_DIR=_PORTB, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0x02, size=1
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4182:genOr
_00106_DS_
	.line	23; "pic2.c"	BIT_SET(PORTB,1); 
	BSF	_PORTB,1
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2601:genGoto *{*
; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2603:genGoto
;; ***	popGetLabel  key=5, label offset 4
	GOTO	_00109_DS_
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2584:genLabel *{*
;; ***	genLabel  2587
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2236:resultRemat *{*
;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2418:genEndFunction *{*
;; ***	genEndFunction  2420
	RETURN	
; exit point of _main
