;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6064 (Nov 22 2010) (Linux)
; This file was generated Mon Nov 22 22:55:46 2010
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"tancotf.c"
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
	extern	___fsgt
	extern	___fsmul
	extern	___fsadd
	extern	___fs2sint
	extern	___sint2fs
	extern	___fssub
	extern	___fslt
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
	global	_tancotf

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_tancotf_0	udata
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
r0x100E	res	1
r0x100F	res	1
r0x1011	res	1
r0x1010	res	1
r0x1015	res	1
r0x1014	res	1
r0x1013	res	1
r0x1012	res	1
r0x1019	res	1
r0x1018	res	1
r0x1017	res	1
r0x1016	res	1
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
code_tancotf	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _tancotf	;Function start
; 2 exit points
;has an exit
;functions called:
;   _fabsf
;   ___fsgt
;   ___fsmul
;   ___fsgt
;   ___fsadd
;   ___fs2sint
;   ___sint2fs
;   ___fs2sint
;   ___sint2fs
;   ___fssub
;   ___fsmul
;   ___fssub
;   ___fsadd
;   ___fsmul
;   ___fssub
;   _fabsf
;   ___fslt
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsadd
;   ___fsmul
;   ___fsadd
;   ___fsmul
;   ___fsadd
;   ___fsdiv
;   ___fsdiv
;   ___fsdiv
;   ___fsdiv
;   _fabsf
;   ___fsgt
;   ___fsmul
;   ___fsgt
;   ___fsadd
;   ___fs2sint
;   ___sint2fs
;   ___fs2sint
;   ___sint2fs
;   ___fssub
;   ___fsmul
;   ___fssub
;   ___fsadd
;   ___fsmul
;   ___fssub
;   _fabsf
;   ___fslt
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsadd
;   ___fsmul
;   ___fsadd
;   ___fsmul
;   ___fsadd
;   ___fsdiv
;   ___fsdiv
;   ___fsdiv
;   ___fsdiv
;31 compiler assigned registers:
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
;   r0x1013
;   r0x1014
;   r0x1015
;   r0x1016
;   r0x1017
;   r0x1018
;   r0x1019
;; Starting pCode block
;[ICODE] tancotf.c:50:  _entry($16) :
;[ICODE] tancotf.c:50: 	proc _tancotf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed, const-int fixed)  fixed}
_tancotf	;Function start
; 2 exit points
;[ICODE] tancotf.c:50: iTemp0 [k2 lr3:41 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _tancotf_x_1_1}[r0x1049 r0x104A r0x104B r0x104C ] = recv _tancotf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed, const-int fixed)  fixed}
;	.line	50; "tancotf.c"	float tancotf(const float x, const int iscotan)
	BANKSEL	r0x1002
	MOVWF	r0x1002
	MOVF	STK00,W
	MOVWF	r0x1003
	MOVF	STK01,W
	MOVWF	r0x1004
	MOVF	STK02,W
	MOVWF	r0x1005
;[ICODE] tancotf.c:50: iTemp1 [k4 lr4:113 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-int fixed}{ sir@ _tancotf_iscotan_1_1}[r0x104D r0x104E ] = recv _tancotf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed, const-int fixed)  fixed}
	MOVF	STK03,W
	MOVWF	r0x1006
	MOVF	STK04,W
	MOVWF	r0x1007
;[ICODE] tancotf.c:55: 	send iTemp0 [k2 lr3:41 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _tancotf_x_1_1}[r0x1049 r0x104A r0x104B r0x104C ]{argreg = 1}
;[ICODE] tancotf.c:55: 	iTemp2 [k8 lr6:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x104F r0x1050 r0x1051 r0x1052 ] = call _fabsf [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed)  fixed}
;	.line	55; "tancotf.c"	if (fabsf(x) > YMAX)
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
;[ICODE] tancotf.c:55: 	send iTemp2 [k8 lr6:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x104F r0x1050 r0x1051 r0x1052 ]{argreg = 1}
;[ICODE] tancotf.c:55: 	send 6433 {const-float literal}{argreg = 1}
;[ICODE] tancotf.c:55: 	iTemp3 [k9 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x104F ] = call ___fsgt [k55 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float fixed, float fixed)  fixed}
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x08
	MOVWF	STK05
	MOVLW	0xc9
	MOVWF	STK04
	MOVLW	0x45
	MOVWF	STK03
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
	BANKSEL	r0x100B
	MOVWF	r0x100B
;[ICODE] tancotf.c:55: 	if iTemp3 [k9 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x104F ] == 0 goto _iffalse_0($2)
	MOVF	r0x100B,W
	BTFSC	STATUS,2
	GOTO	_00106_DS_
;[ICODE] tancotf.c:57: 	_errno [k10 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed} := 0x22 {int literal}
;	.line	57; "tancotf.c"	errno = ERANGE;
	MOVLW	0x22
	BANKSEL	_errno
	MOVWF	_errno
	CLRF	(_errno + 1)
;[ICODE] tancotf.c:58: 	ret 0 {const-float literal}
;	.line	58; "tancotf.c"	return 0.0;
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x00
	GOTO	_00119_DS_
;[ICODE] tancotf.c:58:  _iffalse_0($2) :
;[ICODE] tancotf.c:62: 	send 0.63662 {const-float literal}{argreg = 1}
;[ICODE] tancotf.c:62: 	send iTemp0 [k2 lr3:41 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _tancotf_x_1_1}[r0x1049 r0x104A r0x104B r0x104C ]{argreg = 1}
;[ICODE] tancotf.c:62: 	iTemp6 [k14 lr16:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x104F r0x1050 r0x1051 r0x1052 ] = call ___fsmul [k56 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
_00106_DS_
;	.line	62; "tancotf.c"	n=(x*TWO_O_PI+(x>0.0?0.5:-0.5)); /*works for +-x*/
	BANKSEL	r0x1005
	MOVF	r0x1005,W
	MOVWF	STK06
	MOVF	r0x1004,W
	MOVWF	STK05
	MOVF	r0x1003,W
	MOVWF	STK04
	MOVF	r0x1002,W
	MOVWF	STK03
	MOVLW	0x83
	MOVWF	STK02
	MOVLW	0xf9
	MOVWF	STK01
	MOVLW	0x22
	MOVWF	STK00
	MOVLW	0x3f
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x1008
	MOVWF	r0x1008
	MOVF	STK00,W
	MOVWF	r0x1009
	MOVF	STK01,W
	MOVWF	r0x100A
	MOVF	STK02,W
	MOVWF	r0x100B
;[ICODE] tancotf.c:62: 	send iTemp0 [k2 lr3:41 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _tancotf_x_1_1}[r0x1049 r0x104A r0x104B r0x104C ]{argreg = 1}
;[ICODE] tancotf.c:62: 	send 0 {const-float literal}{argreg = 1}
;[ICODE] tancotf.c:62: 	iTemp7 [k15 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1053 ] = call ___fsgt [k55 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float fixed, float fixed)  fixed}
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
	PAGESEL	___fsgt
	CALL	___fsgt
	PAGESEL	$
	BANKSEL	r0x100C
	MOVWF	r0x100C
;[ICODE] tancotf.c:62: 	if iTemp7 [k15 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1053 ] == 0 goto iTempLbl0($17)
	MOVF	r0x100C,W
	BTFSC	STATUS,2
	GOTO	_00121_DS_
;[ICODE] tancotf.c:62: 	iTemp8 [k16 lr21:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1053 r0x1054 r0x1055 r0x1056 ] := 0.5 {const-float literal}
	CLRF	r0x100C
	CLRF	r0x100D
	CLRF	r0x100E
	MOVLW	0x3f
	MOVWF	r0x100F
;[ICODE] tancotf.c:62: 	 goto iTempLbl1($18)
	GOTO	_00122_DS_
;[ICODE] tancotf.c:62:  iTempLbl0($17) :
;[ICODE] tancotf.c:62: 	iTemp8 [k16 lr21:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1053 r0x1054 r0x1055 r0x1056 ] := -0.5 {const-float literal}
_00121_DS_
	BANKSEL	r0x100C
	CLRF	r0x100C
	CLRF	r0x100D
	CLRF	r0x100E
	MOVLW	0xbf
	MOVWF	r0x100F
;[ICODE] tancotf.c:62:  iTempLbl1($18) :
;[ICODE] tancotf.c:62: 	send iTemp6 [k14 lr16:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x104F r0x1050 r0x1051 r0x1052 ]{argreg = 1}
;[ICODE] tancotf.c:62: 	send iTemp8 [k16 lr21:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1053 r0x1054 r0x1055 r0x1056 ]{argreg = 1}
;[ICODE] tancotf.c:62: 	iTemp9 [k17 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x104F r0x1050 r0x1051 r0x1052 ] = call ___fsadd [k57 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
_00122_DS_
	BANKSEL	r0x100C
	MOVF	r0x100C,W
	MOVWF	STK06
	MOVF	r0x100D,W
	MOVWF	STK05
	MOVF	r0x100E,W
	MOVWF	STK04
	MOVF	r0x100F,W
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
	MOVWF	STK02
	MOVF	r0x100A,W
	MOVWF	STK01
	MOVF	r0x1009,W
	MOVWF	STK00
	MOVF	r0x1008,W
	PAGESEL	___fs2sint
	CALL	___fs2sint
	PAGESEL	$
	BANKSEL	r0x100A
	MOVWF	r0x100A
	MOVF	STK00,W
;	.line	63; "tancotf.c"	xn=n;
	MOVWF	r0x100B
	MOVWF	STK00
	MOVF	r0x100A,W
	PAGESEL	___sint2fs
	CALL	___sint2fs
	PAGESEL	$
	BANKSEL	r0x100D
	MOVWF	r0x100D
	MOVF	STK00,W
	MOVWF	r0x100C
	MOVF	STK01,W
	MOVWF	r0x1008
	MOVF	STK02,W
	MOVWF	r0x1009
;[ICODE] tancotf.c:65: 	send iTemp0 [k2 lr3:41 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _tancotf_x_1_1}[r0x1049 r0x104A r0x104B r0x104C ]{argreg = 1}
;[ICODE] tancotf.c:65: 	iTemp14 [k24 lr36:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x1055 r0x1056 ] = call ___fs2sint [k58 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( float fixed)  fixed}
;	.line	65; "tancotf.c"	xnum=(int)x;
	MOVF	r0x1005,W
	MOVWF	STK02
	MOVF	r0x1004,W
	MOVWF	STK01
	MOVF	r0x1003,W
	MOVWF	STK00
	MOVF	r0x1002,W
	PAGESEL	___fs2sint
	CALL	___fs2sint
	PAGESEL	$
	BANKSEL	r0x100F
	MOVWF	r0x100F
	MOVF	STK00,W
	MOVWF	r0x100E
	MOVWF	STK00
	MOVF	r0x100F,W
	PAGESEL	___sint2fs
	CALL	___sint2fs
	PAGESEL	$
	BANKSEL	r0x1010
	MOVWF	r0x1010
	MOVF	STK00,W
	MOVWF	r0x1011
	MOVF	STK01,W
	MOVWF	r0x100F
	MOVF	STK02,W
;	.line	66; "tancotf.c"	xden=x-xnum;
	MOVWF	r0x100E
	MOVWF	STK06
	MOVF	r0x100F,W
	MOVWF	STK05
	MOVF	r0x1011,W
	MOVWF	STK04
	MOVF	r0x1010,W
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
	BANKSEL	r0x1002
	MOVWF	r0x1002
	MOVF	STK00,W
	MOVWF	r0x1003
	MOVF	STK01,W
	MOVWF	r0x1004
	MOVF	STK02,W
	MOVWF	r0x1005
;[ICODE] tancotf.c:67: 	send 1.57031 {const-float literal}{argreg = 1}
;[ICODE] tancotf.c:67: 	send iTemp11 [k19 lr33:54 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _tancotf_xn_1_1}[r0x1051 r0x1052 r0x1053 r0x1054 ]{argreg = 1}
;[ICODE] tancotf.c:67: 	iTemp19 [k31 lr46:48 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1059 r0x105A r0x105B r0x105C ] = call ___fsmul [k56 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
;	.line	67; "tancotf.c"	f=((xnum-xn*C1)+xden)-xn*C2;
	MOVF	r0x1009,W
	MOVWF	STK06
	MOVF	r0x1008,W
	MOVWF	STK05
	MOVF	r0x100C,W
	MOVWF	STK04
	MOVF	r0x100D,W
	MOVWF	STK03
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0xc9
	MOVWF	STK00
	MOVLW	0x3f
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x1012
	MOVWF	r0x1012
	MOVF	STK00,W
	MOVWF	r0x1013
	MOVF	STK01,W
	MOVWF	r0x1014
	MOVF	STK02,W
	MOVWF	r0x1015
	MOVWF	STK06
	MOVF	r0x1014,W
	MOVWF	STK05
	MOVF	r0x1013,W
	MOVWF	STK04
	MOVF	r0x1012,W
	MOVWF	STK03
	MOVF	r0x100E,W
	MOVWF	STK02
	MOVF	r0x100F,W
	MOVWF	STK01
	MOVF	r0x1011,W
	MOVWF	STK00
	MOVF	r0x1010,W
	PAGESEL	___fssub
	CALL	___fssub
	PAGESEL	$
	BANKSEL	r0x1012
	MOVWF	r0x1012
	MOVF	STK00,W
	MOVWF	r0x1013
	MOVF	STK01,W
	MOVWF	r0x1014
	MOVF	STK02,W
	MOVWF	r0x1015
;[ICODE] tancotf.c:67: 	send iTemp20 [k32 lr49:51 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1059 r0x105A r0x105B r0x105C ]{argreg = 1}
;[ICODE] tancotf.c:67: 	send iTemp16 [k26 lr42:120 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _tancotf_xden_1_1}[r0x1049 r0x104A r0x104B r0x104C ]{argreg = 1}
;[ICODE] tancotf.c:67: 	iTemp21 [k33 lr52:57 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1059 r0x105A r0x105B r0x105C ] = call ___fsadd [k57 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVF	r0x1005,W
	MOVWF	STK06
	MOVF	r0x1004,W
	MOVWF	STK05
	MOVF	r0x1003,W
	MOVWF	STK04
	MOVF	r0x1002,W
	MOVWF	STK03
	MOVF	r0x1015,W
	MOVWF	STK02
	MOVF	r0x1014,W
	MOVWF	STK01
	MOVF	r0x1013,W
	MOVWF	STK00
	MOVF	r0x1012,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x1012
	MOVWF	r0x1012
	MOVF	STK00,W
	MOVWF	r0x1013
	MOVF	STK01,W
	MOVWF	r0x1014
	MOVF	STK02,W
	MOVWF	r0x1015
;[ICODE] tancotf.c:67: 	send 0.000483827 {const-float literal}{argreg = 1}
;[ICODE] tancotf.c:67: 	send iTemp11 [k19 lr33:54 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _tancotf_xn_1_1}[r0x1051 r0x1052 r0x1053 r0x1054 ]{argreg = 1}
;[ICODE] tancotf.c:67: 	iTemp22 [k34 lr55:57 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1051 r0x1052 r0x1053 r0x1054 ] = call ___fsmul [k56 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVF	r0x1009,W
	MOVWF	STK06
	MOVF	r0x1008,W
	MOVWF	STK05
	MOVF	r0x100C,W
	MOVWF	STK04
	MOVF	r0x100D,W
	MOVWF	STK03
	MOVLW	0x22
	MOVWF	STK02
	MOVLW	0xaa
	MOVWF	STK01
	MOVLW	0xfd
	MOVWF	STK00
	MOVLW	0x39
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x100D
	MOVWF	r0x100D
	MOVF	STK00,W
	MOVWF	r0x100C
	MOVF	STK01,W
	MOVWF	r0x1008
	MOVF	STK02,W
	MOVWF	r0x1009
	MOVWF	STK06
	MOVF	r0x1008,W
	MOVWF	STK05
	MOVF	r0x100C,W
	MOVWF	STK04
	MOVF	r0x100D,W
	MOVWF	STK03
	MOVF	r0x1015,W
	MOVWF	STK02
	MOVF	r0x1014,W
	MOVWF	STK01
	MOVF	r0x1013,W
	MOVWF	STK00
	MOVF	r0x1012,W
	PAGESEL	___fssub
	CALL	___fssub
	PAGESEL	$
	BANKSEL	r0x100D
	MOVWF	r0x100D
	MOVF	STK00,W
	MOVWF	r0x100C
	MOVF	STK01,W
	MOVWF	r0x1008
	MOVF	STK02,W
;	.line	69; "tancotf.c"	if (fabsf(f) < EPS)
	MOVWF	r0x1009
	MOVWF	STK02
	MOVF	r0x1008,W
	MOVWF	STK01
	MOVF	r0x100C,W
	MOVWF	STK00
	MOVF	r0x100D,W
	PAGESEL	_fabsf
	CALL	_fabsf
	PAGESEL	$
	BANKSEL	r0x1012
	MOVWF	r0x1012
	MOVF	STK00,W
	MOVWF	r0x1013
	MOVF	STK01,W
	MOVWF	r0x1014
	MOVF	STK02,W
	MOVWF	r0x1015
;[ICODE] tancotf.c:69: 	send iTemp24 [k36 lr61:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1059 r0x105A r0x105B r0x105C ]{argreg = 1}
;[ICODE] tancotf.c:69: 	send 0.000244141 {const-float literal}{argreg = 1}
;[ICODE] tancotf.c:69: 	iTemp25 [k37 lr64:65 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1059 ] = call ___fslt [k61 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float fixed, float fixed)  fixed}
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x80
	MOVWF	STK04
	MOVLW	0x39
	MOVWF	STK03
	MOVF	r0x1015,W
	MOVWF	STK02
	MOVF	r0x1014,W
	MOVWF	STK01
	MOVF	r0x1013,W
	MOVWF	STK00
	MOVF	r0x1012,W
	PAGESEL	___fslt
	CALL	___fslt
	PAGESEL	$
	BANKSEL	r0x1015
	MOVWF	r0x1015
;[ICODE] tancotf.c:69: 	if iTemp25 [k37 lr64:65 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1059 ] == 0 goto _iffalse_1($4)
	MOVF	r0x1015,W
	BTFSC	STATUS,2
	GOTO	_00108_DS_
;[ICODE] tancotf.c:71: 	iTemp13 [k22 lr38:120 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _tancotf_xnum_1_1}[r0x1055 r0x1056 r0x1057 r0x1058 ] := iTemp18 [k29 lr58:81 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _tancotf_f_1_1}[r0x1051 r0x1052 r0x1053 r0x1054 ]
;	.line	71; "tancotf.c"	xnum = f;
	MOVF	r0x1009,W
	MOVWF	r0x100E
	MOVF	r0x1008,W
	MOVWF	r0x100F
	MOVF	r0x100C,W
	MOVWF	r0x1011
	MOVF	r0x100D,W
	MOVWF	r0x1010
;[ICODE] tancotf.c:72: 	iTemp16 [k26 lr42:120 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _tancotf_xden_1_1}[r0x1049 r0x104A r0x104B r0x104C ] := 1 {const-float literal}
;	.line	72; "tancotf.c"	xden = 1.0;
	CLRF	r0x1005
	CLRF	r0x1004
	MOVLW	0x80
	MOVWF	r0x1003
	MOVLW	0x3f
	MOVWF	r0x1002
;[ICODE] tancotf.c:72: 	 goto _ifend_1($5)
	GOTO	_00109_DS_
;[ICODE] tancotf.c:72:  _iffalse_1($4) :
;[ICODE] tancotf.c:76: 	send iTemp18 [k29 lr58:81 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _tancotf_f_1_1}[r0x1051 r0x1052 r0x1053 r0x1054 ]{argreg = 1}
;[ICODE] tancotf.c:76: 	send iTemp18 [k29 lr58:81 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _tancotf_f_1_1}[r0x1051 r0x1052 r0x1053 r0x1054 ]{argreg = 1}
;[ICODE] tancotf.c:76: 	iTemp26 [k38 lr72:91 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _tancotf_g_1_1}[r0x1059 r0x105A r0x105B r0x105C ] = call ___fsmul [k56 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
_00108_DS_
;	.line	76; "tancotf.c"	g = f*f;
	BANKSEL	r0x1009
	MOVF	r0x1009,W
	MOVWF	STK06
	MOVF	r0x1008,W
	MOVWF	STK05
	MOVF	r0x100C,W
	MOVWF	STK04
	MOVF	r0x100D,W
	MOVWF	STK03
	MOVF	r0x1009,W
	MOVWF	STK02
	MOVF	r0x1008,W
	MOVWF	STK01
	MOVF	r0x100C,W
	MOVWF	STK00
	MOVF	r0x100D,W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x1012
	MOVWF	r0x1012
	MOVF	STK00,W
	MOVWF	r0x1013
	MOVF	STK01,W
	MOVWF	r0x1014
	MOVF	STK02,W
;	.line	77; "tancotf.c"	xnum = P(f,g);
	MOVWF	r0x1015
	MOVWF	STK06
	MOVF	r0x1014,W
	MOVWF	STK05
	MOVF	r0x1013,W
	MOVWF	STK04
	MOVF	r0x1012,W
	MOVWF	STK03
	MOVLW	0xb8
	MOVWF	STK02
	MOVLW	0x33
	MOVWF	STK01
	MOVLW	0xc4
	MOVWF	STK00
	MOVLW	0xbd
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x1016
	MOVWF	r0x1016
	MOVF	STK00,W
	MOVWF	r0x1017
	MOVF	STK01,W
	MOVWF	r0x1018
	MOVF	STK02,W
	MOVWF	r0x1019
;[ICODE] tancotf.c:77: 	send iTemp28 [k41 lr76:78 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x105D r0x105E r0x105F r0x1060 ]{argreg = 1}
;[ICODE] tancotf.c:77: 	send iTemp18 [k29 lr58:81 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _tancotf_f_1_1}[r0x1051 r0x1052 r0x1053 r0x1054 ]{argreg = 1}
;[ICODE] tancotf.c:77: 	iTemp29 [k42 lr79:81 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x105D r0x105E r0x105F r0x1060 ] = call ___fsmul [k56 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVF	r0x1009,W
	MOVWF	STK06
	MOVF	r0x1008,W
	MOVWF	STK05
	MOVF	r0x100C,W
	MOVWF	STK04
	MOVF	r0x100D,W
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
	BANKSEL	r0x1016
	MOVWF	r0x1016
	MOVF	STK00,W
	MOVWF	r0x1017
	MOVF	STK01,W
	MOVWF	r0x1018
	MOVF	STK02,W
	MOVWF	r0x1019
;[ICODE] tancotf.c:77: 	send iTemp29 [k42 lr79:81 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x105D r0x105E r0x105F r0x1060 ]{argreg = 1}
;[ICODE] tancotf.c:77: 	send iTemp18 [k29 lr58:81 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _tancotf_f_1_1}[r0x1051 r0x1052 r0x1053 r0x1054 ]{argreg = 1}
;[ICODE] tancotf.c:77: 	iTemp13 [k22 lr38:120 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _tancotf_xnum_1_1}[r0x1055 r0x1056 r0x1057 r0x1058 ] = call ___fsadd [k57 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVF	r0x1009,W
	MOVWF	STK06
	MOVF	r0x1008,W
	MOVWF	STK05
	MOVF	r0x100C,W
	MOVWF	STK04
	MOVF	r0x100D,W
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
	BANKSEL	r0x1010
	MOVWF	r0x1010
	MOVF	STK00,W
	MOVWF	r0x1011
	MOVF	STK01,W
	MOVWF	r0x100F
	MOVF	STK02,W
	MOVWF	r0x100E
;[ICODE] tancotf.c:78: 	send 0.00971686 {const-float literal}{argreg = 1}
;[ICODE] tancotf.c:78: 	send iTemp26 [k38 lr72:91 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _tancotf_g_1_1}[r0x1059 r0x105A r0x105B r0x105C ]{argreg = 1}
;[ICODE] tancotf.c:78: 	iTemp31 [k44 lr86:88 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1051 r0x1052 r0x1053 r0x1054 ] = call ___fsmul [k56 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
;	.line	78; "tancotf.c"	xden = Q(g);
	MOVF	r0x1015,W
	MOVWF	STK06
	MOVF	r0x1014,W
	MOVWF	STK05
	MOVF	r0x1013,W
	MOVWF	STK04
	MOVF	r0x1012,W
	MOVWF	STK03
	MOVLW	0x75
	MOVWF	STK02
	MOVLW	0x33
	MOVWF	STK01
	MOVLW	0x1f
	MOVWF	STK00
	MOVLW	0x3c
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x100D
	MOVWF	r0x100D
	MOVF	STK00,W
	MOVWF	r0x100C
	MOVF	STK01,W
	MOVWF	r0x1008
	MOVF	STK02,W
	MOVWF	r0x1009
;[ICODE] tancotf.c:78: 	send iTemp31 [k44 lr86:88 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1051 r0x1052 r0x1053 r0x1054 ]{argreg = 1}
;[ICODE] tancotf.c:78: 	send -0.429136 {const-float literal}{argreg = 1}
;[ICODE] tancotf.c:78: 	iTemp32 [k45 lr89:91 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1051 r0x1052 r0x1053 r0x1054 ] = call ___fsadd [k57 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVLW	0xaf
	MOVWF	STK06
	MOVLW	0xb7
	MOVWF	STK05
	MOVLW	0xdb
	MOVWF	STK04
	MOVLW	0xbe
	MOVWF	STK03
	MOVF	r0x1009,W
	MOVWF	STK02
	MOVF	r0x1008,W
	MOVWF	STK01
	MOVF	r0x100C,W
	MOVWF	STK00
	MOVF	r0x100D,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x100D
	MOVWF	r0x100D
	MOVF	STK00,W
	MOVWF	r0x100C
	MOVF	STK01,W
	MOVWF	r0x1008
	MOVF	STK02,W
	MOVWF	r0x1009
;[ICODE] tancotf.c:78: 	send iTemp32 [k45 lr89:91 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1051 r0x1052 r0x1053 r0x1054 ]{argreg = 1}
;[ICODE] tancotf.c:78: 	send iTemp26 [k38 lr72:91 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _tancotf_g_1_1}[r0x1059 r0x105A r0x105B r0x105C ]{argreg = 1}
;[ICODE] tancotf.c:78: 	iTemp33 [k46 lr92:94 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1051 r0x1052 r0x1053 r0x1054 ] = call ___fsmul [k56 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVF	r0x1015,W
	MOVWF	STK06
	MOVF	r0x1014,W
	MOVWF	STK05
	MOVF	r0x1013,W
	MOVWF	STK04
	MOVF	r0x1012,W
	MOVWF	STK03
	MOVF	r0x1009,W
	MOVWF	STK02
	MOVF	r0x1008,W
	MOVWF	STK01
	MOVF	r0x100C,W
	MOVWF	STK00
	MOVF	r0x100D,W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x100D
	MOVWF	r0x100D
	MOVF	STK00,W
	MOVWF	r0x100C
	MOVF	STK01,W
	MOVWF	r0x1008
	MOVF	STK02,W
	MOVWF	r0x1009
;[ICODE] tancotf.c:78: 	send iTemp33 [k46 lr92:94 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1051 r0x1052 r0x1053 r0x1054 ]{argreg = 1}
;[ICODE] tancotf.c:78: 	send 1 {const-float literal}{argreg = 1}
;[ICODE] tancotf.c:78: 	iTemp16 [k26 lr42:120 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _tancotf_xden_1_1}[r0x1049 r0x104A r0x104B r0x104C ] = call ___fsadd [k57 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x80
	MOVWF	STK04
	MOVLW	0x3f
	MOVWF	STK03
	MOVF	r0x1009,W
	MOVWF	STK02
	MOVF	r0x1008,W
	MOVWF	STK01
	MOVF	r0x100C,W
	MOVWF	STK00
	MOVF	r0x100D,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x1002
	MOVWF	r0x1002
	MOVF	STK00,W
	MOVWF	r0x1003
	MOVF	STK01,W
	MOVWF	r0x1004
	MOVF	STK02,W
	MOVWF	r0x1005
;[ICODE] tancotf.c:78:  _ifend_1($5) :
;[ICODE] tancotf.c:81: 	iTemp35 [k48 lr98:99 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed} = iTemp5 [k12 lr30:98 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ _tancotf_n_1_1}[r0x104F r0x1050 ] & 0x1 {int literal}
_00109_DS_
;	.line	81; "tancotf.c"	if(n&1)
	BANKSEL	r0x100B
	BTFSS	r0x100B,0
	GOTO	_00117_DS_
;[ICODE] tancotf.c:81: 	if iTemp35 [k48 lr98:99 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed} == 0 goto _iffalse_4($13)
;[ICODE] tancotf.c:84: 	if iTemp1 [k4 lr4:113 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-int fixed}{ sir@ _tancotf_iscotan_1_1}[r0x104D r0x104E ] == 0 goto _iffalse_2($7)
;	.line	84; "tancotf.c"	if(iscotan) return (-xnum/xden);
	MOVF	r0x1007,W
	IORWF	r0x1006,W
	BTFSC	STATUS,2
	GOTO	_00111_DS_
;[ICODE] tancotf.c:84: 	iTemp36 [k49 lr101:103 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{float fixed}[r0x104F r0x1050 r0x1051 r0x1052 ] = - iTemp13 [k22 lr38:120 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _tancotf_xnum_1_1}[r0x1055 r0x1056 r0x1057 r0x1058 ]
	MOVF	r0x1010,W
	XORLW	0x80
	MOVWF	r0x1008
;;110	MOVF	r0x1011,W
;;108	MOVF	r0x100F,W
;;106	MOVF	r0x100E,W
;[ICODE] tancotf.c:84: 	send iTemp36 [k49 lr101:103 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{float fixed}[r0x104F r0x1050 r0x1051 r0x1052 ]{argreg = 1}
;[ICODE] tancotf.c:84: 	send iTemp16 [k26 lr42:120 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _tancotf_xden_1_1}[r0x1049 r0x104A r0x104B r0x104C ]{argreg = 1}
;[ICODE] tancotf.c:84: 	iTemp37 [k50 lr104:105 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x104F r0x1050 r0x1051 r0x1052 ] = call ___fsdiv [k62 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVF	r0x1005,W
	MOVWF	STK06
	MOVF	r0x1004,W
	MOVWF	STK05
	MOVF	r0x1003,W
	MOVWF	STK04
	MOVF	r0x1002,W
	MOVWF	STK03
;;105	MOVF	r0x100B,W
	MOVF	r0x100E,W
	MOVWF	r0x100B
	MOVWF	STK02
;;107	MOVF	r0x100A,W
	MOVF	r0x100F,W
	MOVWF	r0x100A
	MOVWF	STK01
;;109	MOVF	r0x1009,W
	MOVF	r0x1011,W
	MOVWF	r0x1009
	MOVWF	STK00
	MOVF	r0x1008,W
	PAGESEL	___fsdiv
	CALL	___fsdiv
	PAGESEL	$
	BANKSEL	r0x1008
	MOVWF	r0x1008
	MOVF	STK00,W
	MOVWF	r0x1009
	MOVF	STK01,W
	MOVWF	r0x100A
	MOVF	STK02,W
	MOVWF	r0x100B
	MOVWF	STK02
	MOVF	r0x100A,W
	MOVWF	STK01
	MOVF	r0x1009,W
	MOVWF	STK00
	MOVF	r0x1008,W
	GOTO	_00119_DS_
;[ICODE] tancotf.c:84:  _iffalse_2($7) :
;[ICODE] tancotf.c:85: 	iTemp38 [k51 lr107:109 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{float fixed}[r0x104F r0x1050 r0x1051 r0x1052 ] = - iTemp16 [k26 lr42:120 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _tancotf_xden_1_1}[r0x1049 r0x104A r0x104B r0x104C ]
_00111_DS_
;	.line	85; "tancotf.c"	else return (-xden/xnum);
	BANKSEL	r0x1002
	MOVF	r0x1002,W
	XORLW	0x80
	MOVWF	r0x1008
;;104	MOVF	r0x1003,W
;;102	MOVF	r0x1004,W
;;100	MOVF	r0x1005,W
;[ICODE] tancotf.c:85: 	send iTemp38 [k51 lr107:109 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{float fixed}[r0x104F r0x1050 r0x1051 r0x1052 ]{argreg = 1}
;[ICODE] tancotf.c:85: 	send iTemp13 [k22 lr38:120 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _tancotf_xnum_1_1}[r0x1055 r0x1056 r0x1057 r0x1058 ]{argreg = 1}
;[ICODE] tancotf.c:85: 	iTemp39 [k52 lr110:111 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x104F r0x1050 r0x1051 r0x1052 ] = call ___fsdiv [k62 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVF	r0x100E,W
	MOVWF	STK06
	MOVF	r0x100F,W
	MOVWF	STK05
	MOVF	r0x1011,W
	MOVWF	STK04
	MOVF	r0x1010,W
	MOVWF	STK03
;;99	MOVF	r0x100B,W
	MOVF	r0x1005,W
	MOVWF	r0x100B
	MOVWF	STK02
;;101	MOVF	r0x100A,W
	MOVF	r0x1004,W
	MOVWF	r0x100A
	MOVWF	STK01
;;103	MOVF	r0x1009,W
	MOVF	r0x1003,W
	MOVWF	r0x1009
	MOVWF	STK00
	MOVF	r0x1008,W
	PAGESEL	___fsdiv
	CALL	___fsdiv
	PAGESEL	$
	BANKSEL	r0x1008
	MOVWF	r0x1008
	MOVF	STK00,W
	MOVWF	r0x1009
	MOVF	STK01,W
	MOVWF	r0x100A
	MOVF	STK02,W
	MOVWF	r0x100B
	MOVWF	STK02
	MOVF	r0x100A,W
	MOVWF	STK01
	MOVF	r0x1009,W
	MOVWF	STK00
	MOVF	r0x1008,W
	GOTO	_00119_DS_
;[ICODE] tancotf.c:85:  _iffalse_4($13) :
;[ICODE] tancotf.c:89: 	if iTemp1 [k4 lr4:113 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-int fixed}{ sir@ _tancotf_iscotan_1_1}[r0x104D r0x104E ] == 0 goto _iffalse_3($10)
_00117_DS_
;	.line	89; "tancotf.c"	if(iscotan) return (xden/xnum);
	BANKSEL	r0x1007
	MOVF	r0x1007,W
	IORWF	r0x1006,W
	BTFSC	STATUS,2
	GOTO	_00114_DS_
;[ICODE] tancotf.c:89: 	send iTemp16 [k26 lr42:120 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _tancotf_xden_1_1}[r0x1049 r0x104A r0x104B r0x104C ]{argreg = 1}
;[ICODE] tancotf.c:89: 	send iTemp13 [k22 lr38:120 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _tancotf_xnum_1_1}[r0x1055 r0x1056 r0x1057 r0x1058 ]{argreg = 1}
;[ICODE] tancotf.c:89: 	iTemp40 [k53 lr116:117 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x104D r0x104E r0x104F r0x1050 ] = call ___fsdiv [k62 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVF	r0x100E,W
	MOVWF	STK06
	MOVF	r0x100F,W
	MOVWF	STK05
	MOVF	r0x1011,W
	MOVWF	STK04
	MOVF	r0x1010,W
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
	MOVWF	r0x1006
	MOVF	STK02,W
	MOVWF	r0x1007
	MOVWF	STK02
	MOVF	r0x1006,W
	MOVWF	STK01
	MOVF	r0x100B,W
	MOVWF	STK00
	MOVF	r0x100A,W
	GOTO	_00119_DS_
;[ICODE] tancotf.c:89:  _iffalse_3($10) :
;[ICODE] tancotf.c:90: 	send iTemp13 [k22 lr38:120 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _tancotf_xnum_1_1}[r0x1055 r0x1056 r0x1057 r0x1058 ]{argreg = 1}
;[ICODE] tancotf.c:90: 	send iTemp16 [k26 lr42:120 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _tancotf_xden_1_1}[r0x1049 r0x104A r0x104B r0x104C ]{argreg = 1}
;[ICODE] tancotf.c:90: 	iTemp41 [k54 lr121:122 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1049 r0x104A r0x104B r0x104C ] = call ___fsdiv [k62 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
_00114_DS_
;	.line	90; "tancotf.c"	else return (xnum/xden);
	BANKSEL	r0x1005
	MOVF	r0x1005,W
	MOVWF	STK06
	MOVF	r0x1004,W
	MOVWF	STK05
	MOVF	r0x1003,W
	MOVWF	STK04
	MOVF	r0x1002,W
	MOVWF	STK03
	MOVF	r0x100E,W
	MOVWF	STK02
	MOVF	r0x100F,W
	MOVWF	STK01
	MOVF	r0x1011,W
	MOVWF	STK00
	MOVF	r0x1010,W
	PAGESEL	___fsdiv
	CALL	___fsdiv
	PAGESEL	$
	BANKSEL	r0x1002
	MOVWF	r0x1002
	MOVF	STK00,W
	MOVWF	r0x1003
	MOVF	STK01,W
	MOVWF	r0x1004
	MOVF	STK02,W
	MOVWF	r0x1005
	MOVWF	STK02
	MOVF	r0x1004,W
	MOVWF	STK01
	MOVF	r0x1003,W
	MOVWF	STK00
	MOVF	r0x1002,W
;[ICODE] tancotf.c:90:  _return($15) :
;[ICODE] tancotf.c:90: 	eproc _tancotf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed, const-int fixed)  fixed}
_00119_DS_
	RETURN	
; exit point of _tancotf


;	code size estimation:
;	  684+   97 =   781 instructions ( 1756 byte)

	end
