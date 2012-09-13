;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6064 (Nov 22 2010) (Linux)
; This file was generated Mon Nov 22 22:55:46 2010
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"sincosf.c"
	list	p=16f877
	radix dec
	include "p16f877.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_sinf
	extern	_cosf
	extern	_tanf
	extern	_cotf
	extern	_asinf
	extern	_acosf
	extern	_atanf
	extern	_atan2f
	extern	_sinhf
	extern	_coshf
	extern	_tanhf
	extern	_expf
	extern	_logf
	extern	_log10f
	extern	_powf
	extern	_sqrtf
	extern	_fabsf
	extern	_frexpf
	extern	_ldexpf
	extern	_ceilf
	extern	_floorf
	extern	_modff
	extern	___fsadd
	extern	___fslt
	extern	___fsgt
	extern	___fsmul
	extern	___fs2sint
	extern	___sint2fs
	extern	___fssub
	extern	_errno

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
	global	_sincosf

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_sincosf_0	udata
r0x1005	res	1
r0x1004	res	1
r0x1003	res	1
r0x1002	res	1
r0x1007	res	1
r0x1006	res	1
r0x100B	res	1
r0x100A	res	1
r0x1009	res	1
r0x1008	res	1
r0x100C	res	1
r0x100D	res	1
r0x1010	res	1
r0x100F	res	1
r0x100E	res	1
r0x1012	res	1
r0x1011	res	1
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
code_sincosf	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _sincosf	;Function start
; 2 exit points
;has an exit
;functions called:
;   _fabsf
;   ___fsadd
;   ___fslt
;   ___fsgt
;   ___fsmul
;   ___fsadd
;   ___fs2sint
;   ___sint2fs
;   ___fssub
;   _fabsf
;   ___fs2sint
;   ___sint2fs
;   ___fssub
;   ___fsmul
;   ___fssub
;   ___fsadd
;   ___fsmul
;   ___fssub
;   ___fsmul
;   ___fsgt
;   ___fsmul
;   ___fsadd
;   ___fsmul
;   ___fsadd
;   ___fsmul
;   ___fsadd
;   ___fsmul
;   ___fsmul
;   ___fsadd
;   _fabsf
;   ___fsadd
;   ___fslt
;   ___fsgt
;   ___fsmul
;   ___fsadd
;   ___fs2sint
;   ___sint2fs
;   ___fssub
;   _fabsf
;   ___fs2sint
;   ___sint2fs
;   ___fssub
;   ___fsmul
;   ___fssub
;   ___fsadd
;   ___fsmul
;   ___fssub
;   ___fsmul
;   ___fsgt
;   ___fsmul
;   ___fsadd
;   ___fsmul
;   ___fsadd
;   ___fsmul
;   ___fsadd
;   ___fsmul
;   ___fsmul
;   ___fsadd
;24 compiler assigned registers:
;   r0x1002
;   STK00
;   r0x1003
;   STK01
;   r0x1004
;   STK02
;   r0x1005
;   STK03
;   r0x1006
;   STK04
;   r0x1007
;   r0x1008
;   r0x1009
;   r0x100A
;   r0x100B
;   STK06
;   STK05
;   r0x100C
;   r0x100D
;   r0x100E
;   r0x100F
;   r0x1010
;   r0x1011
;   r0x1012
;; Starting pCode block
;[ICODE] sincosf.c:47:  _entry($16) :
;[ICODE] sincosf.c:47: 	proc _sincosf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, int fixed)  fixed}
_sincosf	;Function start
; 2 exit points
;[ICODE] sincosf.c:47: iTemp0 [k2 lr3:58 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _sincosf_x_1_1}[r0x1049 r0x104A r0x104B r0x104C ] = recv _sincosf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, int fixed)  fixed}
;	.line	47; "sincosf.c"	float sincosf(float x, int iscos)
	BANKSEL	r0x1002
	MOVWF	r0x1002
	MOVF	STK00,W
	MOVWF	r0x1003
	MOVF	STK01,W
	MOVWF	r0x1004
	MOVF	STK02,W
	MOVWF	r0x1005
;[ICODE] sincosf.c:47: iTemp1 [k4 lr4:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ _sincosf_iscos_1_1}[r0x104D r0x104E ] = recv _sincosf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, int fixed)  fixed}
	MOVF	STK03,W
	MOVWF	r0x1006
	MOVF	STK04,W
;	.line	53; "sincosf.c"	if(iscos)
	MOVWF	r0x1007
	IORWF	r0x1006,W
	BTFSC	STATUS,2
	GOTO	_00109_DS_
;[ICODE] sincosf.c:55: 	send iTemp0 [k2 lr3:58 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _sincosf_x_1_1}[r0x1049 r0x104A r0x104B r0x104C ]{argreg = 1}
;[ICODE] sincosf.c:55: 	iTemp3 [k10 lr7:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x104F r0x1050 r0x1051 r0x1052 ] = call _fabsf [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed)  fixed}
;	.line	55; "sincosf.c"	y=fabsf(x)+HALF_PI;
	MOVF	r0x1005,W
	MOVWF	STK02
	MOVF	r0x1004,W
	MOVWF	STK01
	MOVF	r0x1003,W
	MOVWF	STK00
	MOVF	r0x1002,W
	PAGESEL	_fabsf
	CALL	_fabsf
	PAGESEL	$
	BANKSEL	r0x1008
	MOVWF	r0x1008
	MOVF	STK00,W
	MOVWF	r0x1009
	MOVF	STK01,W
	MOVWF	r0x100A
	MOVF	STK02,W
	MOVWF	r0x100B
;[ICODE] sincosf.c:55: 	send iTemp3 [k10 lr7:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x104F r0x1050 r0x1051 r0x1052 ]{argreg = 1}
;[ICODE] sincosf.c:55: 	send 1.5708 {const-float literal}{argreg = 1}
;[ICODE] sincosf.c:55: 	iTemp2 [k6 lr10:67 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _sincosf_y_1_1}[r0x104F r0x1050 r0x1051 r0x1052 ] = call ___fsadd [k59 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVLW	0xdb
	MOVWF	STK06
	MOVLW	0x0f
	MOVWF	STK05
	MOVLW	0xc9
	MOVWF	STK04
	MOVLW	0x3f
	MOVWF	STK03
	MOVF	r0x100B,W
	MOVWF	STK02
	MOVF	r0x100A,W
	MOVWF	STK01
	MOVF	r0x1009,W
	MOVWF	STK00
	MOVF	r0x1008,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x1008
	MOVWF	r0x1008
	MOVF	STK00,W
	MOVWF	r0x1009
	MOVF	STK01,W
	MOVWF	r0x100A
	MOVF	STK02,W
	MOVWF	r0x100B
;[ICODE] sincosf.c:56: 	iTemp5 [k12 lr12:124 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _sincosf_sign_1_1}[r0x1053 ] := 0x0 {char literal}
;	.line	56; "sincosf.c"	sign=0;
	CLRF	r0x100C
;[ICODE] sincosf.c:56: 	 goto _ifend_1($6)
	GOTO	_00110_DS_
;[ICODE] sincosf.c:56:  _iffalse_1($5) :
;[ICODE] sincosf.c:60: 	send iTemp0 [k2 lr3:58 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _sincosf_x_1_1}[r0x1049 r0x104A r0x104B r0x104C ]{argreg = 1}
;[ICODE] sincosf.c:60: 	send 0 {const-float literal}{argreg = 1}
;[ICODE] sincosf.c:60: 	iTemp6 [k14 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1054 ] = call ___fslt [k60 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float fixed, float fixed)  fixed}
_00109_DS_
;	.line	60; "sincosf.c"	if(x<0.0)
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x00
	MOVWF	STK04
	MOVLW	0x00
	MOVWF	STK03
	BANKSEL	r0x1005
	MOVF	r0x1005,W
	MOVWF	STK02
	MOVF	r0x1004,W
	MOVWF	STK01
	MOVF	r0x1003,W
	MOVWF	STK00
	MOVF	r0x1002,W
	PAGESEL	___fslt
	CALL	___fslt
	PAGESEL	$
	BANKSEL	r0x100D
	MOVWF	r0x100D
;[ICODE] sincosf.c:60: 	if iTemp6 [k14 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1054 ] == 0 goto _iffalse_0($2)
	MOVF	r0x100D,W
	BTFSC	STATUS,2
	GOTO	_00106_DS_
;[ICODE] sincosf.c:61: 	iTemp2 [k6 lr10:67 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _sincosf_y_1_1}[r0x104F r0x1050 r0x1051 r0x1052 ] = - iTemp0 [k2 lr3:58 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _sincosf_x_1_1}[r0x1049 r0x104A r0x104B r0x104C ]
;	.line	61; "sincosf.c"	{ y=-x; sign=1; }
	MOVF	r0x1002,W
	XORLW	0x80
	MOVWF	r0x1008
	MOVF	r0x1003,W
	MOVWF	r0x1009
	MOVF	r0x1004,W
	MOVWF	r0x100A
	MOVF	r0x1005,W
	MOVWF	r0x100B
;[ICODE] sincosf.c:61: 	iTemp5 [k12 lr12:124 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _sincosf_sign_1_1}[r0x1053 ] := 0x1 {char literal}
	MOVLW	0x01
	MOVWF	r0x100C
;[ICODE] sincosf.c:61: 	 goto _ifend_1($6)
	GOTO	_00110_DS_
;[ICODE] sincosf.c:61:  _iffalse_0($2) :
;[ICODE] sincosf.c:63: 	iTemp2 [k6 lr10:67 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _sincosf_y_1_1}[r0x104F r0x1050 r0x1051 r0x1052 ] := iTemp0 [k2 lr3:58 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _sincosf_x_1_1}[r0x1049 r0x104A r0x104B r0x104C ]
_00106_DS_
;	.line	63; "sincosf.c"	{ y=x; sign=0; }
	BANKSEL	r0x1005
	MOVF	r0x1005,W
	MOVWF	r0x100B
	MOVF	r0x1004,W
	MOVWF	r0x100A
	MOVF	r0x1003,W
	MOVWF	r0x1009
	MOVF	r0x1002,W
	MOVWF	r0x1008
;[ICODE] sincosf.c:63: 	iTemp5 [k12 lr12:124 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _sincosf_sign_1_1}[r0x1053 ] := 0x0 {char literal}
	CLRF	r0x100C
;[ICODE] sincosf.c:63:  _ifend_1($6) :
;[ICODE] sincosf.c:66: 	send iTemp2 [k6 lr10:67 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _sincosf_y_1_1}[r0x104F r0x1050 r0x1051 r0x1052 ]{argreg = 1}
;[ICODE] sincosf.c:66: 	send 12867 {const-float literal}{argreg = 1}
;[ICODE] sincosf.c:66: 	iTemp8 [k16 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1054 ] = call ___fsgt [k61 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float fixed, float fixed)  fixed}
_00110_DS_
;	.line	66; "sincosf.c"	if(y>YMAX)
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x0c
	MOVWF	STK05
	MOVLW	0x49
	MOVWF	STK04
	MOVLW	0x46
	MOVWF	STK03
	BANKSEL	r0x100B
	MOVF	r0x100B,W
	MOVWF	STK02
	MOVF	r0x100A,W
	MOVWF	STK01
	MOVF	r0x1009,W
	MOVWF	STK00
	MOVF	r0x1008,W
	PAGESEL	___fsgt
	CALL	___fsgt
	PAGESEL	$
	BANKSEL	r0x100D
	MOVWF	r0x100D
;[ICODE] sincosf.c:66: 	if iTemp8 [k16 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1054 ] == 0 goto _iffalse_2($8)
	MOVF	r0x100D,W
	BTFSC	STATUS,2
	GOTO	_00112_DS_
;[ICODE] sincosf.c:68: 	_errno [k17 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed} := 0x22 {int literal}
;	.line	68; "sincosf.c"	errno=ERANGE;
	MOVLW	0x22
	BANKSEL	_errno
	MOVWF	_errno
	CLRF	(_errno + 1)
;[ICODE] sincosf.c:69: 	ret 0 {const-float literal}
;	.line	69; "sincosf.c"	return 0.0;
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x00
	GOTO	_00119_DS_
;[ICODE] sincosf.c:69:  _iffalse_2($8) :
;[ICODE] sincosf.c:73: 	send 0.31831 {const-float literal}{argreg = 1}
;[ICODE] sincosf.c:73: 	send iTemp2 [k6 lr10:67 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _sincosf_y_1_1}[r0x104F r0x1050 r0x1051 r0x1052 ]{argreg = 1}
;[ICODE] sincosf.c:73: 	iTemp11 [k21 lr36:38 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1054 r0x1055 r0x1056 r0x1057 ] = call ___fsmul [k62 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
_00112_DS_
;	.line	73; "sincosf.c"	N=((y*iPI)+0.5); /*y is positive*/
	BANKSEL	r0x100B
	MOVF	r0x100B,W
	MOVWF	STK06
	MOVF	r0x100A,W
	MOVWF	STK05
	MOVF	r0x1009,W
	MOVWF	STK04
	MOVF	r0x1008,W
	MOVWF	STK03
	MOVLW	0x83
	MOVWF	STK02
	MOVLW	0xf9
	MOVWF	STK01
	MOVLW	0xa2
	MOVWF	STK00
	MOVLW	0x3e
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x100E
	MOVWF	r0x100E
	MOVF	STK00,W
	MOVWF	r0x100F
	MOVF	STK01,W
	MOVWF	r0x1010
	MOVF	STK02,W
	MOVWF	r0x100D
;[ICODE] sincosf.c:73: 	send iTemp11 [k21 lr36:38 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1054 r0x1055 r0x1056 r0x1057 ]{argreg = 1}
;[ICODE] sincosf.c:73: 	send 0.5 {const-float literal}{argreg = 1}
;[ICODE] sincosf.c:73: 	iTemp12 [k22 lr39:40 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1054 r0x1055 r0x1056 r0x1057 ] = call ___fsadd [k59 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x00
	MOVWF	STK04
	MOVLW	0x3f
	MOVWF	STK03
	MOVF	r0x100D,W
	MOVWF	STK02
	MOVF	r0x1010,W
	MOVWF	STK01
	MOVF	r0x100F,W
	MOVWF	STK00
	MOVF	r0x100E,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x100E
	MOVWF	r0x100E
	MOVF	STK00,W
	MOVWF	r0x100F
	MOVF	STK01,W
	MOVWF	r0x1010
	MOVF	STK02,W
	MOVWF	r0x100D
	MOVWF	STK02
	MOVF	r0x1010,W
	MOVWF	STK01
	MOVF	r0x100F,W
	MOVWF	STK00
	MOVF	r0x100E,W
	PAGESEL	___fs2sint
	CALL	___fs2sint
	PAGESEL	$
	BANKSEL	r0x1010
	MOVWF	r0x1010
	MOVF	STK00,W
	MOVWF	r0x100D
;[ICODE] sincosf.c:76: 	iTemp14 [k24 lr43:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed} = iTemp10 [k19 lr41:49 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ _sincosf_N_1_1}[r0x1054 r0x1055 ] & 0x1 {int literal}
;	.line	76; "sincosf.c"	if(N&1) sign=!sign;
	BTFSS	r0x100D,0
	GOTO	_00114_DS_
;[ICODE] sincosf.c:76: 	if iTemp14 [k24 lr43:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed} == 0 goto _iffalse_3($10)
;[ICODE] sincosf.c:76: 	iTemp5 [k12 lr12:124 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _sincosf_sign_1_1}[r0x1053 ] = not iTemp5 [k12 lr12:124 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _sincosf_sign_1_1}[r0x1053 ]
	MOVF	r0x100C,W
	MOVLW	0x00
	BTFSC	STATUS,2
	MOVLW	0x01
	MOVWF	r0x100C
;[ICODE] sincosf.c:76:  _iffalse_3($10) :
;[ICODE] sincosf.c:78: 	send iTemp10 [k19 lr41:49 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ _sincosf_N_1_1}[r0x1054 r0x1055 ]{argreg = 1}
;[ICODE] sincosf.c:78: 	iTemp17 [k27 lr50:80 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _sincosf_XN_1_1}[r0x1054 r0x1055 r0x1056 r0x1057 ] = call ___sint2fs [k64 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( int fixed)  fixed}
_00114_DS_
;	.line	78; "sincosf.c"	XN=N;
	BANKSEL	r0x100D
	MOVF	r0x100D,W
	MOVWF	STK00
	MOVF	r0x1010,W
	PAGESEL	___sint2fs
	CALL	___sint2fs
	PAGESEL	$
	BANKSEL	r0x100E
	MOVWF	r0x100E
	MOVF	STK00,W
	MOVWF	r0x100F
	MOVF	STK01,W
	MOVWF	r0x1010
	MOVF	STK02,W
	MOVWF	r0x100D
;[ICODE] sincosf.c:80: 	if iTemp1 [k4 lr4:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ _sincosf_iscos_1_1}[r0x104D r0x104E ] == 0 goto _iffalse_4($12)
;	.line	80; "sincosf.c"	if(iscos) XN-=0.5;
	MOVF	r0x1007,W
	IORWF	r0x1006,W
	BTFSC	STATUS,2
	GOTO	_00116_DS_
;[ICODE] sincosf.c:80: 	send iTemp17 [k27 lr50:80 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _sincosf_XN_1_1}[r0x1054 r0x1055 r0x1056 r0x1057 ]{argreg = 1}
;[ICODE] sincosf.c:80: 	send 0.5 {const-float literal}{argreg = 1}
;[ICODE] sincosf.c:80: 	iTemp17 [k27 lr50:80 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _sincosf_XN_1_1}[r0x1054 r0x1055 r0x1056 r0x1057 ] = call ___fssub [k65 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x00
	MOVWF	STK04
	MOVLW	0x3f
	MOVWF	STK03
	MOVF	r0x100D,W
	MOVWF	STK02
	MOVF	r0x1010,W
	MOVWF	STK01
	MOVF	r0x100F,W
	MOVWF	STK00
	MOVF	r0x100E,W
	PAGESEL	___fssub
	CALL	___fssub
	PAGESEL	$
	BANKSEL	r0x100E
	MOVWF	r0x100E
	MOVF	STK00,W
	MOVWF	r0x100F
	MOVF	STK01,W
	MOVWF	r0x1010
	MOVF	STK02,W
	MOVWF	r0x100D
;[ICODE] sincosf.c:80:  _iffalse_4($12) :
;[ICODE] sincosf.c:82: 	send iTemp0 [k2 lr3:58 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _sincosf_x_1_1}[r0x1049 r0x104A r0x104B r0x104C ]{argreg = 1}
;[ICODE] sincosf.c:82: 	iTemp2 [k6 lr10:67 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _sincosf_y_1_1}[r0x104F r0x1050 r0x1051 r0x1052 ] = call _fabsf [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed)  fixed}
_00116_DS_
;	.line	82; "sincosf.c"	y=fabsf(x);
	BANKSEL	r0x1005
	MOVF	r0x1005,W
	MOVWF	STK02
	MOVF	r0x1004,W
	MOVWF	STK01
	MOVF	r0x1003,W
	MOVWF	STK00
	MOVF	r0x1002,W
	PAGESEL	_fabsf
	CALL	_fabsf
	PAGESEL	$
	BANKSEL	r0x1008
	MOVWF	r0x1008
	MOVF	STK00,W
	MOVWF	r0x1009
	MOVF	STK01,W
	MOVWF	r0x100A
	MOVF	STK02,W
;	.line	83; "sincosf.c"	r=(int)y;
	MOVWF	r0x100B
	MOVWF	STK02
	MOVF	r0x100A,W
	MOVWF	STK01
	MOVF	r0x1009,W
	MOVWF	STK00
	MOVF	r0x1008,W
	PAGESEL	___fs2sint
	CALL	___fs2sint
	PAGESEL	$
	BANKSEL	r0x1004
	MOVWF	r0x1004
	MOVF	STK00,W
	MOVWF	r0x1005
	MOVWF	STK00
	MOVF	r0x1004,W
	PAGESEL	___sint2fs
	CALL	___sint2fs
	PAGESEL	$
	BANKSEL	r0x1002
	MOVWF	r0x1002
	MOVF	STK00,W
	MOVWF	r0x1003
	MOVF	STK01,W
	MOVWF	r0x1004
	MOVF	STK02,W
;	.line	84; "sincosf.c"	g=y-r;
	MOVWF	r0x1005
	MOVWF	STK06
	MOVF	r0x1004,W
	MOVWF	STK05
	MOVF	r0x1003,W
	MOVWF	STK04
	MOVF	r0x1002,W
	MOVWF	STK03
	MOVF	r0x100B,W
	MOVWF	STK02
	MOVF	r0x100A,W
	MOVWF	STK01
	MOVF	r0x1009,W
	MOVWF	STK00
	MOVF	r0x1008,W
	PAGESEL	___fssub
	CALL	___fssub
	PAGESEL	$
	BANKSEL	r0x100A
	MOVWF	r0x100A
	MOVF	STK00,W
	MOVWF	r0x100B
	MOVF	STK01,W
	MOVWF	r0x1006
	MOVF	STK02,W
	MOVWF	r0x1007
;[ICODE] sincosf.c:85: 	send 3.14062 {const-float literal}{argreg = 1}
;[ICODE] sincosf.c:85: 	send iTemp17 [k27 lr50:80 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _sincosf_XN_1_1}[r0x1054 r0x1055 r0x1056 r0x1057 ]{argreg = 1}
;[ICODE] sincosf.c:85: 	iTemp27 [k41 lr72:74 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1051 r0x1052 r0x1058 r0x1059 ] = call ___fsmul [k62 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
;	.line	85; "sincosf.c"	f=((r-XN*C1)+g)-XN*C2;
	MOVF	r0x100D,W
	MOVWF	STK06
	MOVF	r0x1010,W
	MOVWF	STK05
	MOVF	r0x100F,W
	MOVWF	STK04
	MOVF	r0x100E,W
	MOVWF	STK03
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x49
	MOVWF	STK00
	MOVLW	0x40
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x1011
	MOVWF	r0x1011
	MOVF	STK00,W
	MOVWF	r0x1012
	MOVF	STK01,W
	MOVWF	r0x1008
	MOVF	STK02,W
	MOVWF	r0x1009
	MOVWF	STK06
	MOVF	r0x1008,W
	MOVWF	STK05
	MOVF	r0x1012,W
	MOVWF	STK04
	MOVF	r0x1011,W
	MOVWF	STK03
	MOVF	r0x1005,W
	MOVWF	STK02
	MOVF	r0x1004,W
	MOVWF	STK01
	MOVF	r0x1003,W
	MOVWF	STK00
	MOVF	r0x1002,W
	PAGESEL	___fssub
	CALL	___fssub
	PAGESEL	$
	BANKSEL	r0x1011
	MOVWF	r0x1011
	MOVF	STK00,W
	MOVWF	r0x1012
	MOVF	STK01,W
	MOVWF	r0x1008
	MOVF	STK02,W
	MOVWF	r0x1009
;[ICODE] sincosf.c:85: 	send iTemp28 [k42 lr75:77 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1051 r0x1052 r0x1058 r0x1059 ]{argreg = 1}
;[ICODE] sincosf.c:85: 	send iTemp24 [k36 lr68:113 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _sincosf_g_1_1}[r0x104D r0x104E r0x104F r0x1050 ]{argreg = 1}
;[ICODE] sincosf.c:85: 	iTemp29 [k43 lr78:83 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1051 r0x1052 r0x1058 r0x1059 ] = call ___fsadd [k59 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVF	r0x1007,W
	MOVWF	STK06
	MOVF	r0x1006,W
	MOVWF	STK05
	MOVF	r0x100B,W
	MOVWF	STK04
	MOVF	r0x100A,W
	MOVWF	STK03
	MOVF	r0x1009,W
	MOVWF	STK02
	MOVF	r0x1008,W
	MOVWF	STK01
	MOVF	r0x1012,W
	MOVWF	STK00
	MOVF	r0x1011,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x1011
	MOVWF	r0x1011
	MOVF	STK00,W
	MOVWF	r0x1012
	MOVF	STK01,W
	MOVWF	r0x1008
	MOVF	STK02,W
	MOVWF	r0x1009
;[ICODE] sincosf.c:85: 	send 0.000967654 {const-float literal}{argreg = 1}
;[ICODE] sincosf.c:85: 	send iTemp17 [k27 lr50:80 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _sincosf_XN_1_1}[r0x1054 r0x1055 r0x1056 r0x1057 ]{argreg = 1}
;[ICODE] sincosf.c:85: 	iTemp30 [k44 lr81:83 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1054 r0x1055 r0x1056 r0x1057 ] = call ___fsmul [k62 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVF	r0x100D,W
	MOVWF	STK06
	MOVF	r0x1010,W
	MOVWF	STK05
	MOVF	r0x100F,W
	MOVWF	STK04
	MOVF	r0x100E,W
	MOVWF	STK03
	MOVLW	0x22
	MOVWF	STK02
	MOVLW	0xaa
	MOVWF	STK01
	MOVLW	0x7d
	MOVWF	STK00
	MOVLW	0x3a
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x100E
	MOVWF	r0x100E
	MOVF	STK00,W
	MOVWF	r0x100F
	MOVF	STK01,W
	MOVWF	r0x1010
	MOVF	STK02,W
	MOVWF	r0x100D
	MOVWF	STK06
	MOVF	r0x1010,W
	MOVWF	STK05
	MOVF	r0x100F,W
	MOVWF	STK04
	MOVF	r0x100E,W
	MOVWF	STK03
	MOVF	r0x1009,W
	MOVWF	STK02
	MOVF	r0x1008,W
	MOVWF	STK01
	MOVF	r0x1012,W
	MOVWF	STK00
	MOVF	r0x1011,W
	PAGESEL	___fssub
	CALL	___fssub
	PAGESEL	$
	BANKSEL	r0x1010
	MOVWF	r0x1010
	MOVF	STK00,W
	MOVWF	r0x100D
	MOVF	STK01,W
	MOVWF	r0x1008
	MOVF	STK02,W
;	.line	87; "sincosf.c"	g=f*f;
	MOVWF	r0x1009
	MOVWF	STK06
	MOVF	r0x1008,W
	MOVWF	STK05
	MOVF	r0x100D,W
	MOVWF	STK04
	MOVF	r0x1010,W
	MOVWF	STK03
	MOVF	r0x1009,W
	MOVWF	STK02
	MOVF	r0x1008,W
	MOVWF	STK01
	MOVF	r0x100D,W
	MOVWF	STK00
	MOVF	r0x1010,W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x100A
	MOVWF	r0x100A
	MOVF	STK00,W
	MOVWF	r0x100B
	MOVF	STK01,W
	MOVWF	r0x1006
	MOVF	STK02,W
	MOVWF	r0x1007
;[ICODE] sincosf.c:88: 	send iTemp24 [k36 lr68:113 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _sincosf_g_1_1}[r0x104D r0x104E r0x104F r0x1050 ]{argreg = 1}
;[ICODE] sincosf.c:88: 	send 5.96046e-08 {const-float literal}{argreg = 1}
;[ICODE] sincosf.c:88: 	iTemp33 [k47 lr92:93 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1056 ] = call ___fsgt [k61 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float fixed, float fixed)  fixed}
;	.line	88; "sincosf.c"	if(g>EPS2) //Used to be if(fabsf(f)>EPS)
	MOVLW	0xf3
	MOVWF	STK06
	MOVLW	0xff
	MOVWF	STK05
	MOVLW	0x7f
	MOVWF	STK04
	MOVLW	0x33
	MOVWF	STK03
	MOVF	r0x1007,W
	MOVWF	STK02
	MOVF	r0x1006,W
	MOVWF	STK01
	MOVF	r0x100B,W
	MOVWF	STK00
	MOVF	r0x100A,W
	PAGESEL	___fsgt
	CALL	___fsgt
	PAGESEL	$
	BANKSEL	r0x100F
	MOVWF	r0x100F
;[ICODE] sincosf.c:88: 	if iTemp33 [k47 lr92:93 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1056 ] == 0 goto _iffalse_5($14)
	MOVF	r0x100F,W
	BTFSC	STATUS,2
	GOTO	_00118_DS_
;[ICODE] sincosf.c:90: 	send 2.6019e-06 {const-float literal}{argreg = 1}
;[ICODE] sincosf.c:90: 	send iTemp24 [k36 lr68:113 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _sincosf_g_1_1}[r0x104D r0x104E r0x104F r0x1050 ]{argreg = 1}
;[ICODE] sincosf.c:90: 	iTemp34 [k48 lr96:98 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1056 r0x1057 r0x1058 r0x1059 ] = call ___fsmul [k62 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
;	.line	90; "sincosf.c"	r=(((r4*g+r3)*g+r2)*g+r1)*g;
	MOVF	r0x1007,W
	MOVWF	STK06
	MOVF	r0x1006,W
	MOVWF	STK05
	MOVF	r0x100B,W
	MOVWF	STK04
	MOVF	r0x100A,W
	MOVWF	STK03
	MOVLW	0x5b
	MOVWF	STK02
	MOVLW	0x9c
	MOVWF	STK01
	MOVLW	0x2e
	MOVWF	STK00
	MOVLW	0x36
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x1011
	MOVWF	r0x1011
	MOVF	STK00,W
	MOVWF	r0x1012
	MOVF	STK01,W
	MOVWF	r0x100E
	MOVF	STK02,W
	MOVWF	r0x100F
;[ICODE] sincosf.c:90: 	send iTemp34 [k48 lr96:98 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1056 r0x1057 r0x1058 r0x1059 ]{argreg = 1}
;[ICODE] sincosf.c:90: 	send -0.000198074 {const-float literal}{argreg = 1}
;[ICODE] sincosf.c:90: 	iTemp35 [k49 lr99:101 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1056 r0x1057 r0x1058 r0x1059 ] = call ___fsadd [k59 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVLW	0x22
	MOVWF	STK06
	MOVLW	0xb2
	MOVWF	STK05
	MOVLW	0x4f
	MOVWF	STK04
	MOVLW	0xb9
	MOVWF	STK03
	MOVF	r0x100F,W
	MOVWF	STK02
	MOVF	r0x100E,W
	MOVWF	STK01
	MOVF	r0x1012,W
	MOVWF	STK00
	MOVF	r0x1011,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x1011
	MOVWF	r0x1011
	MOVF	STK00,W
	MOVWF	r0x1012
	MOVF	STK01,W
	MOVWF	r0x100E
	MOVF	STK02,W
	MOVWF	r0x100F
;[ICODE] sincosf.c:90: 	send iTemp35 [k49 lr99:101 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1056 r0x1057 r0x1058 r0x1059 ]{argreg = 1}
;[ICODE] sincosf.c:90: 	send iTemp24 [k36 lr68:113 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _sincosf_g_1_1}[r0x104D r0x104E r0x104F r0x1050 ]{argreg = 1}
;[ICODE] sincosf.c:90: 	iTemp36 [k50 lr102:104 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1056 r0x1057 r0x1058 r0x1059 ] = call ___fsmul [k62 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVF	r0x1007,W
	MOVWF	STK06
	MOVF	r0x1006,W
	MOVWF	STK05
	MOVF	r0x100B,W
	MOVWF	STK04
	MOVF	r0x100A,W
	MOVWF	STK03
	MOVF	r0x100F,W
	MOVWF	STK02
	MOVF	r0x100E,W
	MOVWF	STK01
	MOVF	r0x1012,W
	MOVWF	STK00
	MOVF	r0x1011,W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x1011
	MOVWF	r0x1011
	MOVF	STK00,W
	MOVWF	r0x1012
	MOVF	STK01,W
	MOVWF	r0x100E
	MOVF	STK02,W
	MOVWF	r0x100F
;[ICODE] sincosf.c:90: 	send iTemp36 [k50 lr102:104 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1056 r0x1057 r0x1058 r0x1059 ]{argreg = 1}
;[ICODE] sincosf.c:90: 	send 0.00833303 {const-float literal}{argreg = 1}
;[ICODE] sincosf.c:90: 	iTemp37 [k51 lr105:107 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1056 r0x1057 r0x1058 r0x1059 ] = call ___fsadd [k59 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVLW	0x3e
	MOVWF	STK06
	MOVLW	0x87
	MOVWF	STK05
	MOVLW	0x08
	MOVWF	STK04
	MOVLW	0x3c
	MOVWF	STK03
	MOVF	r0x100F,W
	MOVWF	STK02
	MOVF	r0x100E,W
	MOVWF	STK01
	MOVF	r0x1012,W
	MOVWF	STK00
	MOVF	r0x1011,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x1011
	MOVWF	r0x1011
	MOVF	STK00,W
	MOVWF	r0x1012
	MOVF	STK01,W
	MOVWF	r0x100E
	MOVF	STK02,W
	MOVWF	r0x100F
;[ICODE] sincosf.c:90: 	send iTemp37 [k51 lr105:107 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1056 r0x1057 r0x1058 r0x1059 ]{argreg = 1}
;[ICODE] sincosf.c:90: 	send iTemp24 [k36 lr68:113 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _sincosf_g_1_1}[r0x104D r0x104E r0x104F r0x1050 ]{argreg = 1}
;[ICODE] sincosf.c:90: 	iTemp38 [k52 lr108:110 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1056 r0x1057 r0x1058 r0x1059 ] = call ___fsmul [k62 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVF	r0x1007,W
	MOVWF	STK06
	MOVF	r0x1006,W
	MOVWF	STK05
	MOVF	r0x100B,W
	MOVWF	STK04
	MOVF	r0x100A,W
	MOVWF	STK03
	MOVF	r0x100F,W
	MOVWF	STK02
	MOVF	r0x100E,W
	MOVWF	STK01
	MOVF	r0x1012,W
	MOVWF	STK00
	MOVF	r0x1011,W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x1011
	MOVWF	r0x1011
	MOVF	STK00,W
	MOVWF	r0x1012
	MOVF	STK01,W
	MOVWF	r0x100E
	MOVF	STK02,W
	MOVWF	r0x100F
;[ICODE] sincosf.c:90: 	send iTemp38 [k52 lr108:110 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1056 r0x1057 r0x1058 r0x1059 ]{argreg = 1}
;[ICODE] sincosf.c:90: 	send -0.166667 {const-float literal}{argreg = 1}
;[ICODE] sincosf.c:90: 	iTemp39 [k53 lr111:113 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1056 r0x1057 r0x1058 r0x1059 ] = call ___fsadd [k59 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVLW	0xa4
	MOVWF	STK06
	MOVLW	0xaa
	MOVWF	STK05
	MOVLW	0x2a
	MOVWF	STK04
	MOVLW	0xbe
	MOVWF	STK03
	MOVF	r0x100F,W
	MOVWF	STK02
	MOVF	r0x100E,W
	MOVWF	STK01
	MOVF	r0x1012,W
	MOVWF	STK00
	MOVF	r0x1011,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x1011
	MOVWF	r0x1011
	MOVF	STK00,W
	MOVWF	r0x1012
	MOVF	STK01,W
	MOVWF	r0x100E
	MOVF	STK02,W
	MOVWF	r0x100F
;[ICODE] sincosf.c:90: 	send iTemp39 [k53 lr111:113 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1056 r0x1057 r0x1058 r0x1059 ]{argreg = 1}
;[ICODE] sincosf.c:90: 	send iTemp24 [k36 lr68:113 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _sincosf_g_1_1}[r0x104D r0x104E r0x104F r0x1050 ]{argreg = 1}
;[ICODE] sincosf.c:90: 	iTemp21 [k32 lr64:117 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _sincosf_r_1_1}[r0x1049 r0x104A r0x104B r0x104C ] = call ___fsmul [k62 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVF	r0x1007,W
	MOVWF	STK06
	MOVF	r0x1006,W
	MOVWF	STK05
	MOVF	r0x100B,W
	MOVWF	STK04
	MOVF	r0x100A,W
	MOVWF	STK03
	MOVF	r0x100F,W
	MOVWF	STK02
	MOVF	r0x100E,W
	MOVWF	STK01
	MOVF	r0x1012,W
	MOVWF	STK00
	MOVF	r0x1011,W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x1002
	MOVWF	r0x1002
	MOVF	STK00,W
	MOVWF	r0x1003
	MOVF	STK01,W
	MOVWF	r0x1004
	MOVF	STK02,W
;	.line	91; "sincosf.c"	f+=f*r;
	MOVWF	r0x1005
	MOVWF	STK06
	MOVF	r0x1004,W
	MOVWF	STK05
	MOVF	r0x1003,W
	MOVWF	STK04
	MOVF	r0x1002,W
	MOVWF	STK03
	MOVF	r0x1009,W
	MOVWF	STK02
	MOVF	r0x1008,W
	MOVWF	STK01
	MOVF	r0x100D,W
	MOVWF	STK00
	MOVF	r0x1010,W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x1002
	MOVWF	r0x1002
	MOVF	STK00,W
	MOVWF	r0x1003
	MOVF	STK01,W
	MOVWF	r0x1004
	MOVF	STK02,W
	MOVWF	r0x1005
	MOVWF	STK06
	MOVF	r0x1004,W
	MOVWF	STK05
	MOVF	r0x1003,W
	MOVWF	STK04
	MOVF	r0x1002,W
	MOVWF	STK03
	MOVF	r0x1009,W
	MOVWF	STK02
	MOVF	r0x1008,W
	MOVWF	STK01
	MOVF	r0x100D,W
	MOVWF	STK00
	MOVF	r0x1010,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x1010
	MOVWF	r0x1010
	MOVF	STK00,W
	MOVWF	r0x100D
	MOVF	STK01,W
	MOVWF	r0x1008
	MOVF	STK02,W
	MOVWF	r0x1009
;[ICODE] sincosf.c:91:  _iffalse_5($14) :
;[ICODE] sincosf.c:93: 	if iTemp5 [k12 lr12:124 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _sincosf_sign_1_1}[r0x1053 ] == 0 goto iTempLbl0($17)
_00118_DS_
;	.line	93; "sincosf.c"	return (sign?-f:f);
	MOVLW	0x00
	BANKSEL	r0x100C
	IORWF	r0x100C,W
	BTFSC	STATUS,2
	GOTO	_00121_DS_
;[ICODE] sincosf.c:93: 	iTemp43 [k57 lr125:131 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1049 r0x104A r0x104B r0x104C ] = - iTemp26 [k39 lr84:129 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _sincosf_f_1_1}[r0x1051 r0x1052 r0x1054 r0x1055 ]
	MOVF	r0x1010,W
	XORLW	0x80
	MOVWF	r0x1002
	MOVF	r0x100D,W
	MOVWF	r0x1003
	MOVF	r0x1008,W
	MOVWF	r0x1004
	MOVF	r0x1009,W
	MOVWF	r0x1005
;[ICODE] sincosf.c:93: 	 goto iTempLbl1($18)
	GOTO	_00122_DS_
;[ICODE] sincosf.c:93:  iTempLbl0($17) :
;[ICODE] sincosf.c:93: 	iTemp43 [k57 lr125:131 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1049 r0x104A r0x104B r0x104C ] := iTemp26 [k39 lr84:129 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _sincosf_f_1_1}[r0x1051 r0x1052 r0x1054 r0x1055 ]
_00121_DS_
	BANKSEL	r0x1009
	MOVF	r0x1009,W
	MOVWF	r0x1005
	MOVF	r0x1008,W
	MOVWF	r0x1004
	MOVF	r0x100D,W
	MOVWF	r0x1003
	MOVF	r0x1010,W
	MOVWF	r0x1002
;[ICODE] sincosf.c:93:  iTempLbl1($18) :
;[ICODE] sincosf.c:93: 	ret iTemp43 [k57 lr125:131 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1049 r0x104A r0x104B r0x104C ]
_00122_DS_
	BANKSEL	r0x1005
	MOVF	r0x1005,W
	MOVWF	STK02
	MOVF	r0x1004,W
	MOVWF	STK01
	MOVF	r0x1003,W
	MOVWF	STK00
	MOVF	r0x1002,W
;[ICODE] sincosf.c:93:  _return($15) :
;[ICODE] sincosf.c:93: 	eproc _sincosf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, int fixed)  fixed}
_00119_DS_
	RETURN	
; exit point of _sincosf


;	code size estimation:
;	  674+   98 =   772 instructions ( 1740 byte)

	end
