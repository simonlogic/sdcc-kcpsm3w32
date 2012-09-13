;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6064 (Nov 22 2010) (Linux)
; This file was generated Mon Nov 22 22:55:45 2010
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"_moduchar.c"
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
	global	__moduchar

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL__moduchar_0	udata
r0x1000	res	1
r0x1001	res	1
r0x1002	res	1
r0x1003	res	1
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
code__moduchar	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  __moduchar	;Function start
; 2 exit points
;has an exit
;8 compiler assigned registers:
;   r0x1000
;   STK00
;   r0x1001
;   r0x1002
;   r0x1003
;   r0x1004
;   r0x1005
;   r0x1006
;; Starting pCode block
;[ICODE] _moduchar.c:30:  _entry($12) :
;[ICODE] _moduchar.c:30: 	proc __moduchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char function    ( unsigned-char fixed, unsigned-char fixed)  fixed}
__moduchar	;Function start
; 2 exit points
;[ICODE] _moduchar.c:30: iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __moduchar_a_1_1}[r0x1048 ] = recv __moduchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char function    ( unsigned-char fixed, unsigned-char fixed)  fixed}
;	.line	30; "_moduchar.c"	_moduchar (unsigned char a, unsigned char b)
	BANKSEL	r0x1000
	MOVWF	r0x1000
;[ICODE] _moduchar.c:30: iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __moduchar_b_1_1}[r0x1049 ] = recv __moduchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char function    ( unsigned-char fixed, unsigned-char fixed)  fixed}
	MOVF	STK00,W
	MOVWF	r0x1001
;[ICODE] _moduchar.c:35: 	if iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __moduchar_b_1_1}[r0x1049 ] != 0 goto preHeaderLbl0($15)
;	.line	35; "_moduchar.c"	if (!b) return (unsigned char)-1;
	MOVF	r0x1001,W
	BTFSS	STATUS,2
	GOTO	_00119_DS_
;[ICODE] _moduchar.c:35: 	ret 0xff {unsigned-char literal}
	MOVLW	0xff
	GOTO	_00115_DS_
;[ICODE] _moduchar.c:39:  preHeaderLbl0($15) :
;[ICODE] _moduchar.c:39: 	iTemp6 [k11 lr8:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __moduchar_count_1_1}[r0x104A ] := 0x1 {const-unsigned-char literal}
_00119_DS_
;	.line	39; "_moduchar.c"	while (!(b & (1UL << (8*sizeof(unsigned char)-1)))) {
	MOVLW	0x01
	BANKSEL	r0x1002
	MOVWF	r0x1002
;[ICODE] _moduchar.c:39:  _whilecontinue_0($3) :
;[ICODE] _moduchar.c:39: 	iTemp3 [k8 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-unsigned-long-int fixed}[r0x104B r0x104C r0x104D r0x104E ] = (const-unsigned-long-int register)iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __moduchar_b_1_1}[r0x1049 ]
_00107_DS_
	BANKSEL	r0x1001
	MOVF	r0x1001,W
	MOVWF	r0x1003
;;1	CLRF	r0x1004
;;1	CLRF	r0x1005
;;1	CLRF	r0x1006
;[ICODE] _moduchar.c:39: 	iTemp4 [k9 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-unsigned-long-int register} = iTemp3 [k8 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-unsigned-long-int fixed}[r0x104B r0x104C r0x104D r0x104E ] & 0x80 {const-unsigned-long-int literal}
	BTFSC	r0x1003,7
	GOTO	_00112_DS_
;[ICODE] _moduchar.c:39: 	if iTemp4 [k9 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-unsigned-long-int register} != 0 goto preHeaderLbl1($18)
;[ICODE] _moduchar.c:40: 	iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __moduchar_b_1_1}[r0x1049 ] = iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __moduchar_b_1_1}[r0x1049 ] << 0x1 {const-unsigned-char literal}
;	.line	40; "_moduchar.c"	b <<= 1;
	BCF	STATUS,0
	RLF	r0x1001,F
;[ICODE] _moduchar.c:41: 	iTemp6 [k11 lr8:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __moduchar_count_1_1}[r0x104A ] = iTemp6 [k11 lr8:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __moduchar_count_1_1}[r0x104A ] + 0x1 {const-unsigned-char literal}
;	.line	41; "_moduchar.c"	++count;
	INCF	r0x1002,F
;[ICODE] _moduchar.c:41: 	 goto _whilecontinue_0($3)
	GOTO	_00107_DS_
;[ICODE] _moduchar.c:45:  preHeaderLbl1($18) :
;[ICODE] _moduchar.c:45: 	iTemp10 [k15 lr19:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __moduchar_count_1_1}[r0x104A ] := iTemp6 [k11 lr8:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __moduchar_count_1_1}[r0x104A ]
;[ICODE] _moduchar.c:45:  _whilecontinue_1($8) :
;[ICODE] _moduchar.c:45: 	if iTemp10 [k15 lr19:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __moduchar_count_1_1}[r0x104A ] == 0 goto _whilebreak_1($10)
_00112_DS_
;	.line	45; "_moduchar.c"	while (count) {
	MOVLW	0x00
	BANKSEL	r0x1002
	IORWF	r0x1002,W
	BTFSC	STATUS,2
	GOTO	_00114_DS_
;[ICODE] _moduchar.c:46: 	iTemp7 [k12 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __moduchar_a_1_1}[r0x1048 ] < iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __moduchar_b_1_1}[r0x1049 ]
;	.line	46; "_moduchar.c"	if (a >= b) {
	MOVF	r0x1001,W
	SUBWF	r0x1000,W
	BTFSS	STATUS,0
	GOTO	_00111_DS_
;genSkipc:3057: created from rifx:0xbfd7eda4
;[ICODE] _moduchar.c:46: 	if iTemp7 [k12 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto _iffalse_1($7)
;[ICODE] _moduchar.c:47: 	iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __moduchar_a_1_1}[r0x1048 ] = iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __moduchar_a_1_1}[r0x1048 ] - iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __moduchar_b_1_1}[r0x1049 ]
;	.line	47; "_moduchar.c"	a -= b;
	MOVF	r0x1001,W
	SUBWF	r0x1000,F
;[ICODE] _moduchar.c:47:  _iffalse_1($7) :
;[ICODE] _moduchar.c:49: 	iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __moduchar_b_1_1}[r0x1049 ] = iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __moduchar_b_1_1}[r0x1049 ] >> 0x1 {const-unsigned-char literal}
;shiftRight_Left2ResultLit:4886: shCount=1, size=1, sign=0, same=1, offr=0
_00111_DS_
;	.line	49; "_moduchar.c"	b >>= 1;
	BCF	STATUS,0
	BANKSEL	r0x1001
	RRF	r0x1001,F
;[ICODE] _moduchar.c:50: 	iTemp10 [k15 lr19:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __moduchar_count_1_1}[r0x104A ] = iTemp10 [k15 lr19:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __moduchar_count_1_1}[r0x104A ] - 0x1 {const-unsigned-char literal}
;	.line	50; "_moduchar.c"	--count;
	DECF	r0x1002,F
;[ICODE] _moduchar.c:50: 	 goto _whilecontinue_1($8)
	GOTO	_00112_DS_
;[ICODE] _moduchar.c:50:  _whilebreak_1($10) :
;[ICODE] _moduchar.c:53: 	ret iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __moduchar_a_1_1}[r0x1048 ]
_00114_DS_
;	.line	53; "_moduchar.c"	return a;
	BANKSEL	r0x1000
	MOVF	r0x1000,W
;[ICODE] _moduchar.c:53:  _return($11) :
;[ICODE] _moduchar.c:53: 	eproc __moduchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char function    ( unsigned-char fixed, unsigned-char fixed)  fixed}
_00115_DS_
	RETURN	
; exit point of __moduchar


;	code size estimation:
;	   34+    6 =    40 instructions (   92 byte)

	end
