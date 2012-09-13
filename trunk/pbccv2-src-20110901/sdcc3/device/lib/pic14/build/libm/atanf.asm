;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6064 (Nov 22 2010) (Linux)
; This file was generated Mon Nov 22 22:55:45 2010
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"atanf.c"
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
	extern	___fsgt
	extern	___fsdiv
	extern	___fsmul
	extern	___fssub
	extern	___fsadd
	extern	___fslt
	extern	__mulint
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
	global	_atanf

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_atanf_0	udata
r0x1013	res	1
r0x1012	res	1
r0x1011	res	1
r0x1010	res	1
r0x1014	res	1
r0x1015	res	1
r0x1019	res	1
r0x1018	res	1
r0x1017	res	1
r0x1016	res	1
r0x101A	res	1
r0x101D	res	1
r0x101C	res	1
r0x101B	res	1
r0x1021	res	1
r0x1020	res	1
r0x101F	res	1
r0x101E	res	1
r0x1025	res	1
r0x1024	res	1
r0x1023	res	1
r0x1022	res	1
_atanf_a_1_1	res	16
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
code_atanf	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _atanf	;Function start
; 2 exit points
;has an exit
;functions called:
;   _fabsf
;   ___fsgt
;   ___fsdiv
;   ___fsgt
;   ___fsmul
;   ___fssub
;   ___fsadd
;   ___fsadd
;   ___fsdiv
;   _fabsf
;   ___fslt
;   ___fsmul
;   ___fsmul
;   ___fsadd
;   ___fsmul
;   ___fsmul
;   ___fsadd
;   ___fsdiv
;   ___fsadd
;   __mulint
;   ___fsadd
;   ___fslt
;   _fabsf
;   ___fsgt
;   ___fsdiv
;   ___fsgt
;   ___fsmul
;   ___fssub
;   ___fsadd
;   ___fsadd
;   ___fsdiv
;   _fabsf
;   ___fslt
;   ___fsmul
;   ___fsmul
;   ___fsadd
;   ___fsmul
;   ___fsmul
;   ___fsadd
;   ___fsdiv
;   ___fsadd
;   __mulint
;   ___fsadd
;   ___fslt
;29 compiler assigned registers:
;   r0x1010
;   STK00
;   r0x1011
;   STK01
;   r0x1012
;   STK02
;   r0x1013
;   r0x1014
;   r0x1015
;   r0x1016
;   r0x1017
;   r0x1018
;   r0x1019
;   STK06
;   STK05
;   STK04
;   STK03
;   r0x101A
;   r0x101B
;   r0x101C
;   r0x101D
;   r0x101E
;   r0x101F
;   r0x1020
;   r0x1021
;   r0x1022
;   r0x1023
;   r0x1024
;   r0x1025
;; Starting pCode block
;[ICODE] atanf.c:47:  _entry($13) :
;[ICODE] atanf.c:47: 	proc _atanf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed)  fixed}
_atanf	;Function start
; 2 exit points
;[ICODE] atanf.c:47: iTemp0 [k2 lr3:93 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _atanf_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = recv _atanf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed)  fixed}
;	.line	47; "atanf.c"	float atanf(const float x) _MATH_REENTRANT
	BANKSEL	r0x1010
	MOVWF	r0x1010
	MOVF	STK00,W
	MOVWF	r0x1011
	MOVF	STK01,W
	MOVWF	r0x1012
	MOVF	STK02,W
	MOVWF	r0x1013
;[ICODE] atanf.c:50: 	iTemp1 [k4 lr4:84 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ _atanf_n_1_1}[r0x104C r0x104D ] := 0x0 {int literal}
;	.line	50; "atanf.c"	int n=0;
	CLRF	r0x1014
	CLRF	r0x1015
;[ICODE] atanf.c:53: 	send iTemp0 [k2 lr3:93 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _atanf_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]{argreg = 1}
;[ICODE] atanf.c:53: 	iTemp2 [k6 lr6:73 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atanf_f_1_1}[r0x104E r0x104F r0x1050 r0x1051 ] = call _fabsf [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed)  fixed}
;	.line	53; "atanf.c"	f=fabsf(x);
	MOVF	r0x1013,W
	MOVWF	STK02
	MOVF	r0x1012,W
	MOVWF	STK01
	MOVF	r0x1011,W
	MOVWF	STK00
	MOVF	r0x1010,W
	PAGESEL	_fabsf
	CALL	_fabsf
	PAGESEL	$
	BANKSEL	r0x1016
	MOVWF	r0x1016
	MOVF	STK00,W
	MOVWF	r0x1017
	MOVF	STK01,W
	MOVWF	r0x1018
	MOVF	STK02,W
	MOVWF	r0x1019
;[ICODE] atanf.c:54: 	send iTemp2 [k6 lr6:73 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atanf_f_1_1}[r0x104E r0x104F r0x1050 r0x1051 ]{argreg = 1}
;[ICODE] atanf.c:54: 	send 1 {const-float literal}{argreg = 1}
;[ICODE] atanf.c:54: 	iTemp4 [k11 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1052 ] = call ___fsgt [k46 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float fixed, float fixed)  fixed}
;	.line	54; "atanf.c"	if(f>1.0)
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x80
	MOVWF	STK04
	MOVLW	0x3f
	MOVWF	STK03
	MOVF	r0x1019,W
	MOVWF	STK02
	MOVF	r0x1018,W
	MOVWF	STK01
	MOVF	r0x1017,W
	MOVWF	STK00
	MOVF	r0x1016,W
	PAGESEL	___fsgt
	CALL	___fsgt
	PAGESEL	$
	BANKSEL	r0x101A
	MOVWF	r0x101A
;[ICODE] atanf.c:54: 	if iTemp4 [k11 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1052 ] == 0 goto _iffalse_0($2)
	MOVF	r0x101A,W
	BTFSC	STATUS,2
	GOTO	_00106_DS_
;[ICODE] atanf.c:56: 	send 1 {const-float literal}{argreg = 1}
;[ICODE] atanf.c:56: 	send iTemp2 [k6 lr6:73 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atanf_f_1_1}[r0x104E r0x104F r0x1050 r0x1051 ]{argreg = 1}
;[ICODE] atanf.c:56: 	iTemp2 [k6 lr6:73 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atanf_f_1_1}[r0x104E r0x104F r0x1050 r0x1051 ] = call ___fsdiv [k47 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
;	.line	56; "atanf.c"	f=1.0/f;
	MOVF	r0x1019,W
	MOVWF	STK06
	MOVF	r0x1018,W
	MOVWF	STK05
	MOVF	r0x1017,W
	MOVWF	STK04
	MOVF	r0x1016,W
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
	BANKSEL	r0x1016
	MOVWF	r0x1016
	MOVF	STK00,W
	MOVWF	r0x1017
	MOVF	STK01,W
	MOVWF	r0x1018
	MOVF	STK02,W
	MOVWF	r0x1019
;[ICODE] atanf.c:57: 	iTemp1 [k4 lr4:84 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ _atanf_n_1_1}[r0x104C r0x104D ] := 0x2 {int literal}
;	.line	57; "atanf.c"	n=2;
	MOVLW	0x02
	MOVWF	r0x1014
	CLRF	r0x1015
;[ICODE] atanf.c:57:  _iffalse_0($2) :
;[ICODE] atanf.c:59: 	send iTemp2 [k6 lr6:73 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atanf_f_1_1}[r0x104E r0x104F r0x1050 r0x1051 ]{argreg = 1}
;[ICODE] atanf.c:59: 	send 0.267949 {const-float literal}{argreg = 1}
;[ICODE] atanf.c:59: 	iTemp6 [k13 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1052 ] = call ___fsgt [k46 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float fixed, float fixed)  fixed}
_00106_DS_
;	.line	59; "atanf.c"	if(f>K1)
	MOVLW	0xa3
	MOVWF	STK06
	MOVLW	0x30
	MOVWF	STK05
	MOVLW	0x89
	MOVWF	STK04
	MOVLW	0x3e
	MOVWF	STK03
	BANKSEL	r0x1019
	MOVF	r0x1019,W
	MOVWF	STK02
	MOVF	r0x1018,W
	MOVWF	STK01
	MOVF	r0x1017,W
	MOVWF	STK00
	MOVF	r0x1016,W
	PAGESEL	___fsgt
	CALL	___fsgt
	PAGESEL	$
	BANKSEL	r0x101A
	MOVWF	r0x101A
;[ICODE] atanf.c:59: 	if iTemp6 [k13 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1052 ] == 0 goto _iffalse_1($4)
	MOVF	r0x101A,W
	BTFSC	STATUS,2
	GOTO	_00108_DS_
;[ICODE] atanf.c:61: 	send 0.732051 {const-float literal}{argreg = 1}
;[ICODE] atanf.c:61: 	send iTemp2 [k6 lr6:73 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atanf_f_1_1}[r0x104E r0x104F r0x1050 r0x1051 ]{argreg = 1}
;[ICODE] atanf.c:61: 	iTemp7 [k14 lr24:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1052 r0x1053 r0x1054 r0x1055 ] = call ___fsmul [k48 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
;	.line	61; "atanf.c"	f=((K2*f-1.0)+f)/(K3+f);
	MOVF	r0x1019,W
	MOVWF	STK06
	MOVF	r0x1018,W
	MOVWF	STK05
	MOVF	r0x1017,W
	MOVWF	STK04
	MOVF	r0x1016,W
	MOVWF	STK03
	MOVLW	0xaf
	MOVWF	STK02
	MOVLW	0x67
	MOVWF	STK01
	MOVLW	0x3b
	MOVWF	STK00
	MOVLW	0x3f
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x101B
	MOVWF	r0x101B
	MOVF	STK00,W
	MOVWF	r0x101C
	MOVF	STK01,W
	MOVWF	r0x101D
	MOVF	STK02,W
	MOVWF	r0x101A
;[ICODE] atanf.c:61: 	send iTemp7 [k14 lr24:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1052 r0x1053 r0x1054 r0x1055 ]{argreg = 1}
;[ICODE] atanf.c:61: 	send 1 {const-float literal}{argreg = 1}
;[ICODE] atanf.c:61: 	iTemp8 [k15 lr27:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1052 r0x1053 r0x1054 r0x1055 ] = call ___fssub [k49 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x80
	MOVWF	STK04
	MOVLW	0x3f
	MOVWF	STK03
	MOVF	r0x101A,W
	MOVWF	STK02
	MOVF	r0x101D,W
	MOVWF	STK01
	MOVF	r0x101C,W
	MOVWF	STK00
	MOVF	r0x101B,W
	PAGESEL	___fssub
	CALL	___fssub
	PAGESEL	$
	BANKSEL	r0x101B
	MOVWF	r0x101B
	MOVF	STK00,W
	MOVWF	r0x101C
	MOVF	STK01,W
	MOVWF	r0x101D
	MOVF	STK02,W
	MOVWF	r0x101A
;[ICODE] atanf.c:61: 	send iTemp8 [k15 lr27:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1052 r0x1053 r0x1054 r0x1055 ]{argreg = 1}
;[ICODE] atanf.c:61: 	send iTemp2 [k6 lr6:73 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atanf_f_1_1}[r0x104E r0x104F r0x1050 r0x1051 ]{argreg = 1}
;[ICODE] atanf.c:61: 	iTemp9 [k16 lr30:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1052 r0x1053 r0x1054 r0x1055 ] = call ___fsadd [k50 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVF	r0x1019,W
	MOVWF	STK06
	MOVF	r0x1018,W
	MOVWF	STK05
	MOVF	r0x1017,W
	MOVWF	STK04
	MOVF	r0x1016,W
	MOVWF	STK03
	MOVF	r0x101A,W
	MOVWF	STK02
	MOVF	r0x101D,W
	MOVWF	STK01
	MOVF	r0x101C,W
	MOVWF	STK00
	MOVF	r0x101B,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x101B
	MOVWF	r0x101B
	MOVF	STK00,W
	MOVWF	r0x101C
	MOVF	STK01,W
	MOVWF	r0x101D
	MOVF	STK02,W
	MOVWF	r0x101A
;[ICODE] atanf.c:61: 	send iTemp2 [k6 lr6:73 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atanf_f_1_1}[r0x104E r0x104F r0x1050 r0x1051 ]{argreg = 1}
;[ICODE] atanf.c:61: 	send 1.73205 {const-float literal}{argreg = 1}
;[ICODE] atanf.c:61: 	iTemp10 [k17 lr33:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1056 r0x1057 r0x1058 r0x1059 ] = call ___fsadd [k50 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVLW	0xd7
	MOVWF	STK06
	MOVLW	0xb3
	MOVWF	STK05
	MOVLW	0xdd
	MOVWF	STK04
	MOVLW	0x3f
	MOVWF	STK03
	MOVF	r0x1019,W
	MOVWF	STK02
	MOVF	r0x1018,W
	MOVWF	STK01
	MOVF	r0x1017,W
	MOVWF	STK00
	MOVF	r0x1016,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x101E
	MOVWF	r0x101E
	MOVF	STK00,W
	MOVWF	r0x101F
	MOVF	STK01,W
	MOVWF	r0x1020
	MOVF	STK02,W
	MOVWF	r0x1021
	MOVWF	STK06
	MOVF	r0x1020,W
	MOVWF	STK05
	MOVF	r0x101F,W
	MOVWF	STK04
	MOVF	r0x101E,W
	MOVWF	STK03
	MOVF	r0x101A,W
	MOVWF	STK02
	MOVF	r0x101D,W
	MOVWF	STK01
	MOVF	r0x101C,W
	MOVWF	STK00
	MOVF	r0x101B,W
	PAGESEL	___fsdiv
	CALL	___fsdiv
	PAGESEL	$
	BANKSEL	r0x1016
	MOVWF	r0x1016
	MOVF	STK00,W
	MOVWF	r0x1017
	MOVF	STK01,W
	MOVWF	r0x1018
	MOVF	STK02,W
	MOVWF	r0x1019
;[ICODE] atanf.c:65: 	iTemp1 [k4 lr4:84 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ _atanf_n_1_1}[r0x104C r0x104D ] = iTemp1 [k4 lr4:84 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ _atanf_n_1_1}[r0x104C r0x104D ] + 0x1 {const-unsigned-char literal}
;	.line	65; "atanf.c"	n++;
	INCF	r0x1014,F
	BTFSC	STATUS,2
	INCF	r0x1015,F
;[ICODE] atanf.c:65:  _iffalse_1($4) :
;[ICODE] atanf.c:67: 	send iTemp2 [k6 lr6:73 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atanf_f_1_1}[r0x104E r0x104F r0x1050 r0x1051 ]{argreg = 1}
;[ICODE] atanf.c:67: 	iTemp14 [k21 lr42:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1052 r0x1053 r0x1054 r0x1055 ] = call _fabsf [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed)  fixed}
_00108_DS_
;	.line	67; "atanf.c"	if(fabsf(f)<EPS) r=f;
	BANKSEL	r0x1019
	MOVF	r0x1019,W
	MOVWF	STK02
	MOVF	r0x1018,W
	MOVWF	STK01
	MOVF	r0x1017,W
	MOVWF	STK00
	MOVF	r0x1016,W
	PAGESEL	_fabsf
	CALL	_fabsf
	PAGESEL	$
	BANKSEL	r0x101B
	MOVWF	r0x101B
	MOVF	STK00,W
	MOVWF	r0x101C
	MOVF	STK01,W
	MOVWF	r0x101D
	MOVF	STK02,W
	MOVWF	r0x101A
;[ICODE] atanf.c:67: 	send iTemp14 [k21 lr42:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1052 r0x1053 r0x1054 r0x1055 ]{argreg = 1}
;[ICODE] atanf.c:67: 	send 0.000244141 {const-float literal}{argreg = 1}
;[ICODE] atanf.c:67: 	iTemp15 [k22 lr45:46 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1052 ] = call ___fslt [k51 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float fixed, float fixed)  fixed}
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x80
	MOVWF	STK04
	MOVLW	0x39
	MOVWF	STK03
	MOVF	r0x101A,W
	MOVWF	STK02
	MOVF	r0x101D,W
	MOVWF	STK01
	MOVF	r0x101C,W
	MOVWF	STK00
	MOVF	r0x101B,W
	PAGESEL	___fslt
	CALL	___fslt
	PAGESEL	$
	BANKSEL	r0x101A
	MOVWF	r0x101A
;[ICODE] atanf.c:67: 	if iTemp15 [k22 lr45:46 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1052 ] == 0 goto _iffalse_2($6)
	MOVF	r0x101A,W
	BTFSC	STATUS,2
	GOTO	_00110_DS_
;[ICODE] atanf.c:67: 	iTemp16 [k23 lr47:99 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atanf_r_1_1}[r0x1052 r0x1053 r0x1054 r0x1055 ] := iTemp2 [k6 lr6:73 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atanf_f_1_1}[r0x104E r0x104F r0x1050 r0x1051 ]
	MOVF	r0x1019,W
	MOVWF	r0x101A
	MOVF	r0x1018,W
	MOVWF	r0x101D
	MOVF	r0x1017,W
	MOVWF	r0x101C
	MOVF	r0x1016,W
	MOVWF	r0x101B
;[ICODE] atanf.c:67: 	 goto _ifend_2($7)
	GOTO	_00111_DS_
;[ICODE] atanf.c:67:  _iffalse_2($6) :
;[ICODE] atanf.c:70: 	send iTemp2 [k6 lr6:73 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atanf_f_1_1}[r0x104E r0x104F r0x1050 r0x1051 ]{argreg = 1}
;[ICODE] atanf.c:70: 	send iTemp2 [k6 lr6:73 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atanf_f_1_1}[r0x104E r0x104F r0x1050 r0x1051 ]{argreg = 1}
;[ICODE] atanf.c:70: 	iTemp17 [k25 lr52:67 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atanf_g_1_1}[r0x1056 r0x1057 r0x1058 r0x1059 ] = call ___fsmul [k48 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
_00110_DS_
;	.line	70; "atanf.c"	g=f*f;
	BANKSEL	r0x1019
	MOVF	r0x1019,W
	MOVWF	STK06
	MOVF	r0x1018,W
	MOVWF	STK05
	MOVF	r0x1017,W
	MOVWF	STK04
	MOVF	r0x1016,W
	MOVWF	STK03
	MOVF	r0x1019,W
	MOVWF	STK02
	MOVF	r0x1018,W
	MOVWF	STK01
	MOVF	r0x1017,W
	MOVWF	STK00
	MOVF	r0x1016,W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x101E
	MOVWF	r0x101E
	MOVF	STK00,W
	MOVWF	r0x101F
	MOVF	STK01,W
	MOVWF	r0x1020
	MOVF	STK02,W
;	.line	71; "atanf.c"	r=f+P(g,f)/Q(g);
	MOVWF	r0x1021
	MOVWF	STK06
	MOVF	r0x1020,W
	MOVWF	STK05
	MOVF	r0x101F,W
	MOVWF	STK04
	MOVF	r0x101E,W
	MOVWF	STK03
	MOVLW	0x91
	MOVWF	STK02
	MOVLW	0x86
	MOVWF	STK01
	MOVLW	0x50
	MOVWF	STK00
	MOVLW	0xbd
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x1022
	MOVWF	r0x1022
	MOVF	STK00,W
	MOVWF	r0x1023
	MOVF	STK01,W
	MOVWF	r0x1024
	MOVF	STK02,W
	MOVWF	r0x1025
;[ICODE] atanf.c:71: 	send iTemp19 [k28 lr56:58 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x105A r0x105B r0x105C r0x105D ]{argreg = 1}
;[ICODE] atanf.c:71: 	send -0.470833 {const-float literal}{argreg = 1}
;[ICODE] atanf.c:71: 	iTemp20 [k29 lr59:61 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x105A r0x105B r0x105C r0x105D ] = call ___fsadd [k50 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVLW	0xf6
	MOVWF	STK06
	MOVLW	0x10
	MOVWF	STK05
	MOVLW	0xf1
	MOVWF	STK04
	MOVLW	0xbe
	MOVWF	STK03
	MOVF	r0x1025,W
	MOVWF	STK02
	MOVF	r0x1024,W
	MOVWF	STK01
	MOVF	r0x1023,W
	MOVWF	STK00
	MOVF	r0x1022,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x1022
	MOVWF	r0x1022
	MOVF	STK00,W
	MOVWF	r0x1023
	MOVF	STK01,W
	MOVWF	r0x1024
	MOVF	STK02,W
	MOVWF	r0x1025
;[ICODE] atanf.c:71: 	send iTemp20 [k29 lr59:61 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x105A r0x105B r0x105C r0x105D ]{argreg = 1}
;[ICODE] atanf.c:71: 	send iTemp17 [k25 lr52:67 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atanf_g_1_1}[r0x1056 r0x1057 r0x1058 r0x1059 ]{argreg = 1}
;[ICODE] atanf.c:71: 	iTemp21 [k30 lr62:64 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x105A r0x105B r0x105C r0x105D ] = call ___fsmul [k48 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVF	r0x1021,W
	MOVWF	STK06
	MOVF	r0x1020,W
	MOVWF	STK05
	MOVF	r0x101F,W
	MOVWF	STK04
	MOVF	r0x101E,W
	MOVWF	STK03
	MOVF	r0x1025,W
	MOVWF	STK02
	MOVF	r0x1024,W
	MOVWF	STK01
	MOVF	r0x1023,W
	MOVWF	STK00
	MOVF	r0x1022,W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x1022
	MOVWF	r0x1022
	MOVF	STK00,W
	MOVWF	r0x1023
	MOVF	STK01,W
	MOVWF	r0x1024
	MOVF	STK02,W
	MOVWF	r0x1025
;[ICODE] atanf.c:71: 	send iTemp21 [k30 lr62:64 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x105A r0x105B r0x105C r0x105D ]{argreg = 1}
;[ICODE] atanf.c:71: 	send iTemp2 [k6 lr6:73 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atanf_f_1_1}[r0x104E r0x104F r0x1050 r0x1051 ]{argreg = 1}
;[ICODE] atanf.c:71: 	iTemp22 [k31 lr65:70 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x105A r0x105B r0x105C r0x105D ] = call ___fsmul [k48 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVF	r0x1019,W
	MOVWF	STK06
	MOVF	r0x1018,W
	MOVWF	STK05
	MOVF	r0x1017,W
	MOVWF	STK04
	MOVF	r0x1016,W
	MOVWF	STK03
	MOVF	r0x1025,W
	MOVWF	STK02
	MOVF	r0x1024,W
	MOVWF	STK01
	MOVF	r0x1023,W
	MOVWF	STK00
	MOVF	r0x1022,W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x1022
	MOVWF	r0x1022
	MOVF	STK00,W
	MOVWF	r0x1023
	MOVF	STK01,W
	MOVWF	r0x1024
	MOVF	STK02,W
	MOVWF	r0x1025
;[ICODE] atanf.c:71: 	send iTemp17 [k25 lr52:67 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atanf_g_1_1}[r0x1056 r0x1057 r0x1058 r0x1059 ]{argreg = 1}
;[ICODE] atanf.c:71: 	send 1.4125 {const-float literal}{argreg = 1}
;[ICODE] atanf.c:71: 	iTemp24 [k33 lr68:70 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1056 r0x1057 r0x1058 r0x1059 ] = call ___fsadd [k50 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVLW	0xd3
	MOVWF	STK06
	MOVLW	0xcc
	MOVWF	STK05
	MOVLW	0xb4
	MOVWF	STK04
	MOVLW	0x3f
	MOVWF	STK03
	MOVF	r0x1021,W
	MOVWF	STK02
	MOVF	r0x1020,W
	MOVWF	STK01
	MOVF	r0x101F,W
	MOVWF	STK00
	MOVF	r0x101E,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x101E
	MOVWF	r0x101E
	MOVF	STK00,W
	MOVWF	r0x101F
	MOVF	STK01,W
	MOVWF	r0x1020
	MOVF	STK02,W
	MOVWF	r0x1021
	MOVWF	STK06
	MOVF	r0x1020,W
	MOVWF	STK05
	MOVF	r0x101F,W
	MOVWF	STK04
	MOVF	r0x101E,W
	MOVWF	STK03
	MOVF	r0x1025,W
	MOVWF	STK02
	MOVF	r0x1024,W
	MOVWF	STK01
	MOVF	r0x1023,W
	MOVWF	STK00
	MOVF	r0x1022,W
	PAGESEL	___fsdiv
	CALL	___fsdiv
	PAGESEL	$
	BANKSEL	r0x101E
	MOVWF	r0x101E
	MOVF	STK00,W
	MOVWF	r0x101F
	MOVF	STK01,W
	MOVWF	r0x1020
	MOVF	STK02,W
	MOVWF	r0x1021
	MOVWF	STK06
	MOVF	r0x1020,W
	MOVWF	STK05
	MOVF	r0x101F,W
	MOVWF	STK04
	MOVF	r0x101E,W
	MOVWF	STK03
	MOVF	r0x1019,W
	MOVWF	STK02
	MOVF	r0x1018,W
	MOVWF	STK01
	MOVF	r0x1017,W
	MOVWF	STK00
	MOVF	r0x1016,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x101B
	MOVWF	r0x101B
	MOVF	STK00,W
	MOVWF	r0x101C
	MOVF	STK01,W
	MOVWF	r0x101D
	MOVF	STK02,W
	MOVWF	r0x101A
;[ICODE] atanf.c:71:  _ifend_2($7) :
;[ICODE] atanf.c:73: 	iTemp27 [k36 lr77:78 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp1 [k4 lr4:84 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ _atanf_n_1_1}[r0x104C r0x104D ] > 0x1 {int literal}
;swapping arguments (AOP_TYPEs 1/2)
;signed compare: left >= lit(0x2=2), size=2, mask=ffff
_00111_DS_
;	.line	73; "atanf.c"	if(n>1) r=-r;
	BANKSEL	r0x1015
	MOVF	r0x1015,W
	ADDLW	0x80
	ADDLW	0x80
	BTFSS	STATUS,2
	GOTO	_00123_DS_
	MOVLW	0x02
	SUBWF	r0x1014,W
_00123_DS_
	BTFSS	STATUS,0
	GOTO	_00113_DS_
;genSkipc:3057: created from rifx:0xbf952924
;[ICODE] atanf.c:73: 	if iTemp27 [k36 lr77:78 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_3($9)
;[ICODE] atanf.c:73: 	iTemp16 [k23 lr47:99 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atanf_r_1_1}[r0x1052 r0x1053 r0x1054 r0x1055 ] = - iTemp16 [k23 lr47:99 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atanf_r_1_1}[r0x1052 r0x1053 r0x1054 r0x1055 ]
	BANKSEL	r0x101B
	MOVF	r0x101B,W
	XORLW	0x80
	MOVWF	r0x101B
	MOVF	r0x101C,W
	MOVF	r0x101D,W
	MOVF	r0x101A,W
_00113_DS_
;	.line	74; "atanf.c"	r+=a[n];
	BANKSEL	r0x1014
	MOVF	r0x1014,W
	MOVWF	STK02
	MOVF	r0x1015,W
	MOVWF	STK01
	MOVLW	0x04
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	__mulint
	CALL	__mulint
	PAGESEL	$
	BANKSEL	r0x1015
	MOVWF	r0x1015
	MOVF	STK00,W
	MOVWF	r0x1014
	ADDLW	(_atanf_a_1_1 + 0)
	MOVWF	r0x1014
	MOVF	r0x1015,W
	BTFSC	STATUS,0
	INCFSZ	r0x1015,W
	ADDLW	high (_atanf_a_1_1 + 0)
	MOVWF	r0x1015
;[ICODE] atanf.c:74: 	iTemp32 [k42 lr87:89 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{float fixed}[r0x104E r0x104F r0x1050 r0x1051 ] = @[iTemp31 [k41 lr86:87 so:0]{ ia1 a2p0 re0 rm0 nos0 ru1 dp0}{float near* fixed}[r0x104C r0x104D ]]
	MOVF	r0x1014,W
	MOVWF	FSR
	BCF	STATUS,7
	BTFSC	r0x1015,0
	BSF	STATUS,7
	MOVF	INDF,W
	MOVWF	r0x1019
	INCF	FSR,F
	MOVF	INDF,W
	MOVWF	r0x1018
	INCF	FSR,F
	MOVF	INDF,W
	MOVWF	r0x1017
	INCF	FSR,F
	MOVF	INDF,W
	MOVWF	r0x1016
;[ICODE] atanf.c:74: 	send iTemp16 [k23 lr47:99 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atanf_r_1_1}[r0x1052 r0x1053 r0x1054 r0x1055 ]{argreg = 1}
;[ICODE] atanf.c:74: 	send iTemp32 [k42 lr87:89 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{float fixed}[r0x104E r0x104F r0x1050 r0x1051 ]{argreg = 1}
;[ICODE] atanf.c:74: 	iTemp16 [k23 lr47:99 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atanf_r_1_1}[r0x1052 r0x1053 r0x1054 r0x1055 ] = call ___fsadd [k50 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVF	r0x1019,W
	MOVWF	STK06
	MOVF	r0x1018,W
	MOVWF	STK05
	MOVF	r0x1017,W
	MOVWF	STK04
	MOVF	r0x1016,W
	MOVWF	STK03
	MOVF	r0x101A,W
	MOVWF	STK02
	MOVF	r0x101D,W
	MOVWF	STK01
	MOVF	r0x101C,W
	MOVWF	STK00
	MOVF	r0x101B,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x101B
	MOVWF	r0x101B
	MOVF	STK00,W
	MOVWF	r0x101C
	MOVF	STK01,W
	MOVWF	r0x101D
	MOVF	STK02,W
	MOVWF	r0x101A
;[ICODE] atanf.c:75: 	send iTemp0 [k2 lr3:93 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _atanf_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]{argreg = 1}
;[ICODE] atanf.c:75: 	send 0 {const-float literal}{argreg = 1}
;[ICODE] atanf.c:75: 	iTemp34 [k44 lr94:95 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1048 ] = call ___fslt [k51 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float fixed, float fixed)  fixed}
;	.line	75; "atanf.c"	if(x<0.0) r=-r;
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x00
	MOVWF	STK04
	MOVLW	0x00
	MOVWF	STK03
	MOVF	r0x1013,W
	MOVWF	STK02
	MOVF	r0x1012,W
	MOVWF	STK01
	MOVF	r0x1011,W
	MOVWF	STK00
	MOVF	r0x1010,W
	PAGESEL	___fslt
	CALL	___fslt
	PAGESEL	$
	BANKSEL	r0x1013
	MOVWF	r0x1013
;[ICODE] atanf.c:75: 	if iTemp34 [k44 lr94:95 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1048 ] == 0 goto _iffalse_4($11)
	MOVF	r0x1013,W
	BTFSC	STATUS,2
	GOTO	_00115_DS_
;[ICODE] atanf.c:75: 	iTemp16 [k23 lr47:99 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atanf_r_1_1}[r0x1052 r0x1053 r0x1054 r0x1055 ] = - iTemp16 [k23 lr47:99 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atanf_r_1_1}[r0x1052 r0x1053 r0x1054 r0x1055 ]
	MOVF	r0x101B,W
	XORLW	0x80
	MOVWF	r0x101B
	MOVF	r0x101C,W
	MOVF	r0x101D,W
	MOVF	r0x101A,W
_00115_DS_
;	.line	76; "atanf.c"	return r;
	BANKSEL	r0x101A
	MOVF	r0x101A,W
	MOVWF	STK02
	MOVF	r0x101D,W
	MOVWF	STK01
	MOVF	r0x101C,W
	MOVWF	STK00
	MOVF	r0x101B,W
;[ICODE] atanf.c:76:  _return($12) :
;[ICODE] atanf.c:76: 	eproc _atanf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed)  fixed}
	RETURN	
; exit point of _atanf


;	code size estimation:
;	  538+   74 =   612 instructions ( 1372 byte)

	end
