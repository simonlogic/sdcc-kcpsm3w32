;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6064 (Nov 22 2010) (Linux)
; This file was generated Mon Nov 22 22:55:46 2010
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"expf.c"
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
	extern	___fslt
	extern	___fsgt
	extern	___fsmul
	extern	___fs2sint
	extern	___sint2fs
	extern	___fssub
	extern	___fsadd
	extern	___fsdiv
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
	global	_expf

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_expf_0	udata
r0x1005	res	1
r0x1004	res	1
r0x1003	res	1
r0x1002	res	1
r0x1006	res	1
r0x1007	res	1
r0x1008	res	1
r0x1009	res	1
r0x100A	res	1
r0x100C	res	1
r0x100B	res	1
r0x1010	res	1
r0x100F	res	1
r0x100E	res	1
r0x100D	res	1
r0x1013	res	1
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
code_expf	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _expf	;Function start
; 2 exit points
;has an exit
;functions called:
;   ___fslt
;   ___fslt
;   ___fsgt
;   ___fsmul
;   ___fs2sint
;   ___sint2fs
;   ___fssub
;   ___fslt
;   ___sint2fs
;   ___fsmul
;   ___fssub
;   ___fsmul
;   ___fssub
;   ___fsmul
;   ___fsmul
;   ___fsadd
;   ___fsmul
;   ___fsmul
;   ___fsadd
;   ___fssub
;   ___fsdiv
;   ___fsadd
;   _ldexpf
;   ___fsdiv
;   ___fslt
;   ___fslt
;   ___fsgt
;   ___fsmul
;   ___fs2sint
;   ___sint2fs
;   ___fssub
;   ___fslt
;   ___sint2fs
;   ___fsmul
;   ___fssub
;   ___fsmul
;   ___fssub
;   ___fsmul
;   ___fsmul
;   ___fsadd
;   ___fsmul
;   ___fsmul
;   ___fsadd
;   ___fssub
;   ___fsdiv
;   ___fsadd
;   _ldexpf
;   ___fsdiv
;26 compiler assigned registers:
;   r0x1002
;   STK00
;   r0x1003
;   STK01
;   r0x1004
;   STK02
;   r0x1005
;   STK06
;   STK05
;   STK04
;   STK03
;   r0x1006
;   r0x1007
;   r0x1008
;   r0x1009
;   r0x100A
;   r0x100B
;   r0x100C
;   r0x100D
;   r0x100E
;   r0x100F
;   r0x1010
;   r0x1011
;   r0x1012
;   r0x1013
;   r0x1014
;; Starting pCode block
;[ICODE] expf.c:50:  _entry($19) :
;[ICODE] expf.c:50: 	proc _expf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed)  fixed}
_expf	;Function start
; 2 exit points
;[ICODE] expf.c:50: iTemp0 [k2 lr3:12 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _expf_x_1_1}[r0x1049 r0x104A r0x104B r0x104C ] = recv _expf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed)  fixed}
;	.line	50; "expf.c"	float expf(const float x)
	BANKSEL	r0x1002
	MOVWF	r0x1002
	MOVF	STK00,W
	MOVWF	r0x1003
	MOVF	STK01,W
	MOVWF	r0x1004
	MOVF	STK02,W
	MOVWF	r0x1005
;[ICODE] expf.c:56: 	send iTemp0 [k2 lr3:12 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _expf_x_1_1}[r0x1049 r0x104A r0x104B r0x104C ]{argreg = 1}
;[ICODE] expf.c:56: 	send 0 {const-float literal}{argreg = 1}
;[ICODE] expf.c:56: 	iTemp1 [k4 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x104D ] = call ___fslt [k53 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float fixed, float fixed)  fixed}
;	.line	56; "expf.c"	if(x>=0.0)
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x00
	MOVWF	STK04
	MOVLW	0x00
	MOVWF	STK03
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
	BANKSEL	r0x1006
	MOVWF	r0x1006
;[ICODE] expf.c:56: 	if iTemp1 [k4 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x104D ] != 0 goto _iffalse_0($2)
	MOVF	r0x1006,W
	BTFSS	STATUS,2
	GOTO	_00106_DS_
;[ICODE] expf.c:57: 	iTemp2 [k5 lr8:63 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _expf_y_1_1}[r0x104D r0x104E r0x104F r0x1050 ] := iTemp0 [k2 lr3:12 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _expf_x_1_1}[r0x1049 r0x104A r0x104B r0x104C ]
;	.line	57; "expf.c"	{ y=x;  sign=0; }
	MOVF	r0x1005,W
	MOVWF	r0x1006
	MOVF	r0x1004,W
	MOVWF	r0x1007
	MOVF	r0x1003,W
	MOVWF	r0x1008
	MOVF	r0x1002,W
	MOVWF	r0x1009
;[ICODE] expf.c:57: 	iTemp3 [k7 lr9:108 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _expf_sign_1_1}[r0x1051 ] := 0x0 {char literal}
	CLRF	r0x100A
;[ICODE] expf.c:57: 	 goto _ifend_0($3)
	GOTO	_00107_DS_
;[ICODE] expf.c:57:  _iffalse_0($2) :
;[ICODE] expf.c:59: 	iTemp2 [k5 lr8:63 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _expf_y_1_1}[r0x104D r0x104E r0x104F r0x1050 ] = - iTemp0 [k2 lr3:12 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _expf_x_1_1}[r0x1049 r0x104A r0x104B r0x104C ]
_00106_DS_
;	.line	59; "expf.c"	{ y=-x; sign=1; }
	BANKSEL	r0x1002
	MOVF	r0x1002,W
	XORLW	0x80
	MOVWF	r0x1009
	MOVF	r0x1003,W
	MOVWF	r0x1008
	MOVF	r0x1004,W
	MOVWF	r0x1007
	MOVF	r0x1005,W
	MOVWF	r0x1006
;[ICODE] expf.c:59: 	iTemp3 [k7 lr9:108 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _expf_sign_1_1}[r0x1051 ] := 0x1 {char literal}
	MOVLW	0x01
	MOVWF	r0x100A
;[ICODE] expf.c:59:  _ifend_0($3) :
;[ICODE] expf.c:61: 	send iTemp2 [k5 lr8:63 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _expf_y_1_1}[r0x104D r0x104E r0x104F r0x1050 ]{argreg = 1}
;[ICODE] expf.c:61: 	send 1e-07 {const-float literal}{argreg = 1}
;[ICODE] expf.c:61: 	iTemp5 [k10 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1049 ] = call ___fslt [k53 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float fixed, float fixed)  fixed}
_00107_DS_
;	.line	61; "expf.c"	if(y<EXPEPS) return 1.0;
	MOVLW	0x95
	MOVWF	STK06
	MOVLW	0xbf
	MOVWF	STK05
	MOVLW	0xd6
	MOVWF	STK04
	MOVLW	0x33
	MOVWF	STK03
	BANKSEL	r0x1006
	MOVF	r0x1006,W
	MOVWF	STK02
	MOVF	r0x1007,W
	MOVWF	STK01
	MOVF	r0x1008,W
	MOVWF	STK00
	MOVF	r0x1009,W
	PAGESEL	___fslt
	CALL	___fslt
	PAGESEL	$
	BANKSEL	r0x1005
	MOVWF	r0x1005
;[ICODE] expf.c:61: 	if iTemp5 [k10 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1049 ] == 0 goto _iffalse_1($5)
	MOVF	r0x1005,W
	BTFSC	STATUS,2
	GOTO	_00109_DS_
;[ICODE] expf.c:61: 	ret 1 {const-float literal}
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x80
	MOVWF	STK00
	MOVLW	0x3f
	GOTO	_00122_DS_
;[ICODE] expf.c:61:  _iffalse_1($5) :
;[ICODE] expf.c:63: 	send iTemp2 [k5 lr8:63 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _expf_y_1_1}[r0x104D r0x104E r0x104F r0x1050 ]{argreg = 1}
;[ICODE] expf.c:63: 	send 88.7228 {const-float literal}{argreg = 1}
;[ICODE] expf.c:63: 	iTemp6 [k11 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1049 ] = call ___fsgt [k54 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float fixed, float fixed)  fixed}
_00109_DS_
;	.line	63; "expf.c"	if(y>BIGX)
	MOVLW	0x18
	MOVWF	STK06
	MOVLW	0x72
	MOVWF	STK05
	MOVLW	0xb1
	MOVWF	STK04
	MOVLW	0x42
	MOVWF	STK03
	BANKSEL	r0x1006
	MOVF	r0x1006,W
	MOVWF	STK02
	MOVF	r0x1007,W
	MOVWF	STK01
	MOVF	r0x1008,W
	MOVWF	STK00
	MOVF	r0x1009,W
	PAGESEL	___fsgt
	CALL	___fsgt
	PAGESEL	$
	BANKSEL	r0x1005
	MOVWF	r0x1005
;[ICODE] expf.c:63: 	if iTemp6 [k11 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1049 ] == 0 goto _iffalse_3($10)
	MOVF	r0x1005,W
	BTFSC	STATUS,2
	GOTO	_00114_DS_
;[ICODE] expf.c:65: 	if iTemp3 [k7 lr9:108 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _expf_sign_1_1}[r0x1051 ] == 0 goto _iffalse_2($7)
;	.line	65; "expf.c"	if(sign)
	MOVF	r0x100A,W
	BTFSC	STATUS,2
	GOTO	_00111_DS_
;[ICODE] expf.c:67: 	_errno [k12 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed} := 0x22 {int literal}
;	.line	67; "expf.c"	errno=ERANGE;
	MOVLW	0x22
	BANKSEL	_errno
	MOVWF	_errno
	CLRF	(_errno + 1)
;[ICODE] expf.c:68: 	ret 3.40282e+38 {const-float literal}
;	.line	68; "expf.c"	return XMAX;
	MOVLW	0xff
	MOVWF	STK02
	MOVLW	0xff
	MOVWF	STK01
	MOVLW	0x7f
	MOVWF	STK00
	MOVLW	0x7f
	GOTO	_00122_DS_
;[ICODE] expf.c:68:  _iffalse_2($7) :
;[ICODE] expf.c:72: 	ret 0 {const-float literal}
_00111_DS_
;	.line	72; "expf.c"	return 0.0;
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x00
	GOTO	_00122_DS_
;[ICODE] expf.c:72:  _iffalse_3($10) :
;[ICODE] expf.c:76: 	send 1.4427 {const-float literal}{argreg = 1}
;[ICODE] expf.c:76: 	send iTemp2 [k5 lr8:63 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _expf_y_1_1}[r0x104D r0x104E r0x104F r0x1050 ]{argreg = 1}
;[ICODE] expf.c:76: 	iTemp8 [k14 lr34:114 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _expf_z_1_1}[r0x1049 r0x104A r0x104B r0x104C ] = call ___fsmul [k55 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
_00114_DS_
;	.line	76; "expf.c"	z=y*K1;
	BANKSEL	r0x1006
	MOVF	r0x1006,W
	MOVWF	STK06
	MOVF	r0x1007,W
	MOVWF	STK05
	MOVF	r0x1008,W
	MOVWF	STK04
	MOVF	r0x1009,W
	MOVWF	STK03
	MOVLW	0x3b
	MOVWF	STK02
	MOVLW	0xaa
	MOVWF	STK01
	MOVLW	0xb8
	MOVWF	STK00
	MOVLW	0x3f
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
;	.line	77; "expf.c"	n=z;
	MOVWF	r0x1005
	MOVWF	STK02
	MOVF	r0x1004,W
	MOVWF	STK01
	MOVF	r0x1003,W
	MOVWF	STK00
	MOVF	r0x1002,W
	PAGESEL	___fs2sint
	CALL	___fs2sint
	PAGESEL	$
	BANKSEL	r0x100B
	MOVWF	r0x100B
	MOVF	STK00,W
	MOVWF	r0x100C
;[ICODE] expf.c:79: 	iTemp12 [k20 lr39:40 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp10 [k17 lr37:105 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ _expf_n_1_1}[r0x1052 r0x1053 ] < 0x0 {int literal}
;signed compare: left < lit(0x0=0), size=2, mask=ffff
;	.line	79; "expf.c"	if(n<0) --n;
	BSF	STATUS,0
	BTFSS	r0x100B,7
	BCF	STATUS,0
	BTFSS	STATUS,0
	GOTO	_00116_DS_
;genSkipc:3057: created from rifx:0xbffd7ed4
;[ICODE] expf.c:79: 	if iTemp12 [k20 lr39:40 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_4($12)
;[ICODE] expf.c:79: 	iTemp10 [k17 lr37:105 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ _expf_n_1_1}[r0x1052 r0x1053 ] = iTemp10 [k17 lr37:105 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ _expf_n_1_1}[r0x1052 r0x1053 ] - 0x1 {const-unsigned-char literal}
	MOVLW	0xff
	ADDWF	r0x100C,F
	BTFSS	STATUS,0
	DECF	r0x100B,F
;[ICODE] expf.c:79:  _iffalse_4($12) :
;[ICODE] expf.c:80: 	send iTemp10 [k17 lr37:105 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ _expf_n_1_1}[r0x1052 r0x1053 ]{argreg = 1}
;[ICODE] expf.c:80: 	iTemp14 [k22 lr45:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1054 r0x1055 r0x1056 r0x1057 ] = call ___sint2fs [k57 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( int fixed)  fixed}
_00116_DS_
;	.line	80; "expf.c"	if(z-n>=0.5) ++n;
	BANKSEL	r0x100C
	MOVF	r0x100C,W
	MOVWF	STK00
	MOVF	r0x100B,W
	PAGESEL	___sint2fs
	CALL	___sint2fs
	PAGESEL	$
	BANKSEL	r0x100D
	MOVWF	r0x100D
	MOVF	STK00,W
	MOVWF	r0x100E
	MOVF	STK01,W
	MOVWF	r0x100F
	MOVF	STK02,W
	MOVWF	r0x1010
	MOVWF	STK06
	MOVF	r0x100F,W
	MOVWF	STK05
	MOVF	r0x100E,W
	MOVWF	STK04
	MOVF	r0x100D,W
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
	BANKSEL	r0x100D
	MOVWF	r0x100D
	MOVF	STK00,W
	MOVWF	r0x100E
	MOVF	STK01,W
	MOVWF	r0x100F
	MOVF	STK02,W
	MOVWF	r0x1010
;[ICODE] expf.c:80: 	send iTemp15 [k23 lr48:50 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1054 r0x1055 r0x1056 r0x1057 ]{argreg = 1}
;[ICODE] expf.c:80: 	send 0.5 {const-float literal}{argreg = 1}
;[ICODE] expf.c:80: 	iTemp16 [k24 lr51:52 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1054 ] = call ___fslt [k53 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float fixed, float fixed)  fixed}
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x00
	MOVWF	STK04
	MOVLW	0x3f
	MOVWF	STK03
	MOVF	r0x1010,W
	MOVWF	STK02
	MOVF	r0x100F,W
	MOVWF	STK01
	MOVF	r0x100E,W
	MOVWF	STK00
	MOVF	r0x100D,W
	PAGESEL	___fslt
	CALL	___fslt
	PAGESEL	$
	BANKSEL	r0x1010
	MOVWF	r0x1010
;[ICODE] expf.c:80: 	if iTemp16 [k24 lr51:52 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1054 ] != 0 goto _iffalse_5($14)
	MOVF	r0x1010,W
	BTFSS	STATUS,2
	GOTO	_00118_DS_
;[ICODE] expf.c:80: 	iTemp10 [k17 lr37:105 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ _expf_n_1_1}[r0x1052 r0x1053 ] = iTemp10 [k17 lr37:105 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ _expf_n_1_1}[r0x1052 r0x1053 ] + 0x1 {const-unsigned-char literal}
	INCF	r0x100C,F
	BTFSC	STATUS,2
	INCF	r0x100B,F
;[ICODE] expf.c:80:  _iffalse_5($14) :
;[ICODE] expf.c:81: 	send iTemp10 [k17 lr37:105 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ _expf_n_1_1}[r0x1052 r0x1053 ]{argreg = 1}
;[ICODE] expf.c:81: 	iTemp18 [k26 lr57:66 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _expf_xn_1_1}[r0x1054 r0x1055 r0x1056 r0x1057 ] = call ___sint2fs [k57 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( int fixed)  fixed}
_00118_DS_
;	.line	81; "expf.c"	xn=n;
	BANKSEL	r0x100C
	MOVF	r0x100C,W
	MOVWF	STK00
	MOVF	r0x100B,W
	PAGESEL	___sint2fs
	CALL	___sint2fs
	PAGESEL	$
	BANKSEL	r0x100D
	MOVWF	r0x100D
	MOVF	STK00,W
	MOVWF	r0x100E
	MOVF	STK01,W
	MOVWF	r0x100F
	MOVF	STK02,W
;	.line	82; "expf.c"	g=((y-xn*C1))-xn*C2;
	MOVWF	r0x1010
	MOVWF	STK06
	MOVF	r0x100F,W
	MOVWF	STK05
	MOVF	r0x100E,W
	MOVWF	STK04
	MOVF	r0x100D,W
	MOVWF	STK03
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x80
	MOVWF	STK01
	MOVLW	0x31
	MOVWF	STK00
	MOVLW	0x3f
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x1011
	MOVWF	r0x1011
	MOVF	STK00,W
	MOVWF	r0x1012
	MOVF	STK01,W
	MOVWF	r0x1013
	MOVF	STK02,W
;;1	MOVWF	r0x1014
	MOVWF	STK06
	MOVF	r0x1013,W
	MOVWF	STK05
	MOVF	r0x1012,W
	MOVWF	STK04
	MOVF	r0x1011,W
	MOVWF	STK03
	MOVF	r0x1006,W
	MOVWF	STK02
	MOVF	r0x1007,W
	MOVWF	STK01
	MOVF	r0x1008,W
	MOVWF	STK00
	MOVF	r0x1009,W
	PAGESEL	___fssub
	CALL	___fssub
	PAGESEL	$
	BANKSEL	r0x1009
	MOVWF	r0x1009
	MOVF	STK00,W
	MOVWF	r0x1008
	MOVF	STK01,W
	MOVWF	r0x1007
	MOVF	STK02,W
	MOVWF	r0x1006
;[ICODE] expf.c:82: 	send -0.000212194 {const-float literal}{argreg = 1}
;[ICODE] expf.c:82: 	send iTemp18 [k26 lr57:66 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _expf_xn_1_1}[r0x1054 r0x1055 r0x1056 r0x1057 ]{argreg = 1}
;[ICODE] expf.c:82: 	iTemp23 [k33 lr67:69 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1054 r0x1055 r0x1056 r0x1057 ] = call ___fsmul [k55 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVF	r0x1010,W
	MOVWF	STK06
	MOVF	r0x100F,W
	MOVWF	STK05
	MOVF	r0x100E,W
	MOVWF	STK04
	MOVF	r0x100D,W
	MOVWF	STK03
	MOVLW	0x83
	MOVWF	STK02
	MOVLW	0x80
	MOVWF	STK01
	MOVLW	0x5e
	MOVWF	STK00
	MOVLW	0xb9
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x100D
	MOVWF	r0x100D
	MOVF	STK00,W
	MOVWF	r0x100E
	MOVF	STK01,W
	MOVWF	r0x100F
	MOVF	STK02,W
	MOVWF	r0x1010
	MOVWF	STK06
	MOVF	r0x100F,W
	MOVWF	STK05
	MOVF	r0x100E,W
	MOVWF	STK04
	MOVF	r0x100D,W
	MOVWF	STK03
	MOVF	r0x1006,W
	MOVWF	STK02
	MOVF	r0x1007,W
	MOVWF	STK01
	MOVF	r0x1008,W
	MOVWF	STK00
	MOVF	r0x1009,W
	PAGESEL	___fssub
	CALL	___fssub
	PAGESEL	$
	BANKSEL	r0x1009
	MOVWF	r0x1009
	MOVF	STK00,W
	MOVWF	r0x1008
	MOVF	STK01,W
	MOVWF	r0x1007
	MOVF	STK02,W
;	.line	83; "expf.c"	z=g*g;
	MOVWF	r0x1006
	MOVWF	STK06
	MOVF	r0x1007,W
	MOVWF	STK05
	MOVF	r0x1008,W
	MOVWF	STK04
	MOVF	r0x1009,W
	MOVWF	STK03
	MOVF	r0x1006,W
	MOVWF	STK02
	MOVF	r0x1007,W
	MOVWF	STK01
	MOVF	r0x1008,W
	MOVWF	STK00
	MOVF	r0x1009,W
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
;	.line	84; "expf.c"	r=P(z)*g;
	MOVWF	r0x1005
	MOVWF	STK06
	MOVF	r0x1004,W
	MOVWF	STK05
	MOVF	r0x1003,W
	MOVWF	STK04
	MOVF	r0x1002,W
	MOVWF	STK03
	MOVLW	0x08
	MOVWF	STK02
	MOVLW	0x53
	MOVWF	STK01
	MOVLW	0x88
	MOVWF	STK00
	MOVLW	0x3b
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x100D
	MOVWF	r0x100D
	MOVF	STK00,W
	MOVWF	r0x100E
	MOVF	STK01,W
	MOVWF	r0x100F
	MOVF	STK02,W
	MOVWF	r0x1010
;[ICODE] expf.c:84: 	send iTemp27 [k38 lr78:80 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1054 r0x1055 r0x1056 r0x1057 ]{argreg = 1}
;[ICODE] expf.c:84: 	send 0.25 {const-float literal}{argreg = 1}
;[ICODE] expf.c:84: 	iTemp28 [k39 lr81:83 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1054 r0x1055 r0x1056 r0x1057 ] = call ___fsadd [k59 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x80
	MOVWF	STK04
	MOVLW	0x3e
	MOVWF	STK03
	MOVF	r0x1010,W
	MOVWF	STK02
	MOVF	r0x100F,W
	MOVWF	STK01
	MOVF	r0x100E,W
	MOVWF	STK00
	MOVF	r0x100D,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x100D
	MOVWF	r0x100D
	MOVF	STK00,W
	MOVWF	r0x100E
	MOVF	STK01,W
	MOVWF	r0x100F
	MOVF	STK02,W
	MOVWF	r0x1010
;[ICODE] expf.c:84: 	send iTemp28 [k39 lr81:83 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1054 r0x1055 r0x1056 r0x1057 ]{argreg = 1}
;[ICODE] expf.c:84: 	send iTemp20 [k29 lr70:83 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _expf_g_1_1}[r0x104D r0x104E r0x104F r0x1050 ]{argreg = 1}
;[ICODE] expf.c:84: 	iTemp26 [k36 lr84:105 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _expf_r_1_1}[r0x104D r0x104E r0x104F r0x1050 ] = call ___fsmul [k55 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVF	r0x1006,W
	MOVWF	STK06
	MOVF	r0x1007,W
	MOVWF	STK05
	MOVF	r0x1008,W
	MOVWF	STK04
	MOVF	r0x1009,W
	MOVWF	STK03
	MOVF	r0x1010,W
	MOVWF	STK02
	MOVF	r0x100F,W
	MOVWF	STK01
	MOVF	r0x100E,W
	MOVWF	STK00
	MOVF	r0x100D,W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x1009
	MOVWF	r0x1009
	MOVF	STK00,W
	MOVWF	r0x1008
	MOVF	STK01,W
	MOVWF	r0x1007
	MOVF	STK02,W
	MOVWF	r0x1006
;[ICODE] expf.c:85: 	send 0.0499872 {const-float literal}{argreg = 1}
;[ICODE] expf.c:85: 	send iTemp8 [k14 lr34:114 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _expf_z_1_1}[r0x1049 r0x104A r0x104B r0x104C ]{argreg = 1}
;[ICODE] expf.c:85: 	iTemp30 [k41 lr88:90 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1054 r0x1055 r0x1056 r0x1057 ] = call ___fsmul [k55 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
;	.line	85; "expf.c"	r=0.5+(r/(Q(z)-r));
	MOVF	r0x1005,W
	MOVWF	STK06
	MOVF	r0x1004,W
	MOVWF	STK05
	MOVF	r0x1003,W
	MOVWF	STK04
	MOVF	r0x1002,W
	MOVWF	STK03
	MOVLW	0x5b
	MOVWF	STK02
	MOVLW	0xbf
	MOVWF	STK01
	MOVLW	0x4c
	MOVWF	STK00
	MOVLW	0x3d
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x100D
	MOVWF	r0x100D
	MOVF	STK00,W
	MOVWF	r0x100E
	MOVF	STK01,W
	MOVWF	r0x100F
	MOVF	STK02,W
	MOVWF	r0x1010
;[ICODE] expf.c:85: 	send iTemp30 [k41 lr88:90 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1054 r0x1055 r0x1056 r0x1057 ]{argreg = 1}
;[ICODE] expf.c:85: 	send 0.5 {const-float literal}{argreg = 1}
;[ICODE] expf.c:85: 	iTemp31 [k42 lr91:93 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1054 r0x1055 r0x1056 r0x1057 ] = call ___fsadd [k59 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x00
	MOVWF	STK04
	MOVLW	0x3f
	MOVWF	STK03
	MOVF	r0x1010,W
	MOVWF	STK02
	MOVF	r0x100F,W
	MOVWF	STK01
	MOVF	r0x100E,W
	MOVWF	STK00
	MOVF	r0x100D,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x100D
	MOVWF	r0x100D
	MOVF	STK00,W
	MOVWF	r0x100E
	MOVF	STK01,W
	MOVWF	r0x100F
	MOVF	STK02,W
	MOVWF	r0x1010
;[ICODE] expf.c:85: 	send iTemp31 [k42 lr91:93 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1054 r0x1055 r0x1056 r0x1057 ]{argreg = 1}
;[ICODE] expf.c:85: 	send iTemp26 [k36 lr84:105 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _expf_r_1_1}[r0x104D r0x104E r0x104F r0x1050 ]{argreg = 1}
;[ICODE] expf.c:85: 	iTemp32 [k43 lr94:96 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1054 r0x1055 r0x1056 r0x1057 ] = call ___fssub [k58 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVF	r0x1006,W
	MOVWF	STK06
	MOVF	r0x1007,W
	MOVWF	STK05
	MOVF	r0x1008,W
	MOVWF	STK04
	MOVF	r0x1009,W
	MOVWF	STK03
	MOVF	r0x1010,W
	MOVWF	STK02
	MOVF	r0x100F,W
	MOVWF	STK01
	MOVF	r0x100E,W
	MOVWF	STK00
	MOVF	r0x100D,W
	PAGESEL	___fssub
	CALL	___fssub
	PAGESEL	$
	BANKSEL	r0x100D
	MOVWF	r0x100D
	MOVF	STK00,W
	MOVWF	r0x100E
	MOVF	STK01,W
	MOVWF	r0x100F
	MOVF	STK02,W
	MOVWF	r0x1010
	MOVWF	STK06
	MOVF	r0x100F,W
	MOVWF	STK05
	MOVF	r0x100E,W
	MOVWF	STK04
	MOVF	r0x100D,W
	MOVWF	STK03
	MOVF	r0x1006,W
	MOVWF	STK02
	MOVF	r0x1007,W
	MOVWF	STK01
	MOVF	r0x1008,W
	MOVWF	STK00
	MOVF	r0x1009,W
	PAGESEL	___fsdiv
	CALL	___fsdiv
	PAGESEL	$
	BANKSEL	r0x100D
	MOVWF	r0x100D
	MOVF	STK00,W
	MOVWF	r0x100E
	MOVF	STK01,W
	MOVWF	r0x100F
	MOVF	STK02,W
	MOVWF	r0x1010
;[ICODE] expf.c:85: 	send iTemp33 [k44 lr97:99 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1054 r0x1055 r0x1056 r0x1057 ]{argreg = 1}
;[ICODE] expf.c:85: 	send 0.5 {const-float literal}{argreg = 1}
;[ICODE] expf.c:85: 	iTemp26 [k36 lr84:105 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _expf_r_1_1}[r0x104D r0x104E r0x104F r0x1050 ] = call ___fsadd [k59 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x00
	MOVWF	STK04
	MOVLW	0x3f
	MOVWF	STK03
	MOVF	r0x1010,W
	MOVWF	STK02
	MOVF	r0x100F,W
	MOVWF	STK01
	MOVF	r0x100E,W
	MOVWF	STK00
	MOVF	r0x100D,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x1009
	MOVWF	r0x1009
	MOVF	STK00,W
	MOVWF	r0x1008
	MOVF	STK01,W
	MOVWF	r0x1007
	MOVF	STK02,W
	MOVWF	r0x1006
;[ICODE] expf.c:87: 	iTemp10 [k17 lr37:105 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ _expf_n_1_1}[r0x1052 r0x1053 ] = iTemp10 [k17 lr37:105 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ _expf_n_1_1}[r0x1052 r0x1053 ] + 0x1 {const-unsigned-char literal}
;	.line	87; "expf.c"	n++;
	INCF	r0x100C,F
	BTFSC	STATUS,2
	INCF	r0x100B,F
;[ICODE] expf.c:88: 	send iTemp26 [k36 lr84:105 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _expf_r_1_1}[r0x104D r0x104E r0x104F r0x1050 ]{argreg = 1}
;[ICODE] expf.c:88: 	send iTemp10 [k17 lr37:105 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ _expf_n_1_1}[r0x1052 r0x1053 ]{argreg = 1}
;[ICODE] expf.c:88: 	iTemp8 [k14 lr34:114 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _expf_z_1_1}[r0x1049 r0x104A r0x104B r0x104C ] = call _ldexpf [k48 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed, const-int fixed)  fixed}
;	.line	88; "expf.c"	z=ldexpf(r, n);
	MOVF	r0x100C,W
	MOVWF	STK04
	MOVF	r0x100B,W
	MOVWF	STK03
	MOVF	r0x1006,W
	MOVWF	STK02
	MOVF	r0x1007,W
	MOVWF	STK01
	MOVF	r0x1008,W
	MOVWF	STK00
	MOVF	r0x1009,W
	PAGESEL	_ldexpf
	CALL	_ldexpf
	PAGESEL	$
	BANKSEL	r0x1002
	MOVWF	r0x1002
	MOVF	STK00,W
	MOVWF	r0x1003
	MOVF	STK01,W
	MOVWF	r0x1004
	MOVF	STK02,W
	MOVWF	r0x1005
;[ICODE] expf.c:89: 	if iTemp3 [k7 lr9:108 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _expf_sign_1_1}[r0x1051 ] == 0 goto _iffalse_6($16)
;	.line	89; "expf.c"	if(sign)
	MOVF	r0x100A,W
	BTFSC	STATUS,2
	GOTO	_00120_DS_
;[ICODE] expf.c:90: 	send 1 {const-float literal}{argreg = 1}
;[ICODE] expf.c:90: 	send iTemp8 [k14 lr34:114 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _expf_z_1_1}[r0x1049 r0x104A r0x104B r0x104C ]{argreg = 1}
;[ICODE] expf.c:90: 	iTemp38 [k52 lr111:112 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x104D r0x104E r0x104F r0x1050 ] = call ___fsdiv [k60 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
;	.line	90; "expf.c"	return 1.0/z;
	MOVF	r0x1005,W
	MOVWF	STK06
	MOVF	r0x1004,W
	MOVWF	STK05
	MOVF	r0x1003,W
	MOVWF	STK04
	MOVF	r0x1002,W
	MOVWF	STK03
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x80
	MOVWF	STK00
	MOVLW	0x3f
	PAGESEL	___fsdiv
	CALL	___fsdiv
	PAGESEL	$
	BANKSEL	r0x1009
	MOVWF	r0x1009
	MOVF	STK00,W
	MOVWF	r0x1008
	MOVF	STK01,W
	MOVWF	r0x1007
	MOVF	STK02,W
	MOVWF	r0x1006
	MOVWF	STK02
	MOVF	r0x1007,W
	MOVWF	STK01
	MOVF	r0x1008,W
	MOVWF	STK00
	MOVF	r0x1009,W
	GOTO	_00122_DS_
;[ICODE] expf.c:90:  _iffalse_6($16) :
;[ICODE] expf.c:92: 	ret iTemp8 [k14 lr34:114 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _expf_z_1_1}[r0x1049 r0x104A r0x104B r0x104C ]
_00120_DS_
;	.line	92; "expf.c"	return z;
	BANKSEL	r0x1005
	MOVF	r0x1005,W
	MOVWF	STK02
	MOVF	r0x1004,W
	MOVWF	STK01
	MOVF	r0x1003,W
	MOVWF	STK00
	MOVF	r0x1002,W
;[ICODE] expf.c:92:  _return($18) :
;[ICODE] expf.c:92: 	eproc _expf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed)  fixed}
_00122_DS_
	RETURN	
; exit point of _expf


;	code size estimation:
;	  582+   81 =   663 instructions ( 1488 byte)

	end
