;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6064 (Nov 22 2010) (Linux)
; This file was generated Mon Nov 22 22:55:45 2010
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"atan2f.c"
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
	extern	___fslt
	extern	___fsdiv
	extern	___fsadd
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
	global	_atan2f

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_atan2f_0	udata
r0x1005	res	1
r0x1004	res	1
r0x1003	res	1
r0x1002	res	1
r0x1009	res	1
r0x1008	res	1
r0x1007	res	1
r0x1006	res	1
r0x100D	res	1
r0x100C	res	1
r0x100B	res	1
r0x100A	res	1
r0x1011	res	1
r0x1010	res	1
r0x100F	res	1
r0x100E	res	1
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
code_atan2f	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _atan2f	;Function start
; 2 exit points
;has an exit
;functions called:
;   _fabsf
;   _fabsf
;   ___fslt
;   ___fsdiv
;   _atanf
;   ___fslt
;   ___fslt
;   ___fsadd
;   ___fsdiv
;   _atanf
;   ___fslt
;   ___fsadd
;   _fabsf
;   _fabsf
;   ___fslt
;   ___fsdiv
;   _atanf
;   ___fslt
;   ___fslt
;   ___fsadd
;   ___fsdiv
;   _atanf
;   ___fslt
;   ___fsadd
;23 compiler assigned registers:
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
;   STK05
;   r0x1008
;   STK06
;   r0x1009
;   r0x100A
;   r0x100B
;   r0x100C
;   r0x100D
;   r0x100E
;   r0x100F
;   r0x1010
;   r0x1011
;; Starting pCode block
;[ICODE] atan2f.c:32:  _entry($10) :
;[ICODE] atan2f.c:32: 	proc _atan2f [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed, const-float fixed)  fixed}
_atan2f	;Function start
; 2 exit points
;[ICODE] atan2f.c:32: iTemp0 [k2 lr3:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _atan2f_x_1_1}[r0x1049 r0x104A r0x104B r0x104C ] = recv _atan2f [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed, const-float fixed)  fixed}
;	.line	32; "atan2f.c"	float atan2f(const float x, const float y)
	BANKSEL	r0x1002
	MOVWF	r0x1002
	MOVF	STK00,W
	MOVWF	r0x1003
	MOVF	STK01,W
	MOVWF	r0x1004
	MOVF	STK02,W
	MOVWF	r0x1005
;[ICODE] atan2f.c:32: iTemp1 [k4 lr4:45 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _atan2f_y_1_1}[r0x104D r0x104E r0x104F r0x1050 ] = recv _atan2f [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed, const-float fixed)  fixed}
	MOVF	STK03,W
	MOVWF	r0x1006
	MOVF	STK04,W
	MOVWF	r0x1007
	MOVF	STK05,W
	MOVWF	r0x1008
	MOVF	STK06,W
	MOVWF	r0x1009
;[ICODE] atan2f.c:36: 	if iTemp0 [k2 lr3:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _atan2f_x_1_1}[r0x1049 r0x104A r0x104B r0x104C ] != 0 goto _iffalse_0($2)
;	.line	36; "atan2f.c"	if ((x==0.0) && (y==0.0))
	MOVF	r0x1005,W
	IORWF	r0x1004,W
	IORWF	r0x1003,W
	IORWF	r0x1002,W
	BTFSS	STATUS,2
	GOTO	_00106_DS_
;[ICODE] atan2f.c:36: 	if iTemp1 [k4 lr4:45 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _atan2f_y_1_1}[r0x104D r0x104E r0x104F r0x1050 ] != 0 goto _iffalse_0($2)
	MOVF	r0x1009,W
	IORWF	r0x1008,W
	IORWF	r0x1007,W
	IORWF	r0x1006,W
	BTFSS	STATUS,2
	GOTO	_00106_DS_
;[ICODE] atan2f.c:38: 	_errno [k6 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed} := 0x21 {int literal}
;	.line	38; "atan2f.c"	errno=EDOM;
	MOVLW	0x21
	BANKSEL	_errno
	MOVWF	_errno
	CLRF	(_errno + 1)
;[ICODE] atan2f.c:39: 	ret 0 {const-float literal}
;	.line	39; "atan2f.c"	return 0.0;
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x00
	GOTO	_00113_DS_
;[ICODE] atan2f.c:39:  _iffalse_0($2) :
;[ICODE] atan2f.c:42: 	send iTemp1 [k4 lr4:45 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _atan2f_y_1_1}[r0x104D r0x104E r0x104F r0x1050 ]{argreg = 1}
;[ICODE] atan2f.c:42: 	iTemp3 [k10 lr11:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1051 r0x1052 r0x1053 r0x1054 ] = call _fabsf [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed)  fixed}
_00106_DS_
;	.line	42; "atan2f.c"	if(fabsf(y)>=fabsf(x))
	BANKSEL	r0x1009
	MOVF	r0x1009,W
	MOVWF	STK02
	MOVF	r0x1008,W
	MOVWF	STK01
	MOVF	r0x1007,W
	MOVWF	STK00
	MOVF	r0x1006,W
	PAGESEL	_fabsf
	CALL	_fabsf
	PAGESEL	$
	BANKSEL	r0x100A
	MOVWF	r0x100A
	MOVF	STK00,W
	MOVWF	r0x100B
	MOVF	STK01,W
	MOVWF	r0x100C
	MOVF	STK02,W
	MOVWF	r0x100D
;[ICODE] atan2f.c:42: 	send iTemp0 [k2 lr3:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _atan2f_x_1_1}[r0x1049 r0x104A r0x104B r0x104C ]{argreg = 1}
;[ICODE] atan2f.c:42: 	iTemp4 [k11 lr13:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{float fixed}[r0x1055 r0x1056 r0x1057 r0x1058 ] = call _fabsf [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed)  fixed}
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
	BANKSEL	r0x100E
	MOVWF	r0x100E
	MOVF	STK00,W
	MOVWF	r0x100F
	MOVF	STK01,W
	MOVWF	r0x1010
	MOVF	STK02,W
	MOVWF	r0x1011
	MOVWF	STK06
	MOVF	r0x1010,W
	MOVWF	STK05
	MOVF	r0x100F,W
	MOVWF	STK04
	MOVF	r0x100E,W
	MOVWF	STK03
	MOVF	r0x100D,W
	MOVWF	STK02
	MOVF	r0x100C,W
	MOVWF	STK01
	MOVF	r0x100B,W
	MOVWF	STK00
	MOVF	r0x100A,W
	PAGESEL	___fslt
	CALL	___fslt
	PAGESEL	$
	BANKSEL	r0x100D
	MOVWF	r0x100D
;[ICODE] atan2f.c:42: 	if iTemp5 [k12 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1051 ] != 0 goto _iffalse_2($7)
	MOVF	r0x100D,W
	BTFSS	STATUS,2
	GOTO	_00111_DS_
;[ICODE] atan2f.c:44: 	send iTemp0 [k2 lr3:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _atan2f_x_1_1}[r0x1049 r0x104A r0x104B r0x104C ]{argreg = 1}
;[ICODE] atan2f.c:44: 	send iTemp1 [k4 lr4:45 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _atan2f_y_1_1}[r0x104D r0x104E r0x104F r0x1050 ]{argreg = 1}
;[ICODE] atan2f.c:44: 	iTemp7 [k16 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1051 r0x1052 r0x1053 r0x1054 ] = call ___fsdiv [k31 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
;	.line	44; "atan2f.c"	r=atanf(x/y);
	MOVF	r0x1009,W
	MOVWF	STK06
	MOVF	r0x1008,W
	MOVWF	STK05
	MOVF	r0x1007,W
	MOVWF	STK04
	MOVF	r0x1006,W
	MOVWF	STK03
	MOVF	r0x1005,W
	MOVWF	STK02
	MOVF	r0x1004,W
	MOVWF	STK01
	MOVF	r0x1003,W
	MOVWF	STK00
	MOVF	r0x1002,W
	PAGESEL	___fsdiv
	CALL	___fsdiv
	PAGESEL	$
	BANKSEL	r0x100A
	MOVWF	r0x100A
	MOVF	STK00,W
	MOVWF	r0x100B
	MOVF	STK01,W
	MOVWF	r0x100C
	MOVF	STK02,W
	MOVWF	r0x100D
	MOVWF	STK02
	MOVF	r0x100C,W
	MOVWF	STK01
	MOVF	r0x100B,W
	MOVWF	STK00
	MOVF	r0x100A,W
	PAGESEL	_atanf
	CALL	_atanf
	PAGESEL	$
	BANKSEL	r0x100A
	MOVWF	r0x100A
	MOVF	STK00,W
	MOVWF	r0x100B
	MOVF	STK01,W
	MOVWF	r0x100C
	MOVF	STK02,W
	MOVWF	r0x100D
;[ICODE] atan2f.c:45: 	send iTemp1 [k4 lr4:45 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _atan2f_y_1_1}[r0x104D r0x104E r0x104F r0x1050 ]{argreg = 1}
;[ICODE] atan2f.c:45: 	send 0 {const-float literal}{argreg = 1}
;[ICODE] atan2f.c:45: 	iTemp9 [k19 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1055 ] = call ___fslt [k30 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float fixed, float fixed)  fixed}
;	.line	45; "atan2f.c"	if(y<0.0) r+=(x>=0?PI:-PI);
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x00
	MOVWF	STK04
	MOVLW	0x00
	MOVWF	STK03
	MOVF	r0x1009,W
	MOVWF	STK02
	MOVF	r0x1008,W
	MOVWF	STK01
	MOVF	r0x1007,W
	MOVWF	STK00
	MOVF	r0x1006,W
	PAGESEL	___fslt
	CALL	___fslt
	PAGESEL	$
	BANKSEL	r0x1011
	MOVWF	r0x1011
;[ICODE] atan2f.c:45: 	if iTemp9 [k19 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1055 ] == 0 goto _ifend_2($8)
	MOVF	r0x1011,W
	BTFSC	STATUS,2
	GOTO	_00112_DS_
;[ICODE] atan2f.c:45: 	send iTemp0 [k2 lr3:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _atan2f_x_1_1}[r0x1049 r0x104A r0x104B r0x104C ]{argreg = 1}
;[ICODE] atan2f.c:45: 	send 0 {float literal}{argreg = 1}
;[ICODE] atan2f.c:45: 	iTemp10 [k20 lr30:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1055 ] = call ___fslt [k30 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float fixed, float fixed)  fixed}
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
	BANKSEL	r0x1011
	MOVWF	r0x1011
;[ICODE] atan2f.c:45: 	iTemp11 [k21 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x1056 ] = not iTemp10 [k20 lr30:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1055 ]
	MOVF	r0x1011,W
	MOVLW	0x00
	BTFSC	STATUS,2
	MOVLW	0x01
	MOVWF	r0x1010
;[ICODE] atan2f.c:45: 	if iTemp11 [k21 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x1056 ] == 0 goto iTempLbl0($11)
	MOVF	r0x1010,W
	BTFSC	STATUS,2
	GOTO	_00115_DS_
;[ICODE] atan2f.c:45: 	iTemp12 [k22 lr33:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1055 r0x1056 r0x1057 r0x1058 ] := 3.14159 {const-float literal}
	MOVLW	0xdb
	MOVWF	r0x1011
	MOVLW	0x0f
	MOVWF	r0x1010
	MOVLW	0x49
	MOVWF	r0x100F
	MOVLW	0x40
	MOVWF	r0x100E
;[ICODE] atan2f.c:45: 	 goto iTempLbl1($12)
	GOTO	_00116_DS_
;[ICODE] atan2f.c:45:  iTempLbl0($11) :
;[ICODE] atan2f.c:45: 	iTemp12 [k22 lr33:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1055 r0x1056 r0x1057 r0x1058 ] := -3.14159 {const-float literal}
_00115_DS_
	MOVLW	0xdb
	BANKSEL	r0x1011
	MOVWF	r0x1011
	MOVLW	0x0f
	MOVWF	r0x1010
	MOVLW	0x49
	MOVWF	r0x100F
	MOVLW	0xc0
	MOVWF	r0x100E
;[ICODE] atan2f.c:45:  iTempLbl1($12) :
;[ICODE] atan2f.c:45: 	send iTemp6 [k13 lr22:65 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atan2f_r_1_1}[r0x1051 r0x1052 r0x1053 r0x1054 ]{argreg = 1}
;[ICODE] atan2f.c:45: 	send iTemp12 [k22 lr33:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1055 r0x1056 r0x1057 r0x1058 ]{argreg = 1}
;[ICODE] atan2f.c:45: 	iTemp6 [k13 lr22:65 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atan2f_r_1_1}[r0x1051 r0x1052 r0x1053 r0x1054 ] = call ___fsadd [k32 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
_00116_DS_
	BANKSEL	r0x1011
	MOVF	r0x1011,W
	MOVWF	STK06
	MOVF	r0x1010,W
	MOVWF	STK05
	MOVF	r0x100F,W
	MOVWF	STK04
	MOVF	r0x100E,W
	MOVWF	STK03
	MOVF	r0x100D,W
	MOVWF	STK02
	MOVF	r0x100C,W
	MOVWF	STK01
	MOVF	r0x100B,W
	MOVWF	STK00
	MOVF	r0x100A,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x100A
	MOVWF	r0x100A
	MOVF	STK00,W
	MOVWF	r0x100B
	MOVF	STK01,W
	MOVWF	r0x100C
	MOVF	STK02,W
	MOVWF	r0x100D
;[ICODE] atan2f.c:45: 	 goto _ifend_2($8)
	GOTO	_00112_DS_
;[ICODE] atan2f.c:45:  _iffalse_2($7) :
;[ICODE] atan2f.c:49: 	send iTemp1 [k4 lr4:45 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _atan2f_y_1_1}[r0x104D r0x104E r0x104F r0x1050 ]{argreg = 1}
;[ICODE] atan2f.c:49: 	send iTemp0 [k2 lr3:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _atan2f_x_1_1}[r0x1049 r0x104A r0x104B r0x104C ]{argreg = 1}
;[ICODE] atan2f.c:49: 	iTemp14 [k24 lr46:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x104D r0x104E r0x104F r0x1050 ] = call ___fsdiv [k31 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
_00111_DS_
;	.line	49; "atan2f.c"	r=-atanf(y/x);
	BANKSEL	r0x1005
	MOVF	r0x1005,W
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
	MOVF	r0x1007,W
	MOVWF	STK00
	MOVF	r0x1006,W
	PAGESEL	___fsdiv
	CALL	___fsdiv
	PAGESEL	$
	BANKSEL	r0x1006
	MOVWF	r0x1006
	MOVF	STK00,W
	MOVWF	r0x1007
	MOVF	STK01,W
	MOVWF	r0x1008
	MOVF	STK02,W
	MOVWF	r0x1009
	MOVWF	STK02
	MOVF	r0x1008,W
	MOVWF	STK01
	MOVF	r0x1007,W
	MOVWF	STK00
	MOVF	r0x1006,W
	PAGESEL	_atanf
	CALL	_atanf
	PAGESEL	$
	BANKSEL	r0x1006
	MOVWF	r0x1006
	MOVF	STK00,W
	MOVWF	r0x100B
	MOVWF	r0x1007
	MOVF	STK01,W
	MOVWF	r0x100C
	MOVWF	r0x1008
	MOVF	STK02,W
	MOVWF	r0x100D
	MOVWF	r0x1009
;[ICODE] atan2f.c:49: 	iTemp6 [k13 lr22:65 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atan2f_r_1_1}[r0x1051 r0x1052 r0x1053 r0x1054 ] = - iTemp15 [k25 lr48:49 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x104D r0x104E r0x104F r0x1050 ]
	MOVF	r0x1006,W
	XORLW	0x80
	MOVWF	r0x100A
;;101	MOVF	r0x1007,W
;;100	MOVF	r0x1008,W
;;99	MOVF	r0x1009,W
;[ICODE] atan2f.c:50: 	send iTemp0 [k2 lr3:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _atan2f_x_1_1}[r0x1049 r0x104A r0x104B r0x104C ]{argreg = 1}
;[ICODE] atan2f.c:50: 	send 0 {const-float literal}{argreg = 1}
;[ICODE] atan2f.c:50: 	iTemp17 [k27 lr53:54 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1049 ] = call ___fslt [k30 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float fixed, float fixed)  fixed}
;	.line	50; "atan2f.c"	r+=(x<0.0?-HALF_PI:HALF_PI);
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
	BANKSEL	r0x1005
	MOVWF	r0x1005
;[ICODE] atan2f.c:50: 	if iTemp17 [k27 lr53:54 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1049 ] == 0 goto iTempLbl2($13)
	MOVF	r0x1005,W
	BTFSC	STATUS,2
	GOTO	_00117_DS_
;[ICODE] atan2f.c:50: 	iTemp18 [k28 lr55:61 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1049 r0x104A r0x104B r0x104C ] := -1.5708 {const-float literal}
	MOVLW	0xdb
	MOVWF	r0x1005
	MOVLW	0x0f
	MOVWF	r0x1004
	MOVLW	0xc9
	MOVWF	r0x1003
	MOVLW	0xbf
	MOVWF	r0x1002
;[ICODE] atan2f.c:50: 	 goto iTempLbl3($14)
	GOTO	_00118_DS_
;[ICODE] atan2f.c:50:  iTempLbl2($13) :
;[ICODE] atan2f.c:50: 	iTemp18 [k28 lr55:61 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1049 r0x104A r0x104B r0x104C ] := 1.5708 {const-float literal}
_00117_DS_
	MOVLW	0xdb
	BANKSEL	r0x1005
	MOVWF	r0x1005
	MOVLW	0x0f
	MOVWF	r0x1004
	MOVLW	0xc9
	MOVWF	r0x1003
	MOVLW	0x3f
	MOVWF	r0x1002
;[ICODE] atan2f.c:50:  iTempLbl3($14) :
;[ICODE] atan2f.c:50: 	send iTemp6 [k13 lr22:65 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atan2f_r_1_1}[r0x1051 r0x1052 r0x1053 r0x1054 ]{argreg = 1}
;[ICODE] atan2f.c:50: 	send iTemp18 [k28 lr55:61 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1049 r0x104A r0x104B r0x104C ]{argreg = 1}
;[ICODE] atan2f.c:50: 	iTemp6 [k13 lr22:65 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atan2f_r_1_1}[r0x1051 r0x1052 r0x1053 r0x1054 ] = call ___fsadd [k32 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
_00118_DS_
	BANKSEL	r0x1005
	MOVF	r0x1005,W
	MOVWF	STK06
	MOVF	r0x1004,W
	MOVWF	STK05
	MOVF	r0x1003,W
	MOVWF	STK04
	MOVF	r0x1002,W
	MOVWF	STK03
	MOVF	r0x100D,W
	MOVWF	STK02
	MOVF	r0x100C,W
	MOVWF	STK01
	MOVF	r0x100B,W
	MOVWF	STK00
	MOVF	r0x100A,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x100A
	MOVWF	r0x100A
	MOVF	STK00,W
	MOVWF	r0x100B
	MOVF	STK01,W
	MOVWF	r0x100C
	MOVF	STK02,W
	MOVWF	r0x100D
;[ICODE] atan2f.c:50:  _ifend_2($8) :
;[ICODE] atan2f.c:52: 	ret iTemp6 [k13 lr22:65 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atan2f_r_1_1}[r0x1051 r0x1052 r0x1053 r0x1054 ]
_00112_DS_
;	.line	52; "atan2f.c"	return r;
	BANKSEL	r0x100D
	MOVF	r0x100D,W
	MOVWF	STK02
	MOVF	r0x100C,W
	MOVWF	STK01
	MOVF	r0x100B,W
	MOVWF	STK00
	MOVF	r0x100A,W
;[ICODE] atan2f.c:52:  _return($9) :
;[ICODE] atan2f.c:52: 	eproc _atan2f [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed, const-float fixed)  fixed}
_00113_DS_
	RETURN	
; exit point of _atan2f


;	code size estimation:
;	  321+   45 =   366 instructions (  822 byte)

	end
