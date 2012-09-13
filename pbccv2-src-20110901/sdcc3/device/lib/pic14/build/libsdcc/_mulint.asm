;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6064 (Nov 22 2010) (Linux)
; This file was generated Mon Nov 22 22:55:45 2010
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"_mulint.c"
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
	global	__mulint

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL__mulint_0	udata
r0x1001	res	1
r0x1000	res	1
r0x1003	res	1
r0x1002	res	1
r0x1004	res	1
r0x1005	res	1
r0x1006	res	1
r0x1007	res	1
r0x1008	res	1
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
code__mulint	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  __mulint	;Function start
; 2 exit points
;has an exit
;14 compiler assigned registers:
;   r0x1000
;   STK00
;   r0x1001
;   STK01
;   r0x1002
;   STK02
;   r0x1003
;   r0x1004
;   r0x1005
;   r0x1006
;   r0x1007
;   r0x1008
;   r0x1009
;   r0x100A
;; Starting pCode block
;[ICODE] _mulint.c:33:  _entry($16) :
;[ICODE] _mulint.c:33: 	proc __mulint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( int fixed, int fixed)  fixed}
__mulint	;Function start
; 2 exit points
;[ICODE] _mulint.c:33: iTemp0 [k2 lr3:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ __mulint_a_1_1}[r0x1048 r0x1049 ] = recv __mulint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( int fixed, int fixed)  fixed}
;	.line	33; "_mulint.c"	_mulint (int a, int b)
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
;[ICODE] _mulint.c:33: iTemp1 [k4 lr4:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ __mulint_b_1_1}[r0x104A r0x104B ] = recv __mulint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( int fixed, int fixed)  fixed}
	MOVF	STK01,W
	MOVWF	r0x1002
	MOVF	STK02,W
	MOVWF	r0x1003
;[ICODE] _mulint.c:35: 	iTemp2 [k6 lr5:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ __mulint_result_1_1}[r0x104C r0x104D ] := 0x0 {int literal}
;	.line	35; "_mulint.c"	int result = 0;
	CLRF	r0x1004
	CLRF	r0x1005
;[ICODE] _mulint.c:39: 	iTemp3 [k8 lr6:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __mulint_i_1_1}[r0x104E ] := 0x8 {const-unsigned-char literal}
;	.line	39; "_mulint.c"	for (i = 0; i < 8u; i++) {
	MOVLW	0x08
	MOVWF	r0x1006
;[ICODE] _mulint.c:39:  _forcontinue_0($14) :
;[ICODE] _mulint.c:41: 	iTemp5 [k11 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-unsigned-int register} = iTemp0 [k2 lr3:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ __mulint_a_1_1}[r0x1048 r0x1049 ] & 0x1 {const-unsigned-int literal}
_00118_DS_
;	.line	41; "_mulint.c"	if (a & 0x0001u) result += b;
	BANKSEL	r0x1001
	BTFSS	r0x1001,0
	GOTO	_00109_DS_
;[ICODE] _mulint.c:41: 	if iTemp5 [k11 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-unsigned-int register} == 0 goto _andif_0($5)
;[ICODE] _mulint.c:41: 	iTemp2 [k6 lr5:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ __mulint_result_1_1}[r0x104C r0x104D ] = iTemp2 [k6 lr5:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ __mulint_result_1_1}[r0x104C r0x104D ] + iTemp1 [k4 lr4:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ __mulint_b_1_1}[r0x104A r0x104B ]
	MOVF	r0x1003,W
	ADDWF	r0x1004,F
	MOVF	r0x1002,W
	BTFSC	STATUS,0
	INCFSZ	r0x1002,W
	ADDWF	r0x1005,F
;[ICODE] _mulint.c:42:  _andif_0($5) :
;[ICODE] _mulint.c:42: 	iTemp7 [k13 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-unsigned-long-int fixed}[r0x104F r0x1050 r0x1051 r0x1052 ] = (const-unsigned-long-int register)iTemp0 [k2 lr3:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ __mulint_a_1_1}[r0x1048 r0x1049 ]
_00109_DS_
;	.line	42; "_mulint.c"	if (sizeof (a) > 1 && (a & 0x00000100ul)) result += (b << 8u);
	BANKSEL	r0x1001
	MOVF	r0x1001,W
	MOVWF	r0x1007
	MOVF	r0x1000,W
	MOVWF	r0x1008
	MOVLW	0x00
	BTFSC	r0x1008,7
	MOVLW	0xff
;;1	MOVWF	r0x1009
;;1	MOVWF	r0x100A
;[ICODE] _mulint.c:42: 	iTemp8 [k14 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-unsigned-long-int register} = iTemp7 [k13 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-unsigned-long-int fixed}[r0x104F r0x1050 r0x1051 r0x1052 ] & 0x100 {const-unsigned-long-int literal}
	BTFSS	r0x1008,0
	GOTO	_00114_DS_
;[ICODE] _mulint.c:42: 	if iTemp8 [k14 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-unsigned-long-int register} == 0 goto _iffalse_3($10)
;[ICODE] _mulint.c:42: 	iTemp10 [k16 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-unsigned-int register}[r0x104F r0x1050 ] = iTemp1 [k4 lr4:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ __mulint_b_1_1}[r0x104A r0x104B ] << 0x8 {const-unsigned-int literal}
;;100	MOVF	r0x1003,W
	CLRF	r0x1007
;[ICODE] _mulint.c:42: 	iTemp2 [k6 lr5:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ __mulint_result_1_1}[r0x104C r0x104D ] = iTemp2 [k6 lr5:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ __mulint_result_1_1}[r0x104C r0x104D ] + iTemp10 [k16 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-unsigned-int register}[r0x104F r0x1050 ]
	MOVLW	0x00
	ADDWF	r0x1004,F
;;99	MOVF	r0x1008,W
	MOVF	r0x1003,W
	MOVWF	r0x1008
	BTFSC	STATUS,0
	INCFSZ	r0x1008,W
	ADDWF	r0x1005,F
;[ICODE] _mulint.c:44:  _iffalse_3($10) :
;[ICODE] _mulint.c:45: 	iTemp18 [k24 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x104F r0x1050 ] := iTemp0 [k2 lr3:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ __mulint_a_1_1}[r0x1048 r0x1049 ]
_00114_DS_
;	.line	45; "_mulint.c"	a = ((unsigned int)a) >> 1u;
	BANKSEL	r0x1001
	MOVF	r0x1001,W
	MOVWF	r0x1007
	MOVF	r0x1000,W
	MOVWF	r0x1008
;[ICODE] _mulint.c:45: 	iTemp0 [k2 lr3:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ __mulint_a_1_1}[r0x1048 r0x1049 ] = iTemp18 [k24 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x104F r0x1050 ] >> 0x1 {const-unsigned-int literal}
;shiftRight_Left2ResultLit:4886: shCount=1, size=2, sign=0, same=0, offr=0
	BCF	STATUS,0
	RRF	r0x1008,W
	MOVWF	r0x1000
	RRF	r0x1007,W
	MOVWF	r0x1001
;[ICODE] _mulint.c:46: 	iTemp1 [k4 lr4:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ __mulint_b_1_1}[r0x104A r0x104B ] = iTemp1 [k4 lr4:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ __mulint_b_1_1}[r0x104A r0x104B ] << 0x1 {const-unsigned-int literal}
;	.line	46; "_mulint.c"	b <<= 1u;
	BCF	STATUS,0
	RLF	r0x1003,F
	RLF	r0x1002,F
;[ICODE] _mulint.c:46: 	iTemp3 [k8 lr6:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __mulint_i_1_1}[r0x104E ] = iTemp3 [k8 lr6:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __mulint_i_1_1}[r0x104E ] - 0x1 {const-char literal}
	DECFSZ	r0x1006,F
	GOTO	_00118_DS_
;[ICODE] _mulint.c:39: 	if iTemp3 [k8 lr6:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __mulint_i_1_1}[r0x104E ] != 0 goto _forcontinue_0($14)
;[ICODE] _mulint.c:49: 	ret iTemp2 [k6 lr5:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ __mulint_result_1_1}[r0x104C r0x104D ]
;	.line	49; "_mulint.c"	return result;
	MOVF	r0x1004,W
	MOVWF	STK00
	MOVF	r0x1005,W
;[ICODE] _mulint.c:49:  _return($15) :
;[ICODE] _mulint.c:49: 	eproc __mulint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( int fixed, int fixed)  fixed}
	RETURN	
; exit point of __mulint


;	code size estimation:
;	   54+    4 =    58 instructions (  124 byte)

	end
