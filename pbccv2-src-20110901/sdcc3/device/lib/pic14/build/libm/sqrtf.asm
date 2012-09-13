;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6064 (Nov 22 2010) (Linux)
; This file was generated Mon Nov 22 22:55:46 2010
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"sqrtf.c"
	list	p=16f877
	radix dec
	include "p16f877.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	___uchar2fs
	extern	___schar2fs
	extern	___uint2fs
	extern	___sint2fs
	extern	___ulong2fs
	extern	___slong2fs
	extern	___fs2uchar
	extern	___fs2schar
	extern	___fs2uint
	extern	___fs2sint
	extern	___fs2ulong
	extern	___fs2slong
	extern	___fsadd
	extern	___fssub
	extern	___fsmul
	extern	___fsdiv
	extern	___fslt
	extern	___fseq
	extern	___fsneq
	extern	___fsgt
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
	extern	_fabsf
	extern	_frexpf
	extern	_ldexpf
	extern	_ceilf
	extern	_floorf
	extern	_modff
	extern	__divsint
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
	global	_sqrtf

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_sqrtf_0	udata
r0x1007	res	1
r0x1006	res	1
r0x1005	res	1
r0x1004	res	1
r0x1008	res	1
r0x1009	res	1
r0x100A	res	1
r0x100B	res	1
r0x100F	res	1
r0x100E	res	1
r0x100D	res	1
r0x100C	res	1
_sqrtf_n_1_1	res	2
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
code_sqrtf	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _sqrtf	;Function start
; 2 exit points
;has an exit
;functions called:
;   ___fseq
;   ___fslt
;   _frexpf
;   ___fsmul
;   ___fsadd
;   ___fsdiv
;   ___fsadd
;   _ldexpf
;   ___fsdiv
;   ___fsadd
;   ___fsmul
;   __divsint
;   _ldexpf
;   ___fseq
;   ___fslt
;   _frexpf
;   ___fsmul
;   ___fsadd
;   ___fsdiv
;   ___fsadd
;   _ldexpf
;   ___fsdiv
;   ___fsadd
;   ___fsmul
;   __divsint
;   _ldexpf
;19 compiler assigned registers:
;   r0x1004
;   STK00
;   r0x1005
;   STK01
;   r0x1006
;   STK02
;   r0x1007
;   STK06
;   STK05
;   STK04
;   STK03
;   r0x1008
;   r0x1009
;   r0x100A
;   r0x100B
;   r0x100C
;   r0x100D
;   r0x100E
;   r0x100F
;; Starting pCode block
;[ICODE] sqrtf.c:36:  _entry($12) :
;[ICODE] sqrtf.c:36: 	proc _sqrtf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed)  fixed}
_sqrtf	;Function start
; 2 exit points
;[ICODE] sqrtf.c:36: iTemp0 [k2 lr3:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _sqrtf_x_1_1}[r0x104A r0x104B r0x104C r0x104D ] = recv _sqrtf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed)  fixed}
;	.line	36; "sqrtf.c"	float sqrtf(const float x) _MATH_REENTRANT
	BANKSEL	r0x1004
	MOVWF	r0x1004
	MOVF	STK00,W
	MOVWF	r0x1005
	MOVF	STK01,W
	MOVWF	r0x1006
	MOVF	STK02,W
;	.line	41; "sqrtf.c"	if (x==0.0) return x;
	MOVWF	r0x1007
	IORWF	r0x1006,W
	IORWF	r0x1005,W
	IORWF	r0x1004,W
	BTFSS	STATUS,2
	GOTO	_00111_DS_
;[ICODE] sqrtf.c:41: 	ret iTemp0 [k2 lr3:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _sqrtf_x_1_1}[r0x104A r0x104B r0x104C r0x104D ]
	MOVF	r0x1007,W
	MOVWF	STK02
	MOVF	r0x1006,W
	MOVWF	STK01
	MOVF	r0x1005,W
	MOVWF	STK00
	MOVF	r0x1004,W
	GOTO	_00115_DS_
;[ICODE] sqrtf.c:41:  _iffalse_2($7) :
;[ICODE] sqrtf.c:42: 	send iTemp0 [k2 lr3:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _sqrtf_x_1_1}[r0x104A r0x104B r0x104C r0x104D ]{argreg = 1}
;[ICODE] sqrtf.c:42: 	send 1 {const-float literal}{argreg = 1}
;[ICODE] sqrtf.c:42: 	iTemp1 [k4 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x104E ] = call ___fseq [k34 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float fixed, float fixed)  fixed}
_00111_DS_
;	.line	42; "sqrtf.c"	else if (x==1.0) return 1.0;
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x80
	MOVWF	STK04
	MOVLW	0x3f
	MOVWF	STK03
	BANKSEL	r0x1007
	MOVF	r0x1007,W
	MOVWF	STK02
	MOVF	r0x1006,W
	MOVWF	STK01
	MOVF	r0x1005,W
	MOVWF	STK00
	MOVF	r0x1004,W
	PAGESEL	___fseq
	CALL	___fseq
	PAGESEL	$
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] sqrtf.c:42: 	if iTemp1 [k4 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x104E ] == 0 goto _iffalse_1($4)
	MOVF	r0x1008,W
	BTFSC	STATUS,2
	GOTO	_00108_DS_
;[ICODE] sqrtf.c:42: 	ret 1 {const-float literal}
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x80
	MOVWF	STK00
	MOVLW	0x3f
	GOTO	_00115_DS_
;[ICODE] sqrtf.c:42:  _iffalse_1($4) :
;[ICODE] sqrtf.c:43: 	send iTemp0 [k2 lr3:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _sqrtf_x_1_1}[r0x104A r0x104B r0x104C r0x104D ]{argreg = 1}
;[ICODE] sqrtf.c:43: 	send 0 {const-float literal}{argreg = 1}
;[ICODE] sqrtf.c:43: 	iTemp2 [k5 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x104E ] = call ___fslt [k35 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float fixed, float fixed)  fixed}
_00108_DS_
;	.line	43; "sqrtf.c"	else if (x<0.0)
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x00
	MOVWF	STK04
	MOVLW	0x00
	MOVWF	STK03
	BANKSEL	r0x1007
	MOVF	r0x1007,W
	MOVWF	STK02
	MOVF	r0x1006,W
	MOVWF	STK01
	MOVF	r0x1005,W
	MOVWF	STK00
	MOVF	r0x1004,W
	PAGESEL	___fslt
	CALL	___fslt
	PAGESEL	$
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] sqrtf.c:43: 	if iTemp2 [k5 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x104E ] == 0 goto _ifend_2($8)
	MOVF	r0x1008,W
	BTFSC	STATUS,2
	GOTO	_00112_DS_
;[ICODE] sqrtf.c:45: 	_errno [k6 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed} := 0x21 {int literal}
;	.line	45; "sqrtf.c"	errno=EDOM;
	MOVLW	0x21
	BANKSEL	_errno
	MOVWF	_errno
	CLRF	(_errno + 1)
;[ICODE] sqrtf.c:46: 	ret 0 {const-float literal}
;	.line	46; "sqrtf.c"	return 0.0;
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x00
	GOTO	_00115_DS_
;[ICODE] sqrtf.c:46:  _ifend_2($8) :
;[ICODE] sqrtf.c:48: 	iTemp5 [k12 lr20:21 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{int near* fixed}[remat] = &[_sqrtf_n_1_1 [k11 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}]
;[ICODE] sqrtf.c:48: 	iTemp6 [k13 lr21:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{int generic* fixed}[r0x104E r0x104F r0x1050 ] = (int generic* fixed)iTemp5 [k12 lr20:21 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{int near* fixed}[remat]
_00112_DS_
;	.line	48; "sqrtf.c"	f=frexpf(x, &n);
	MOVLW	high (_sqrtf_n_1_1 + 0)
	BANKSEL	r0x1009
	MOVWF	r0x1009
	MOVLW	(_sqrtf_n_1_1 + 0)
	MOVWF	r0x1008
	CLRF	r0x100A
;[ICODE] sqrtf.c:48: 	send iTemp0 [k2 lr3:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _sqrtf_x_1_1}[r0x104A r0x104B r0x104C r0x104D ]{argreg = 1}
;[ICODE] sqrtf.c:48: 	send iTemp6 [k13 lr21:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{int generic* fixed}[r0x104E r0x104F r0x1050 ]{argreg = 1}
;[ICODE] sqrtf.c:48: 	iTemp4 [k8 lr24:44 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _sqrtf_f_1_1}[r0x104A r0x104B r0x104C r0x104D ] = call _frexpf [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed, int generic* fixed)  fixed}
	MOVF	r0x1008,W
	MOVWF	STK05
	MOVF	r0x1009,W
	MOVWF	STK04
	MOVLW	0x00
	MOVWF	STK03
	MOVF	r0x1007,W
	MOVWF	STK02
	MOVF	r0x1006,W
	MOVWF	STK01
	MOVF	r0x1005,W
	MOVWF	STK00
	MOVF	r0x1004,W
	PAGESEL	_frexpf
	CALL	_frexpf
	PAGESEL	$
	BANKSEL	r0x1004
	MOVWF	r0x1004
	MOVF	STK00,W
	MOVWF	r0x1005
	MOVF	STK01,W
	MOVWF	r0x1006
	MOVF	STK02,W
;	.line	49; "sqrtf.c"	y=0.41731+0.59016*f; /*Educated guess*/
	MOVWF	r0x1007
	MOVWF	STK06
	MOVF	r0x1006,W
	MOVWF	STK05
	MOVF	r0x1005,W
	MOVWF	STK04
	MOVF	r0x1004,W
	MOVWF	STK03
	MOVLW	0xba
	MOVWF	STK02
	MOVLW	0x14
	MOVWF	STK01
	MOVLW	0x17
	MOVWF	STK00
	MOVLW	0x3f
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x100B
	MOVWF	r0x100B
	MOVF	STK00,W
	MOVWF	r0x100A
	MOVF	STK01,W
	MOVWF	r0x1009
	MOVF	STK02,W
	MOVWF	r0x1008
;[ICODE] sqrtf.c:49: 	send iTemp9 [k19 lr28:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x104E r0x104F r0x1050 r0x1051 ]{argreg = 1}
;[ICODE] sqrtf.c:49: 	send 0.41731 {const-float literal}{argreg = 1}
;[ICODE] sqrtf.c:49: 	iTemp8 [k17 lr31:63 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _sqrtf_y_1_1}[r0x104E r0x104F r0x1050 r0x1051 ] = call ___fsadd [k37 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVLW	0xa8
	MOVWF	STK06
	MOVLW	0xa9
	MOVWF	STK05
	MOVLW	0xd5
	MOVWF	STK04
	MOVLW	0x3e
	MOVWF	STK03
	MOVF	r0x1008,W
	MOVWF	STK02
	MOVF	r0x1009,W
	MOVWF	STK01
	MOVF	r0x100A,W
	MOVWF	STK00
	MOVF	r0x100B,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x100B
	MOVWF	r0x100B
	MOVF	STK00,W
	MOVWF	r0x100A
	MOVF	STK01,W
	MOVWF	r0x1009
	MOVF	STK02,W
;	.line	51; "sqrtf.c"	y+=f/y;
	MOVWF	r0x1008
	MOVWF	STK06
	MOVF	r0x1009,W
	MOVWF	STK05
	MOVF	r0x100A,W
	MOVWF	STK04
	MOVF	r0x100B,W
	MOVWF	STK03
	MOVF	r0x1007,W
	MOVWF	STK02
	MOVF	r0x1006,W
	MOVWF	STK01
	MOVF	r0x1005,W
	MOVWF	STK00
	MOVF	r0x1004,W
	PAGESEL	___fsdiv
	CALL	___fsdiv
	PAGESEL	$
	BANKSEL	r0x100C
	MOVWF	r0x100C
	MOVF	STK00,W
	MOVWF	r0x100D
	MOVF	STK01,W
	MOVWF	r0x100E
	MOVF	STK02,W
	MOVWF	r0x100F
	MOVWF	STK06
	MOVF	r0x100E,W
	MOVWF	STK05
	MOVF	r0x100D,W
	MOVWF	STK04
	MOVF	r0x100C,W
	MOVWF	STK03
	MOVF	r0x1008,W
	MOVWF	STK02
	MOVF	r0x1009,W
	MOVWF	STK01
	MOVF	r0x100A,W
	MOVWF	STK00
	MOVF	r0x100B,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x100B
	MOVWF	r0x100B
	MOVF	STK00,W
	MOVWF	r0x100A
	MOVF	STK01,W
	MOVWF	r0x1009
	MOVF	STK02,W
	MOVWF	r0x1008
;[ICODE] sqrtf.c:52: 	send iTemp8 [k17 lr31:63 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _sqrtf_y_1_1}[r0x104E r0x104F r0x1050 r0x1051 ]{argreg = 1}
;[ICODE] sqrtf.c:52: 	send 0xfffffffe {const-int literal}{argreg = 1}
;[ICODE] sqrtf.c:52: 	iTemp13 [k26 lr42:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1052 r0x1053 r0x1054 r0x1055 ] = call _ldexpf [k23 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed, const-int fixed)  fixed}
;	.line	52; "sqrtf.c"	y=ldexpf(y, -2) + f/y; /*Faster version of 0.25 * y + f/y*/
	MOVLW	0xfe
	MOVWF	STK04
	MOVLW	0xff
	MOVWF	STK03
	MOVF	r0x1008,W
	MOVWF	STK02
	MOVF	r0x1009,W
	MOVWF	STK01
	MOVF	r0x100A,W
	MOVWF	STK00
	MOVF	r0x100B,W
	PAGESEL	_ldexpf
	CALL	_ldexpf
	PAGESEL	$
	BANKSEL	r0x100C
	MOVWF	r0x100C
	MOVF	STK00,W
	MOVWF	r0x100D
	MOVF	STK01,W
	MOVWF	r0x100E
	MOVF	STK02,W
	MOVWF	r0x100F
;[ICODE] sqrtf.c:52: 	send iTemp4 [k8 lr24:44 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _sqrtf_f_1_1}[r0x104A r0x104B r0x104C r0x104D ]{argreg = 1}
;[ICODE] sqrtf.c:52: 	send iTemp8 [k17 lr31:63 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _sqrtf_y_1_1}[r0x104E r0x104F r0x1050 r0x1051 ]{argreg = 1}
;[ICODE] sqrtf.c:52: 	iTemp14 [k27 lr45:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x104A r0x104B r0x104C r0x104D ] = call ___fsdiv [k38 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVF	r0x1008,W
	MOVWF	STK06
	MOVF	r0x1009,W
	MOVWF	STK05
	MOVF	r0x100A,W
	MOVWF	STK04
	MOVF	r0x100B,W
	MOVWF	STK03
	MOVF	r0x1007,W
	MOVWF	STK02
	MOVF	r0x1006,W
	MOVWF	STK01
	MOVF	r0x1005,W
	MOVWF	STK00
	MOVF	r0x1004,W
	PAGESEL	___fsdiv
	CALL	___fsdiv
	PAGESEL	$
	BANKSEL	r0x1004
	MOVWF	r0x1004
	MOVF	STK00,W
	MOVWF	r0x1005
	MOVF	STK01,W
	MOVWF	r0x1006
	MOVF	STK02,W
	MOVWF	r0x1007
	MOVWF	STK06
	MOVF	r0x1006,W
	MOVWF	STK05
	MOVF	r0x1005,W
	MOVWF	STK04
	MOVF	r0x1004,W
	MOVWF	STK03
	MOVF	r0x100F,W
	MOVWF	STK02
	MOVF	r0x100E,W
	MOVWF	STK01
	MOVF	r0x100D,W
	MOVWF	STK00
	MOVF	r0x100C,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x100B
	MOVWF	r0x100B
	MOVF	STK00,W
	MOVWF	r0x100A
	MOVF	STK01,W
	MOVWF	r0x1009
	MOVF	STK02,W
	MOVWF	r0x1008
;[ICODE] sqrtf.c:54: 	iTemp16 [k29 lr50:51 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed} = _sqrtf_n_1_1 [k11 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed} & 0x1 {int literal}
;	.line	54; "sqrtf.c"	if (n&1)
	BANKSEL	_sqrtf_n_1_1
	BTFSS	_sqrtf_n_1_1,0
	GOTO	_00114_DS_
;[ICODE] sqrtf.c:54: 	if iTemp16 [k29 lr50:51 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed} == 0 goto _iffalse_3($10)
;[ICODE] sqrtf.c:56: 	send 0.707107 {const-float literal}{argreg = 1}
;[ICODE] sqrtf.c:56: 	send iTemp8 [k17 lr31:63 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _sqrtf_y_1_1}[r0x104E r0x104F r0x1050 r0x1051 ]{argreg = 1}
;[ICODE] sqrtf.c:56: 	iTemp8 [k17 lr31:63 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _sqrtf_y_1_1}[r0x104E r0x104F r0x1050 r0x1051 ] = call ___fsmul [k36 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
;	.line	56; "sqrtf.c"	y*=0.7071067812;
	BANKSEL	r0x1008
	MOVF	r0x1008,W
	MOVWF	STK06
	MOVF	r0x1009,W
	MOVWF	STK05
	MOVF	r0x100A,W
	MOVWF	STK04
	MOVF	r0x100B,W
	MOVWF	STK03
	MOVLW	0xf3
	MOVWF	STK02
	MOVLW	0x04
	MOVWF	STK01
	MOVLW	0x35
	MOVWF	STK00
	MOVLW	0x3f
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x100B
	MOVWF	r0x100B
	MOVF	STK00,W
	MOVWF	r0x100A
	MOVF	STK01,W
	MOVWF	r0x1009
	MOVF	STK02,W
	MOVWF	r0x1008
;[ICODE] sqrtf.c:57: 	_sqrtf_n_1_1 [k11 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed} = _sqrtf_n_1_1 [k11 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed} + 0x1 {const-unsigned-char literal}
;	.line	57; "sqrtf.c"	++n;
	BANKSEL	_sqrtf_n_1_1
	INCF	_sqrtf_n_1_1,F
	BTFSC	STATUS,2
	INCF	(_sqrtf_n_1_1 + 1),F
;[ICODE] sqrtf.c:57:  _iffalse_3($10) :
;[ICODE] sqrtf.c:59: 	send _sqrtf_n_1_1 [k11 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}{argreg = 1}
;[ICODE] sqrtf.c:59: 	send 0x2 {int literal}{argreg = 1}
;[ICODE] sqrtf.c:59: 	iTemp19 [k32 lr61:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x104A r0x104B ] = call __divsint [k39 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( int fixed, int fixed)  fixed}
_00114_DS_
;	.line	59; "sqrtf.c"	return ldexpf(y, n/2);
	MOVLW	0x02
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	BANKSEL	_sqrtf_n_1_1
	MOVF	_sqrtf_n_1_1,W
	MOVWF	STK00
	MOVF	(_sqrtf_n_1_1 + 1),W
	PAGESEL	__divsint
	CALL	__divsint
	PAGESEL	$
	BANKSEL	r0x1006
	MOVWF	r0x1006
	MOVF	STK00,W
	MOVWF	r0x1007
	MOVWF	STK04
	MOVF	r0x1006,W
	MOVWF	STK03
	MOVF	r0x1008,W
	MOVWF	STK02
	MOVF	r0x1009,W
	MOVWF	STK01
	MOVF	r0x100A,W
	MOVWF	STK00
	MOVF	r0x100B,W
	PAGESEL	_ldexpf
	CALL	_ldexpf
	PAGESEL	$
	BANKSEL	r0x1004
	MOVWF	r0x1004
	MOVF	STK00,W
	MOVWF	r0x1005
	MOVF	STK01,W
	MOVWF	r0x1006
	MOVF	STK02,W
	MOVWF	r0x1007
	MOVWF	STK02
	MOVF	r0x1006,W
	MOVWF	STK01
	MOVF	r0x1005,W
	MOVWF	STK00
	MOVF	r0x1004,W
;[ICODE] sqrtf.c:59:  _return($11) :
;[ICODE] sqrtf.c:59: 	eproc _sqrtf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed)  fixed}
_00115_DS_
	RETURN	
; exit point of _sqrtf


;	code size estimation:
;	  322+   48 =   370 instructions (  836 byte)

	end
