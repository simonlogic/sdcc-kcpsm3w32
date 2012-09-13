;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6064 (Nov 22 2010) (Linux)
; This file was generated Mon Nov 22 22:55:45 2010
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"_modschar.c"
	list	p=16f877
	radix dec
	include "p16f877.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	__moduchar

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
	global	__modschar

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL__modschar_0	udata
r0x1000	res	1
r0x1001	res	1
r0x1002	res	1
r0x1003	res	1
r0x1004	res	1
r0x1005	res	1
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
code__modschar	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  __modschar	;Function start
; 2 exit points
;has an exit
;functions called:
;   __moduchar
;   __moduchar
;   __moduchar
;   __moduchar
;   __moduchar
;   __moduchar
;   __moduchar
;   __moduchar
;7 compiler assigned registers:
;   r0x1000
;   STK00
;   r0x1001
;   r0x1002
;   r0x1003
;   r0x1004
;   r0x1005
;; Starting pCode block
;[ICODE] _modschar.c:32:  _entry($11) :
;[ICODE] _modschar.c:32: 	proc __modschar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( char fixed, char fixed)  fixed}
__modschar	;Function start
; 2 exit points
;[ICODE] _modschar.c:32: iTemp0 [k2 lr3:48 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ __modschar_a_1_1}[r0x1048 ] = recv __modschar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( char fixed, char fixed)  fixed}
;	.line	32; "_modschar.c"	_modschar (signed char a, signed char b)
	BANKSEL	r0x1000
	MOVWF	r0x1000
;[ICODE] _modschar.c:32: iTemp1 [k4 lr4:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ __modschar_b_1_1}[r0x1049 ] = recv __modschar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( char fixed, char fixed)  fixed}
	MOVF	STK00,W
	MOVWF	r0x1001
;[ICODE] _modschar.c:34: 	iTemp2 [k6 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp0 [k2 lr3:48 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ __modschar_a_1_1}[r0x1048 ] < 0x0 {const-char literal}
;signed compare: left < lit(0x0=0), size=1, mask=ff
;	.line	34; "_modschar.c"	if (a < 0) {
	BSF	STATUS,0
	BTFSS	r0x1000,7
	BCF	STATUS,0
	BTFSS	STATUS,0
	GOTO	_00112_DS_
;genSkipc:3057: created from rifx:0xbfd36954
;[ICODE] _modschar.c:34: 	if iTemp2 [k6 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_2($8)
;[ICODE] _modschar.c:36: 	iTemp3 [k7 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp1 [k4 lr4:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ __modschar_b_1_1}[r0x1049 ] < 0x0 {const-char literal}
;signed compare: left < lit(0x0=0), size=1, mask=ff
;	.line	36; "_modschar.c"	if (b < 0)
	BSF	STATUS,0
	BTFSS	r0x1001,7
	BCF	STATUS,0
	BTFSS	STATUS,0
	GOTO	_00106_DS_
;genSkipc:3057: created from rifx:0xbfd36954
;[ICODE] _modschar.c:36: 	if iTemp3 [k7 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_0($2)
;[ICODE] _modschar.c:37: 	iTemp4 [k9 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x104A r0x104B ] = (int fixed)iTemp0 [k2 lr3:48 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ __modschar_a_1_1}[r0x1048 ]
;	.line	37; "_modschar.c"	return _moduchar ((unsigned int)-a, (unsigned int)-b);
	MOVF	r0x1000,W
	MOVWF	r0x1002
	CLRF	r0x1003
	BTFSC	r0x1002,7
	DECF	r0x1003,F
;[ICODE] _modschar.c:37: 	iTemp6 [k11 lr10:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x104A r0x104B ] = - iTemp4 [k9 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x104A r0x104B ]
	COMF	r0x1002,F
	COMF	r0x1003,F
	INCF	r0x1002,F
	BTFSC	STATUS,2
	INCF	r0x1003,F
;[ICODE] _modschar.c:37: 	iTemp7 [k12 lr12:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{unsigned-char fixed}[r0x104C ] = (unsigned-char fixed)iTemp6 [k11 lr10:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x104A r0x104B ]
	MOVF	r0x1002,W
	MOVWF	r0x1004
;[ICODE] _modschar.c:37: 	iTemp8 [k13 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x104A r0x104B ] = (int fixed)iTemp1 [k4 lr4:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ __modschar_b_1_1}[r0x1049 ]
	MOVF	r0x1001,W
	MOVWF	r0x1002
	CLRF	r0x1003
	BTFSC	r0x1002,7
	DECF	r0x1003,F
;[ICODE] _modschar.c:37: 	iTemp10 [k15 lr14:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x104A r0x104B ] = - iTemp8 [k13 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x104A r0x104B ]
	COMF	r0x1002,F
	COMF	r0x1003,F
	INCF	r0x1002,F
	BTFSC	STATUS,2
	INCF	r0x1003,F
;[ICODE] _modschar.c:37: 	iTemp11 [k16 lr16:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x104D ] = (unsigned-char fixed)iTemp10 [k15 lr14:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x104A r0x104B ]
	MOVF	r0x1002,W
	MOVWF	r0x1005
	MOVWF	STK00
	MOVF	r0x1004,W
	PAGESEL	__moduchar
	CALL	__moduchar
	PAGESEL	$
	BANKSEL	r0x1002
	MOVWF	r0x1002
	GOTO	_00114_DS_
;[ICODE] _modschar.c:37:  _iffalse_0($2) :
;[ICODE] _modschar.c:39: 	iTemp14 [k21 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x104A r0x104B ] = (int fixed)iTemp0 [k2 lr3:48 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ __modschar_a_1_1}[r0x1048 ]
_00106_DS_
;	.line	39; "_modschar.c"	return -_moduchar ((unsigned int)-a, (unsigned int)b);
	BANKSEL	r0x1000
	MOVF	r0x1000,W
	MOVWF	r0x1002
	CLRF	r0x1003
	BTFSC	r0x1002,7
	DECF	r0x1003,F
;[ICODE] _modschar.c:39: 	iTemp16 [k23 lr23:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x104A r0x104B ] = - iTemp14 [k21 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x104A r0x104B ]
	COMF	r0x1002,F
	COMF	r0x1003,F
	INCF	r0x1002,F
	BTFSC	STATUS,2
	INCF	r0x1003,F
;[ICODE] _modschar.c:39: 	iTemp17 [k24 lr25:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{unsigned-char fixed}[r0x104C ] = (unsigned-char fixed)iTemp16 [k23 lr23:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x104A r0x104B ]
	MOVF	r0x1002,W
	MOVWF	r0x1004
;[ICODE] _modschar.c:39: 	iTemp18 [k25 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x104A r0x104B ] = (unsigned-int fixed)iTemp1 [k4 lr4:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ __modschar_b_1_1}[r0x1049 ]
	MOVF	r0x1001,W
	MOVWF	r0x1002
	CLRF	r0x1003
	BTFSC	r0x1002,7
	DECF	r0x1003,F
;[ICODE] _modschar.c:39: 	iTemp19 [k26 lr27:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x104D ] = (unsigned-char fixed)iTemp18 [k25 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x104A r0x104B ]
	MOVF	r0x1002,W
	MOVWF	r0x1005
	MOVWF	STK00
	MOVF	r0x1004,W
	PAGESEL	__moduchar
	CALL	__moduchar
	PAGESEL	$
	BANKSEL	r0x1002
	MOVWF	r0x1002
;[ICODE] _modschar.c:39: 	iTemp21 [k28 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{unsigned-char fixed}[r0x104A ] = - iTemp20 [k27 lr30:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x104A ]
	COMF	r0x1002,F
	INCF	r0x1002,F
;[ICODE] _modschar.c:39: 	ret iTemp21 [k28 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{unsigned-char fixed}[r0x104A ]
	MOVF	r0x1002,W
	GOTO	_00114_DS_
;[ICODE] _modschar.c:39:  _iffalse_2($8) :
;[ICODE] _modschar.c:42: 	iTemp23 [k30 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp1 [k4 lr4:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ __modschar_b_1_1}[r0x1049 ] < 0x0 {const-char literal}
;signed compare: left < lit(0x0=0), size=1, mask=ff
_00112_DS_
;	.line	42; "_modschar.c"	if (b < 0)
	BSF	STATUS,0
	BANKSEL	r0x1001
	BTFSS	r0x1001,7
	BCF	STATUS,0
	BTFSS	STATUS,0
	GOTO	_00109_DS_
;genSkipc:3057: created from rifx:0xbfd36954
;[ICODE] _modschar.c:42: 	if iTemp23 [k30 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_1($5)
;[ICODE] _modschar.c:43: 	iTemp24 [k31 lr36:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x104A r0x104B ] = (unsigned-int fixed)iTemp0 [k2 lr3:48 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ __modschar_a_1_1}[r0x1048 ]
;	.line	43; "_modschar.c"	return -_moduchar ((unsigned int)a, (unsigned int)-b);
	MOVF	r0x1000,W
	MOVWF	r0x1002
	CLRF	r0x1003
	BTFSC	r0x1002,7
	DECF	r0x1003,F
;[ICODE] _modschar.c:43: 	iTemp25 [k32 lr37:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{unsigned-char fixed}[r0x104C ] = (unsigned-char fixed)iTemp24 [k31 lr36:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x104A r0x104B ]
	MOVF	r0x1002,W
	MOVWF	r0x1004
;[ICODE] _modschar.c:43: 	iTemp26 [k33 lr38:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x104A r0x104B ] = (int fixed)iTemp1 [k4 lr4:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ __modschar_b_1_1}[r0x1049 ]
	MOVF	r0x1001,W
	MOVWF	r0x1002
	CLRF	r0x1003
	BTFSC	r0x1002,7
	DECF	r0x1003,F
;[ICODE] _modschar.c:43: 	iTemp28 [k35 lr39:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x104A r0x104B ] = - iTemp26 [k33 lr38:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x104A r0x104B ]
	COMF	r0x1002,F
	COMF	r0x1003,F
	INCF	r0x1002,F
	BTFSC	STATUS,2
	INCF	r0x1003,F
;[ICODE] _modschar.c:43: 	iTemp29 [k36 lr41:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x104D ] = (unsigned-char fixed)iTemp28 [k35 lr39:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x104A r0x104B ]
	MOVF	r0x1002,W
	MOVWF	r0x1005
	MOVWF	STK00
	MOVF	r0x1004,W
	PAGESEL	__moduchar
	CALL	__moduchar
	PAGESEL	$
	BANKSEL	r0x1002
	MOVWF	r0x1002
;[ICODE] _modschar.c:43: 	iTemp31 [k38 lr45:46 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{unsigned-char fixed}[r0x104A ] = - iTemp30 [k37 lr44:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x104A ]
	COMF	r0x1002,F
	INCF	r0x1002,F
;[ICODE] _modschar.c:43: 	ret iTemp31 [k38 lr45:46 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{unsigned-char fixed}[r0x104A ]
	MOVF	r0x1002,W
	GOTO	_00114_DS_
;[ICODE] _modschar.c:43:  _iffalse_1($5) :
;[ICODE] _modschar.c:45: 	iTemp33 [k40 lr48:49 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x104A r0x104B ] = (unsigned-int fixed)iTemp0 [k2 lr3:48 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ __modschar_a_1_1}[r0x1048 ]
_00109_DS_
;	.line	45; "_modschar.c"	return _moduchar ((unsigned int)a, (unsigned int)b);
	BANKSEL	r0x1000
	MOVF	r0x1000,W
	MOVWF	r0x1002
	CLRF	r0x1003
	BTFSC	r0x1002,7
	DECF	r0x1003,F
;[ICODE] _modschar.c:45: 	iTemp34 [k41 lr49:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{unsigned-char fixed}[r0x1048 ] = (unsigned-char fixed)iTemp33 [k40 lr48:49 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x104A r0x104B ]
	MOVF	r0x1002,W
	MOVWF	r0x1000
;[ICODE] _modschar.c:45: 	iTemp35 [k42 lr50:51 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x104A r0x104B ] = (unsigned-int fixed)iTemp1 [k4 lr4:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ __modschar_b_1_1}[r0x1049 ]
	MOVF	r0x1001,W
	MOVWF	r0x1002
	CLRF	r0x1003
	BTFSC	r0x1002,7
	DECF	r0x1003,F
;[ICODE] _modschar.c:45: 	iTemp36 [k43 lr51:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x1049 ] = (unsigned-char fixed)iTemp35 [k42 lr50:51 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x104A r0x104B ]
	MOVF	r0x1002,W
	MOVWF	r0x1001
	MOVWF	STK00
	MOVF	r0x1000,W
	PAGESEL	__moduchar
	CALL	__moduchar
	PAGESEL	$
	BANKSEL	r0x1000
	MOVWF	r0x1000
_00114_DS_
	RETURN	
; exit point of __modschar


;	code size estimation:
;	  120+   16 =   136 instructions (  304 byte)

	end
