;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6064 (Nov 22 2010) (Linux)
; This file was generated Mon Nov 22 22:55:45 2010
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"_mulchar.c"
	list	p=16f877
	radix dec
	include "p16f877.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------

	extern PSAVE
	extern SSAVE
	extern WSAVE
	extern STK12
	extern STK11
	extern STK10
	extern STK09
	extern STK08
	extern STK07
	extern STK06
	extern STK05
	extern STK04
	extern STK03
	extern STK02
	extern STK01
	extern STK00
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	__mulchar

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL__mulchar_0	udata
r0x1000	res	1
r0x1001	res	1
r0x1002	res	1
r0x1003	res	1
r0x1004	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; code
;--------------------------------------------------------
code__mulchar	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  __mulchar	;Function start
; 2 exit points
;has an exit
;6 compiler assigned registers:
;   r0x1000
;   STK00
;   r0x1001
;   r0x1002
;   r0x1003
;   r0x1004
;; Starting pCode block
;[ICODE] _mulchar.c:33:  _entry($16) :
;[ICODE] _mulchar.c:33: 	proc __mulchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( char fixed, char fixed)  fixed}
__mulchar	;Function start
; 2 exit points
;[ICODE] _mulchar.c:33: iTemp0 [k2 lr3:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ __mulchar_a_1_1}[r0x1048 ] = recv __mulchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( char fixed, char fixed)  fixed}
;	.line	33; "_mulchar.c"	_mulchar (char a, char b)
	BANKSEL	r0x1000
	MOVWF	r0x1000
;[ICODE] _mulchar.c:33: iTemp1 [k4 lr4:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ __mulchar_b_1_1}[r0x1049 ] = recv __mulchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( char fixed, char fixed)  fixed}
	MOVF	STK00,W
	MOVWF	r0x1001
;[ICODE] _mulchar.c:35: 	iTemp2 [k6 lr5:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ __mulchar_result_1_1}[r0x104A ] := 0x0 {char literal}
;	.line	35; "_mulchar.c"	char result = 0;
	CLRF	r0x1002
;[ICODE] _mulchar.c:39: 	iTemp3 [k8 lr6:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __mulchar_i_1_1}[r0x104B ] := 0x8 {const-unsigned-char literal}
;	.line	39; "_mulchar.c"	for (i = 0; i < 8u; i++) {
	MOVLW	0x08
	MOVWF	r0x1003
;[ICODE] _mulchar.c:39:  _forcontinue_0($14) :
;[ICODE] _mulchar.c:41: 	iTemp4 [k10 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register} = iTemp0 [k2 lr3:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ __mulchar_a_1_1}[r0x1048 ] & 0x1 {char literal}
_00118_DS_
;	.line	41; "_mulchar.c"	if (a & (unsigned char)0x0001u) result += b;
	BANKSEL	r0x1000
	BTFSS	r0x1000,0
	GOTO	_00114_DS_
;[ICODE] _mulchar.c:41: 	if iTemp4 [k10 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register} == 0 goto _iffalse_3($10)
;[ICODE] _mulchar.c:41: 	iTemp2 [k6 lr5:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ __mulchar_result_1_1}[r0x104A ] = iTemp2 [k6 lr5:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ __mulchar_result_1_1}[r0x104A ] + iTemp1 [k4 lr4:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ __mulchar_b_1_1}[r0x1049 ]
	MOVF	r0x1001,W
	ADDWF	r0x1002,F
;[ICODE] _mulchar.c:44:  _iffalse_3($10) :
;[ICODE] _mulchar.c:45: 	iTemp12 [k18 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x104C ] := iTemp0 [k2 lr3:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ __mulchar_a_1_1}[r0x1048 ]
_00114_DS_
;	.line	45; "_mulchar.c"	a = ((unsigned char)a) >> 1u;
	BANKSEL	r0x1000
	MOVF	r0x1000,W
	MOVWF	r0x1004
;[ICODE] _mulchar.c:45: 	iTemp0 [k2 lr3:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ __mulchar_a_1_1}[r0x1048 ] = iTemp12 [k18 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x104C ] >> 0x1 {const-unsigned-int literal}
;shiftRight_Left2ResultLit:4886: shCount=1, size=1, sign=0, same=0, offr=0
	BCF	STATUS,0
	RRF	r0x1004,W
	MOVWF	r0x1000
;[ICODE] _mulchar.c:46: 	iTemp16 [k22 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-unsigned-int register}[r0x104C r0x104D ] = iTemp1 [k4 lr4:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ __mulchar_b_1_1}[r0x1049 ] << 0x1 {const-unsigned-int literal}
;	.line	46; "_mulchar.c"	b <<= 1u;
	BCF	STATUS,0
	RLF	r0x1001,W
	MOVWF	r0x1004
	MOVWF	r0x1001
;[ICODE] _mulchar.c:46: 	iTemp3 [k8 lr6:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __mulchar_i_1_1}[r0x104B ] = iTemp3 [k8 lr6:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __mulchar_i_1_1}[r0x104B ] - 0x1 {const-char literal}
	DECFSZ	r0x1003,F
	GOTO	_00118_DS_
;[ICODE] _mulchar.c:39: 	if iTemp3 [k8 lr6:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __mulchar_i_1_1}[r0x104B ] != 0 goto _forcontinue_0($14)
;[ICODE] _mulchar.c:49: 	ret iTemp2 [k6 lr5:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ __mulchar_result_1_1}[r0x104A ]
;	.line	49; "_mulchar.c"	return result;
	MOVF	r0x1002,W
;[ICODE] _mulchar.c:49:  _return($15) :
;[ICODE] _mulchar.c:49: 	eproc __mulchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( char fixed, char fixed)  fixed}
	RETURN	
; exit point of __mulchar


;	code size estimation:
;	   23+    3 =    26 instructions (   58 byte)

	end
