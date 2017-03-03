
	; HI-TECH C Compiler for PIC18 MCUs V9.80
	; Copyright (C) 1984-2011 HI-TECH Software

	; Auto-generated runtime startup code for final link stage.

	;
	; Compiler options:
	;
	; --CHIP=18F46K20 -I./ c18_2.p1 addup.p1 increment.p1
	;


	processor	18F46K20

	GLOBAL	_main,start
	FNROOT	_main

	pic18cxx	equ	1

	psect	config,class=CONFIG,delta=1
	psect	idloc,class=IDLOC,delta=1
	psect	const,class=CODE,delta=1,reloc=2
	psect	smallconst,class=SMALLCONST,delta=1,reloc=2
	psect	mediumconst,class=MEDIUMCONST,delta=1,reloc=2
	psect	rbss,class=COMRAM,space=1
	psect	bss,class=RAM,space=1
	psect	rdata,class=COMRAM,space=1
	psect	irdata,class=CODE,space=0,reloc=2
	psect	bss,class=RAM,space=1
	psect	data,class=RAM,space=1
	psect	idata,class=CODE,space=0,reloc=2
	psect	nvrram,class=COMRAM,space=1
	psect	nvbit,class=COMRAM,bit,space=1
	psect	temp,ovrld,class=COMRAM,space=1
	psect	struct,ovrld,class=COMRAM,space=1
	psect	rbit,class=COMRAM,bit,space=1
	psect	bigbss,class=BIGRAM,space=1
	psect	bigdata,class=BIGRAM,space=1
	psect	ibigdata,class=CODE,space=0,reloc=2
	psect	farbss,class=FARRAM,space=0,reloc=2,delta=1
	psect	fardata,class=FARRAM,space=0,reloc=2,delta=1
	psect	ifardata,class=CODE,space=0,reloc=2,delta=1

	psect	reset_vec,class=CODE,delta=1,reloc=2
	psect	powerup,class=CODE,delta=1,reloc=2
	psect	intcode,class=CODE,delta=1,reloc=2
	psect	intcode_body,class=CODE,delta=1,reloc=2
	psect	intcodelo,class=CODE,delta=1,reloc=2
	psect	intret,class=CODE,delta=1,reloc=2
	psect	intentry,class=CODE,delta=1,reloc=2

	psect	intsave_regs,class=BIGRAM,space=1
	psect	init,class=CODE,delta=1,reloc=2
	psect	text,class=CODE,delta=1,reloc=2
GLOBAL	intlevel0,intlevel1,intlevel2
intlevel0:
intlevel1:
intlevel2:
GLOBAL	intlevel3
intlevel3:
	psect	end_init,class=CODE,delta=1,reloc=2
	psect	clrtext,class=CODE,delta=1,reloc=2

	psect	eeprom_data,class=EEDATA,delta=1
	psect	smallconst
	GLOBAL	__smallconst
__smallconst:
	psect	mediumconst
	GLOBAL	__mediumconst
__mediumconst:
wreg	EQU	0FE8h
fsr0l	EQU	0FE9h
fsr0h	EQU	0FEAh
fsr1l	EQU	0FE1h
fsr1h	EQU	0FE2h
fsr2l	EQU	0FD9h
fsr2h	EQU	0FDAh
postinc0	EQU	0FEEh
postdec0	EQU	0FEDh
postinc1	EQU	0FE6h
postdec1	EQU	0FE5h
postinc2	EQU	0FDEh
postdec2	EQU	0FDDh
tblptrl	EQU	0FF6h
tblptrh	EQU	0FF7h
tblptru	EQU	0FF8h
tablat		EQU	0FF5h

	PSECT	ramtop,class=RAM
	GLOBAL	__S1			; top of RAM usage
	GLOBAL	__ramtop
	GLOBAL	__LRAM,__HRAM
__ramtop:

	psect	reset_vec
reset_vec:
	; No powerup routine
	; No interrupt routine
	GLOBAL __accesstop
__accesstop EQU 96


	psect	init
start:
	psect	end_init
	global start_initialization
	goto start_initialization	;jump to C runtime clear & initialization

; Config register CONFIG1H @ 0x300001
;	Internal/External Oscillator Switchover bit
;	IESO = OFF, Oscillator Switchover mode disabled
;	Oscillator Selection bits
;	FOSC = HS, HS oscillator
;	Fail-Safe Clock Monitor Enable bit
;	FCMEN = OFF, Fail-Safe Clock Monitor disabled

	psect	config,class=CONFIG,delta=1
		org 0x1
		db 0x2

; Config register CONFIG2L @ 0x300002
;	Brown-out Reset Enable bits
;	BOREN = OFF, Brown-out Reset disabled in hardware and software
;	Brown Out Reset Voltage bits
;	BORV = 30, VBOR set to 3.0 V nominal
;	Power-up Timer Enable bit
;	PWRT = OFF, PWRT disabled

	psect	config,class=CONFIG,delta=1
		org 0x2
		db 0x1

; Config register CONFIG2H @ 0x300003
;	Watchdog Timer Postscale Select bits
;	WDTPS = 32768, 1:32768
;	Watchdog Timer Enable bit
;	WDTEN = OFF, WDT is controlled by SWDTEN bit of the WDTCON register

	psect	config,class=CONFIG,delta=1
		org 0x3
		db 0x1E

; Config register CONFIG3H @ 0x300005
;	CCP2 MUX bit
;	CCP2MX = PORTC, CCP2 input/output is multiplexed with RC1
;	PORTB A/D Enable bit
;	PBADEN = OFF, PORTB<4:0> pins are configured as digital I/O on Reset
;	Low-Power Timer1 Oscillator Enable bit
;	LPT1OSC = OFF, Timer1 configured for higher power operation
;	MCLR Pin Enable bit
;	MCLRE = ON, MCLR pin enabled; RE3 input pin disabled
;	HFINTOSC Fast Start-up
;	HFOFST = 0x1, unprogrammed default

	psect	config,class=CONFIG,delta=1
		org 0x5
		db 0x89

; Config register CONFIG4L @ 0x300006
;	Background Debugger Enable bit
;	DEBUG = 0x1, unprogrammed default
;	Stack Full/Underflow Reset Enable bit
;	STVREN = ON, Stack full/underflow will cause Reset
;	Extended Instruction Set Enable bit
;	XINST = OFF, Instruction set extension and Indexed Addressing mode disabled (Legacy mode)
;	Single-Supply ICSP Enable bit
;	LVP = OFF, Single-Supply ICSP disabled

	psect	config,class=CONFIG,delta=1
		org 0x6
		db 0x81

; Config register CONFIG5L @ 0x300008
;	Code Protection Block 0
;	CP0 = OFF, Block 0 (000800-003FFFh) not code-protected
;	Code Protection Block 1
;	CP1 = OFF, Block 1 (004000-007FFFh) not code-protected
;	Code Protection Block 2
;	CP2 = OFF, Block 2 (008000-00BFFFh) not code-protected
;	Code Protection Block 3
;	CP3 = OFF, Block 3 (00C000-00FFFFh) not code-protected

	psect	config,class=CONFIG,delta=1
		org 0x8
		db 0xF

; Config register CONFIG5H @ 0x300009
;	Data EEPROM Code Protection bit
;	CPD = OFF, Data EEPROM not code-protected
;	Boot Block Code Protection bit
;	CPB = OFF, Boot block (000000-0007FFh) not code-protected

	psect	config,class=CONFIG,delta=1
		org 0x9
		db 0xC0

; Config register CONFIG6L @ 0x30000A
;	Write Protection Block 0
;	WRT0 = OFF, Block 0 (000800-003FFFh) not write-protected
;	Write Protection Block 1
;	WRT1 = OFF, Block 1 (004000-007FFFh) not write-protected
;	Write Protection Block 2
;	WRT2 = OFF, Block 2 (008000-00BFFFh) not write-protected
;	Write Protection Block 3
;	WRT3 = OFF, Block 3 (00C000h-00FFFFh) not write-protected

	psect	config,class=CONFIG,delta=1
		org 0xA
		db 0xF

; Config register CONFIG6H @ 0x30000B
;	Boot Block Write Protection bit
;	WRTB = OFF, Boot Block (000000-0007FFh) not write-protected
;	Configuration Register Write Protection bit
;	WRTC = OFF, Configuration registers (300000-3000FFh) not write-protected
;	Data EEPROM Write Protection bit
;	WRTD = OFF, Data EEPROM not write-protected

	psect	config,class=CONFIG,delta=1
		org 0xB
		db 0xE0

; Config register CONFIG7L @ 0x30000C
;	Table Read Protection Block 0
;	EBTR0 = OFF, Block 0 (000800-003FFFh) not protected from table reads executed in other blocks
;	Table Read Protection Block 1
;	EBTR1 = OFF, Block 1 (004000-007FFFh) not protected from table reads executed in other blocks
;	Table Read Protection Block 2
;	EBTR2 = OFF, Block 2 (008000-00BFFFh) not protected from table reads executed in other blocks
;	Table Read Protection Block 3
;	EBTR3 = OFF, Block 3 (00C000-00FFFFh) not protected from table reads executed in other blocks

	psect	config,class=CONFIG,delta=1
		org 0xC
		db 0xF

; Config register CONFIG7H @ 0x30000D
;	Boot Block Table Read Protection bit
;	EBTRB = OFF, Boot Block (000000-0007FFh) not protected from table reads executed in other blocks

	psect	config,class=CONFIG,delta=1
		org 0xD
		db 0x40


psect comram,class=COMRAM,space=1
psect abs1,class=ABS1,space=1
psect bigram,class=BIGRAM,space=1
psect ram,class=RAM,space=1
psect bank0,class=BANK0,space=1
psect bank1,class=BANK1,space=1
psect bank2,class=BANK2,space=1
psect bank3,class=BANK3,space=1
psect bank4,class=BANK4,space=1
psect bank5,class=BANK5,space=1
psect bank6,class=BANK6,space=1
psect bank7,class=BANK7,space=1
psect bank8,class=BANK8,space=1
psect bank9,class=BANK9,space=1
psect bank10,class=BANK10,space=1
psect bank11,class=BANK11,space=1
psect bank12,class=BANK12,space=1
psect bank13,class=BANK13,space=1
psect bank14,class=BANK14,space=1
psect bank15,class=BANK15,space=1
psect sfr,class=SFR,space=1


	end	start
