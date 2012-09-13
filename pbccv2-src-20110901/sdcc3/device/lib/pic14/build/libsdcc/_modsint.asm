;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6064 (Nov 22 2010) (Linux)
; This file was generated Mon Nov 22 22:55:45 2010
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"_modsint.c"
	list	p=16f877
	radix dec
	include "p16f877.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	__moduint

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
	global	__modsint

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL__modsint_0	udata
r0x1001	res	1
r0x1000	res	1
r0x1003	res	1
r0x1002	res	1
r0x1004	res	1
r0x1005	res	1
r0x1006	res	1
r0x1007	res	1
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
code__modsint	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  __modsint	;Function start
; 2 exit points
;has an exit
;functions called:
;   __moduint
;   __moduint
;   __moduint
;   __moduint
;   __moduint
;   __moduint
;   __moduint
;   __moduint
;11 compiler assigned registers:
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
;; Starting pCode block
;[ICODE] _modsint.c:32:  _entry($11) :
;[ICODE] _modsint.c:32: 	proc __modsint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( int fixed, int fixed)  fixed}
__modsint	;Function start
; 2 exit points
;[ICODE] _modsint.c:32: iTemp0 [k2 lr3:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ __modsint_a_1_1}[r0x1048 r0x1049 ] = recv __modsint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( int fixed, int fixed)  fixed}
;	.line	32; "_modsint.c"	_modsint (int a, int b)
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
;[ICODE] _modsint.c:32: iTemp1 [k4 lr4:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ __modsint_b_1_1}[r0x104A r0x104B ] = recv __modsint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( int fixed, int fixed)  fixed}
	MOVF	STK01,W
	MOVWF	r0x1002
	MOVF	STK02,W
	MOVWF	r0x1003
;[ICODE] _modsint.c:34: 	iTemp2 [k6 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp0 [k2 lr3:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ __modsint_a_1_1}[r0x1048 r0x1049 ] < 0x0 {int literal}
;signed compare: left < lit(0x0=0), size=2, mask=ffff
;	.line	34; "_modsint.c"	if (a < 0) {
	BSF	STATUS,0
	BTFSS	r0x1000,7
	BCF	STATUS,0
	BTFSS	STATUS,0
	GOTO	_00112_DS_
;genSkipc:3057: created from rifx:0xbff41b54
;[ICODE] _modsint.c:34: 	if iTemp2 [k6 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_2($8)
;[ICODE] _modsint.c:35: 	iTemp3 [k7 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp1 [k4 lr4:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ __modsint_b_1_1}[r0x104A r0x104B ] < 0x0 {int literal}
;signed compare: left < lit(0x0=0), size=2, mask=ffff
;	.line	35; "_modsint.c"	if (b < 0)
	BSF	STATUS,0
	BTFSS	r0x1002,7
	BCF	STATUS,0
	BTFSS	STATUS,0
	GOTO	_00106_DS_
;genSkipc:3057: created from rifx:0xbff41b54
;[ICODE] _modsint.c:35: 	if iTemp3 [k7 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_0($2)
;[ICODE] _modsint.c:36: 	iTemp4 [k9 lr9:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{int fixed}[r0x104C r0x104D ] = - iTemp0 [k2 lr3:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ __modsint_a_1_1}[r0x1048 r0x1049 ]
;	.line	36; "_modsint.c"	return _moduint ((unsigned int)-a, (unsigned int)-b);
	COMF	r0x1001,W
	MOVWF	r0x1004
	COMF	r0x1000,W
	MOVWF	r0x1005
	INCF	r0x1004,F
	BTFSC	STATUS,2
	INCF	r0x1005,F
;[ICODE] _modsint.c:36: 	iTemp6 [k11 lr10:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x104E r0x104F ] = - iTemp1 [k4 lr4:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ __modsint_b_1_1}[r0x104A r0x104B ]
	COMF	r0x1003,W
	MOVWF	r0x1006
	COMF	r0x1002,W
	MOVWF	r0x1007
	INCF	r0x1006,F
	BTFSC	STATUS,2
	INCF	r0x1007,F
;[ICODE] _modsint.c:36: 	send iTemp4 [k9 lr9:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{int fixed}[r0x104C r0x104D ]{argreg = 1}
;[ICODE] _modsint.c:36: 	send iTemp6 [k11 lr10:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x104E r0x104F ]{argreg = 1}
;[ICODE] _modsint.c:36: 	iTemp8 [k15 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{unsigned-int fixed}[r0x104C r0x104D ] = call __moduint [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( unsigned-int fixed, unsigned-int fixed)  fixed}
	MOVF	r0x1006,W
	MOVWF	STK02
	MOVF	r0x1007,W
	MOVWF	STK01
	MOVF	r0x1004,W
	MOVWF	STK00
	MOVF	r0x1005,W
	PAGESEL	__moduint
	CALL	__moduint
	PAGESEL	$
	BANKSEL	r0x1005
	MOVWF	r0x1005
	MOVF	STK00,W
	MOVWF	r0x1004
	MOVWF	STK00
	MOVF	r0x1005,W
	GOTO	_00114_DS_
;[ICODE] _modsint.c:36:  _iffalse_0($2) :
;[ICODE] _modsint.c:38: 	iTemp10 [k17 lr16:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{int fixed}[r0x104C r0x104D ] = - iTemp0 [k2 lr3:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ __modsint_a_1_1}[r0x1048 r0x1049 ]
_00106_DS_
;	.line	38; "_modsint.c"	return _moduint ((unsigned int)-a, (unsigned int)b);
	BANKSEL	r0x1001
	COMF	r0x1001,W
	MOVWF	r0x1004
	COMF	r0x1000,W
	MOVWF	r0x1005
	INCF	r0x1004,F
	BTFSC	STATUS,2
	INCF	r0x1005,F
;[ICODE] _modsint.c:38: 	send iTemp10 [k17 lr16:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{int fixed}[r0x104C r0x104D ]{argreg = 1}
;[ICODE] _modsint.c:38: 	send iTemp1 [k4 lr4:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ __modsint_b_1_1}[r0x104A r0x104B ]{argreg = 1}
;[ICODE] _modsint.c:38: 	iTemp13 [k20 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{unsigned-int fixed}[r0x104C r0x104D ] = call __moduint [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( unsigned-int fixed, unsigned-int fixed)  fixed}
	MOVF	r0x1003,W
	MOVWF	STK02
	MOVF	r0x1002,W
	MOVWF	STK01
	MOVF	r0x1004,W
	MOVWF	STK00
	MOVF	r0x1005,W
	PAGESEL	__moduint
	CALL	__moduint
	PAGESEL	$
	BANKSEL	r0x1005
	MOVWF	r0x1005
	MOVF	STK00,W
	MOVWF	r0x1004
	MOVWF	STK00
	MOVF	r0x1005,W
	GOTO	_00114_DS_
;[ICODE] _modsint.c:38:  _iffalse_2($8) :
;[ICODE] _modsint.c:40: 	iTemp15 [k22 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp1 [k4 lr4:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ __modsint_b_1_1}[r0x104A r0x104B ] < 0x0 {int literal}
;signed compare: left < lit(0x0=0), size=2, mask=ffff
_00112_DS_
;	.line	40; "_modsint.c"	if (b < 0)
	BSF	STATUS,0
	BANKSEL	r0x1002
	BTFSS	r0x1002,7
	BCF	STATUS,0
	BTFSS	STATUS,0
	GOTO	_00109_DS_
;genSkipc:3057: created from rifx:0xbff41b54
;[ICODE] _modsint.c:40: 	if iTemp15 [k22 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_1($5)
;[ICODE] _modsint.c:41: 	iTemp17 [k24 lr24:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{int fixed}[r0x104C r0x104D ] = - iTemp1 [k4 lr4:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ __modsint_b_1_1}[r0x104A r0x104B ]
;	.line	41; "_modsint.c"	return _moduint ((unsigned int)a, (unsigned int)-b);
	COMF	r0x1003,W
	MOVWF	r0x1004
	COMF	r0x1002,W
	MOVWF	r0x1005
	INCF	r0x1004,F
	BTFSC	STATUS,2
	INCF	r0x1005,F
;[ICODE] _modsint.c:41: 	send iTemp0 [k2 lr3:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ __modsint_a_1_1}[r0x1048 r0x1049 ]{argreg = 1}
;[ICODE] _modsint.c:41: 	send iTemp17 [k24 lr24:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{int fixed}[r0x104C r0x104D ]{argreg = 1}
;[ICODE] _modsint.c:41: 	iTemp19 [k26 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{unsigned-int fixed}[r0x104C r0x104D ] = call __moduint [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( unsigned-int fixed, unsigned-int fixed)  fixed}
	MOVF	r0x1004,W
	MOVWF	STK02
	MOVF	r0x1005,W
	MOVWF	STK01
	MOVF	r0x1001,W
	MOVWF	STK00
	MOVF	r0x1000,W
	PAGESEL	__moduint
	CALL	__moduint
	PAGESEL	$
	BANKSEL	r0x1005
	MOVWF	r0x1005
	MOVF	STK00,W
	MOVWF	r0x1004
	MOVWF	STK00
	MOVF	r0x1005,W
	GOTO	_00114_DS_
;[ICODE] _modsint.c:41:  _iffalse_1($5) :
;[ICODE] _modsint.c:43: 	send iTemp0 [k2 lr3:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ __modsint_a_1_1}[r0x1048 r0x1049 ]{argreg = 1}
;[ICODE] _modsint.c:43: 	send iTemp1 [k4 lr4:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ __modsint_b_1_1}[r0x104A r0x104B ]{argreg = 1}
;[ICODE] _modsint.c:43: 	iTemp23 [k30 lr32:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{unsigned-int fixed}[r0x1048 r0x1049 ] = call __moduint [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( unsigned-int fixed, unsigned-int fixed)  fixed}
_00109_DS_
;	.line	43; "_modsint.c"	return _moduint ((unsigned int)a, (unsigned int)b);
	BANKSEL	r0x1003
	MOVF	r0x1003,W
	MOVWF	STK02
	MOVF	r0x1002,W
	MOVWF	STK01
	MOVF	r0x1001,W
	MOVWF	STK00
	MOVF	r0x1000,W
	PAGESEL	__moduint
	CALL	__moduint
	PAGESEL	$
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
	MOVWF	STK00
	MOVF	r0x1000,W
;[ICODE] _modsint.c:43:  _return($10) :
;[ICODE] _modsint.c:43: 	eproc __modsint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( int fixed, int fixed)  fixed}
_00114_DS_
	RETURN	
; exit point of __modsint


;	code size estimation:
;	  106+   16 =   122 instructions (  276 byte)

	end
