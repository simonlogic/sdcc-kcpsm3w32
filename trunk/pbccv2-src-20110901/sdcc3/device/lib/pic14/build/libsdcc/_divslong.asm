;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6064 (Nov 22 2010) (Linux)
; This file was generated Mon Nov 22 22:55:44 2010
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"_divslong.c"
	list	p=16f877
	radix dec
	include "p16f877.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	__divulong

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
	global	__divslong

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL__divslong_0	udata
r0x1003	res	1
r0x1002	res	1
r0x1001	res	1
r0x1000	res	1
r0x1007	res	1
r0x1006	res	1
r0x1005	res	1
r0x1004	res	1
r0x1008	res	1
r0x1009	res	1
r0x100A	res	1
r0x100B	res	1
r0x100C	res	1
r0x100D	res	1
r0x100E	res	1
r0x100F	res	1
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
code__divslong	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  __divslong	;Function start
; 2 exit points
;has an exit
;functions called:
;   __divulong
;   __divulong
;   __divulong
;   __divulong
;   __divulong
;   __divulong
;   __divulong
;   __divulong
;23 compiler assigned registers:
;   r0x1000
;   STK00
;   r0x1001
;   STK01
;   r0x1002
;   STK02
;   r0x1003
;   STK03
;   r0x1004
;   STK04
;   r0x1005
;   STK05
;   r0x1006
;   STK06
;   r0x1007
;   r0x1008
;   r0x1009
;   r0x100A
;   r0x100B
;   r0x100C
;   r0x100D
;   r0x100E
;   r0x100F
;; Starting pCode block
;[ICODE] _divslong.c:32:  _entry($11) :
;[ICODE] _divslong.c:32: 	proc __divslong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function    ( long-int fixed, long-int fixed)  fixed}
__divslong	;Function start
; 2 exit points
;[ICODE] _divslong.c:32: iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ __divslong_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = recv __divslong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function    ( long-int fixed, long-int fixed)  fixed}
;	.line	32; "_divslong.c"	_divslong (long a, long b)
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
	MOVF	STK01,W
	MOVWF	r0x1002
	MOVF	STK02,W
	MOVWF	r0x1003
;[ICODE] _divslong.c:32: iTemp1 [k4 lr4:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ __divslong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ] = recv __divslong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function    ( long-int fixed, long-int fixed)  fixed}
	MOVF	STK03,W
	MOVWF	r0x1004
	MOVF	STK04,W
	MOVWF	r0x1005
	MOVF	STK05,W
	MOVWF	r0x1006
	MOVF	STK06,W
	MOVWF	r0x1007
;[ICODE] _divslong.c:34: 	iTemp2 [k6 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ __divslong_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] < 0x0 {long-int literal}
;signed compare: left < lit(0x0=0), size=4, mask=ffffffff
;	.line	34; "_divslong.c"	if (a < 0) {
	BSF	STATUS,0
	BTFSS	r0x1000,7
	BCF	STATUS,0
	BTFSS	STATUS,0
	GOTO	_00112_DS_
;genSkipc:3057: created from rifx:0xbfaea064
;[ICODE] _divslong.c:34: 	if iTemp2 [k6 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_2($8)
;[ICODE] _divslong.c:36: 	iTemp3 [k7 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp1 [k4 lr4:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ __divslong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ] < 0x0 {long-int literal}
;signed compare: left < lit(0x0=0), size=4, mask=ffffffff
;	.line	36; "_divslong.c"	if (b < 0)
	BSF	STATUS,0
	BTFSS	r0x1004,7
	BCF	STATUS,0
	BTFSS	STATUS,0
	GOTO	_00106_DS_
;genSkipc:3057: created from rifx:0xbfaea064
;[ICODE] _divslong.c:36: 	if iTemp3 [k7 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_0($2)
;[ICODE] _divslong.c:37: 	iTemp4 [k9 lr9:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{long-int fixed}[r0x1050 r0x1051 r0x1052 r0x1053 ] = - iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ __divslong_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]
;	.line	37; "_divslong.c"	return _divulong ((unsigned long)-a, (unsigned long)-b);
	COMF	r0x1003,W
	MOVWF	r0x1008
	COMF	r0x1002,W
	MOVWF	r0x1009
	COMF	r0x1001,W
	MOVWF	r0x100A
	COMF	r0x1000,W
	MOVWF	r0x100B
	INCF	r0x1008,F
	BTFSC	STATUS,2
	INCF	r0x1009,F
	BTFSC	STATUS,2
	INCF	r0x100A,F
	BTFSC	STATUS,2
	INCF	r0x100B,F
;[ICODE] _divslong.c:37: 	iTemp6 [k11 lr10:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int fixed}[r0x1054 r0x1055 r0x1056 r0x1057 ] = - iTemp1 [k4 lr4:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ __divslong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ]
	COMF	r0x1007,W
	MOVWF	r0x100C
	COMF	r0x1006,W
	MOVWF	r0x100D
	COMF	r0x1005,W
	MOVWF	r0x100E
	COMF	r0x1004,W
	MOVWF	r0x100F
	INCF	r0x100C,F
	BTFSC	STATUS,2
	INCF	r0x100D,F
	BTFSC	STATUS,2
	INCF	r0x100E,F
	BTFSC	STATUS,2
	INCF	r0x100F,F
;[ICODE] _divslong.c:37: 	send iTemp4 [k9 lr9:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{long-int fixed}[r0x1050 r0x1051 r0x1052 r0x1053 ]{argreg = 1}
;[ICODE] _divslong.c:37: 	send iTemp6 [k11 lr10:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int fixed}[r0x1054 r0x1055 r0x1056 r0x1057 ]{argreg = 1}
;[ICODE] _divslong.c:37: 	iTemp8 [k15 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{unsigned-long-int fixed}[r0x1050 r0x1051 r0x1052 r0x1053 ] = call __divulong [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int function    ( unsigned-long-int fixed, unsigned-long-int fixed)  fixed}
	MOVF	r0x100C,W
	MOVWF	STK06
	MOVF	r0x100D,W
	MOVWF	STK05
	MOVF	r0x100E,W
	MOVWF	STK04
	MOVF	r0x100F,W
	MOVWF	STK03
	MOVF	r0x1008,W
	MOVWF	STK02
	MOVF	r0x1009,W
	MOVWF	STK01
	MOVF	r0x100A,W
	MOVWF	STK00
	MOVF	r0x100B,W
	PAGESEL	__divulong
	CALL	__divulong
	PAGESEL	$
	BANKSEL	r0x100B
	MOVWF	r0x100B
	MOVF	STK00,W
	MOVWF	r0x100A
	MOVF	STK01,W
	MOVWF	r0x1009
	MOVF	STK02,W
	MOVWF	r0x1008
	MOVWF	STK02
	MOVF	r0x1009,W
	MOVWF	STK01
	MOVF	r0x100A,W
	MOVWF	STK00
	MOVF	r0x100B,W
	GOTO	_00114_DS_
;[ICODE] _divslong.c:37:  _iffalse_0($2) :
;[ICODE] _divslong.c:39: 	iTemp10 [k17 lr16:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{long-int fixed}[r0x1050 r0x1051 r0x1052 r0x1053 ] = - iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ __divslong_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]
_00106_DS_
;	.line	39; "_divslong.c"	return -_divulong ((unsigned long)-a, (unsigned long)b);
	BANKSEL	r0x1003
	COMF	r0x1003,W
	MOVWF	r0x1008
	COMF	r0x1002,W
	MOVWF	r0x1009
	COMF	r0x1001,W
	MOVWF	r0x100A
	COMF	r0x1000,W
	MOVWF	r0x100B
	INCF	r0x1008,F
	BTFSC	STATUS,2
	INCF	r0x1009,F
	BTFSC	STATUS,2
	INCF	r0x100A,F
	BTFSC	STATUS,2
	INCF	r0x100B,F
;[ICODE] _divslong.c:39: 	send iTemp10 [k17 lr16:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{long-int fixed}[r0x1050 r0x1051 r0x1052 r0x1053 ]{argreg = 1}
;[ICODE] _divslong.c:39: 	send iTemp1 [k4 lr4:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ __divslong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ]{argreg = 1}
;[ICODE] _divslong.c:39: 	iTemp13 [k20 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1050 r0x1051 r0x1052 r0x1053 ] = call __divulong [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int function    ( unsigned-long-int fixed, unsigned-long-int fixed)  fixed}
	MOVF	r0x1007,W
	MOVWF	STK06
	MOVF	r0x1006,W
	MOVWF	STK05
	MOVF	r0x1005,W
	MOVWF	STK04
	MOVF	r0x1004,W
	MOVWF	STK03
	MOVF	r0x1008,W
	MOVWF	STK02
	MOVF	r0x1009,W
	MOVWF	STK01
	MOVF	r0x100A,W
	MOVWF	STK00
	MOVF	r0x100B,W
	PAGESEL	__divulong
	CALL	__divulong
	PAGESEL	$
	BANKSEL	r0x100B
	MOVWF	r0x100B
	MOVF	STK00,W
	MOVWF	r0x100A
	MOVF	STK01,W
	MOVWF	r0x1009
	MOVF	STK02,W
	MOVWF	r0x1008
;[ICODE] _divslong.c:39: 	iTemp14 [k21 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{unsigned-long-int fixed}[r0x1050 r0x1051 r0x1052 r0x1053 ] = - iTemp13 [k20 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1050 r0x1051 r0x1052 r0x1053 ]
	COMF	r0x1008,F
	COMF	r0x1009,F
	COMF	r0x100A,F
	COMF	r0x100B,F
	INCF	r0x1008,F
	BTFSC	STATUS,2
	INCF	r0x1009,F
	BTFSC	STATUS,2
	INCF	r0x100A,F
	BTFSC	STATUS,2
	INCF	r0x100B,F
;[ICODE] _divslong.c:39: 	ret iTemp14 [k21 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{unsigned-long-int fixed}[r0x1050 r0x1051 r0x1052 r0x1053 ]
	MOVF	r0x1008,W
	MOVWF	STK02
	MOVF	r0x1009,W
	MOVWF	STK01
	MOVF	r0x100A,W
	MOVWF	STK00
	MOVF	r0x100B,W
	GOTO	_00114_DS_
;[ICODE] _divslong.c:39:  _iffalse_2($8) :
;[ICODE] _divslong.c:42: 	iTemp16 [k23 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp1 [k4 lr4:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ __divslong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ] < 0x0 {long-int literal}
;signed compare: left < lit(0x0=0), size=4, mask=ffffffff
_00112_DS_
;	.line	42; "_divslong.c"	if (b < 0)
	BSF	STATUS,0
	BANKSEL	r0x1004
	BTFSS	r0x1004,7
	BCF	STATUS,0
	BTFSS	STATUS,0
	GOTO	_00109_DS_
;genSkipc:3057: created from rifx:0xbfaea064
;[ICODE] _divslong.c:42: 	if iTemp16 [k23 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_1($5)
;[ICODE] _divslong.c:43: 	iTemp18 [k25 lr25:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{long-int fixed}[r0x1050 r0x1051 r0x1052 r0x1053 ] = - iTemp1 [k4 lr4:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ __divslong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ]
;	.line	43; "_divslong.c"	return -_divulong ((unsigned long)a, (unsigned long)-b);
	COMF	r0x1007,W
	MOVWF	r0x1008
	COMF	r0x1006,W
	MOVWF	r0x1009
	COMF	r0x1005,W
	MOVWF	r0x100A
	COMF	r0x1004,W
	MOVWF	r0x100B
	INCF	r0x1008,F
	BTFSC	STATUS,2
	INCF	r0x1009,F
	BTFSC	STATUS,2
	INCF	r0x100A,F
	BTFSC	STATUS,2
	INCF	r0x100B,F
;[ICODE] _divslong.c:43: 	send iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ __divslong_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]{argreg = 1}
;[ICODE] _divslong.c:43: 	send iTemp18 [k25 lr25:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{long-int fixed}[r0x1050 r0x1051 r0x1052 r0x1053 ]{argreg = 1}
;[ICODE] _divslong.c:43: 	iTemp20 [k27 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1050 r0x1051 r0x1052 r0x1053 ] = call __divulong [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int function    ( unsigned-long-int fixed, unsigned-long-int fixed)  fixed}
	MOVF	r0x1008,W
	MOVWF	STK06
	MOVF	r0x1009,W
	MOVWF	STK05
	MOVF	r0x100A,W
	MOVWF	STK04
	MOVF	r0x100B,W
	MOVWF	STK03
	MOVF	r0x1003,W
	MOVWF	STK02
	MOVF	r0x1002,W
	MOVWF	STK01
	MOVF	r0x1001,W
	MOVWF	STK00
	MOVF	r0x1000,W
	PAGESEL	__divulong
	CALL	__divulong
	PAGESEL	$
	BANKSEL	r0x100B
	MOVWF	r0x100B
	MOVF	STK00,W
	MOVWF	r0x100A
	MOVF	STK01,W
	MOVWF	r0x1009
	MOVF	STK02,W
	MOVWF	r0x1008
;[ICODE] _divslong.c:43: 	iTemp21 [k28 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{unsigned-long-int fixed}[r0x1050 r0x1051 r0x1052 r0x1053 ] = - iTemp20 [k27 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1050 r0x1051 r0x1052 r0x1053 ]
	COMF	r0x1008,F
	COMF	r0x1009,F
	COMF	r0x100A,F
	COMF	r0x100B,F
	INCF	r0x1008,F
	BTFSC	STATUS,2
	INCF	r0x1009,F
	BTFSC	STATUS,2
	INCF	r0x100A,F
	BTFSC	STATUS,2
	INCF	r0x100B,F
;[ICODE] _divslong.c:43: 	ret iTemp21 [k28 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{unsigned-long-int fixed}[r0x1050 r0x1051 r0x1052 r0x1053 ]
	MOVF	r0x1008,W
	MOVWF	STK02
	MOVF	r0x1009,W
	MOVWF	STK01
	MOVF	r0x100A,W
	MOVWF	STK00
	MOVF	r0x100B,W
	GOTO	_00114_DS_
;[ICODE] _divslong.c:43:  _iffalse_1($5) :
;[ICODE] _divslong.c:45: 	send iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ __divslong_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]{argreg = 1}
;[ICODE] _divslong.c:45: 	send iTemp1 [k4 lr4:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ __divslong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ]{argreg = 1}
;[ICODE] _divslong.c:45: 	iTemp25 [k32 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = call __divulong [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int function    ( unsigned-long-int fixed, unsigned-long-int fixed)  fixed}
_00109_DS_
;	.line	45; "_divslong.c"	return _divulong ((unsigned long)a, (unsigned long)b);
	BANKSEL	r0x1007
	MOVF	r0x1007,W
	MOVWF	STK06
	MOVF	r0x1006,W
	MOVWF	STK05
	MOVF	r0x1005,W
	MOVWF	STK04
	MOVF	r0x1004,W
	MOVWF	STK03
	MOVF	r0x1003,W
	MOVWF	STK02
	MOVF	r0x1002,W
	MOVWF	STK01
	MOVF	r0x1001,W
	MOVWF	STK00
	MOVF	r0x1000,W
	PAGESEL	__divulong
	CALL	__divulong
	PAGESEL	$
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
	MOVF	STK01,W
	MOVWF	r0x1002
	MOVF	STK02,W
	MOVWF	r0x1003
	MOVWF	STK02
	MOVF	r0x1002,W
	MOVWF	STK01
	MOVF	r0x1001,W
	MOVWF	STK00
	MOVF	r0x1000,W
;[ICODE] _divslong.c:45:  _return($10) :
;[ICODE] _divslong.c:45: 	eproc __divslong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function    ( long-int fixed, long-int fixed)  fixed}
_00114_DS_
	RETURN	
; exit point of __divslong


;	code size estimation:
;	  234+   16 =   250 instructions (  532 byte)

	end
