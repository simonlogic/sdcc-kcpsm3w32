;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6064 (Nov 22 2010) (Linux)
; This file was generated Mon Nov 22 22:55:45 2010
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"ceilf.c"
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
	extern	_floorf
	extern	_modff
	extern	___fs2slong
	extern	___slong2fs
	extern	___fslt

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
	global	_ceilf

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_ceilf_0	udata
r0x1003	res	1
r0x1002	res	1
r0x1001	res	1
r0x1000	res	1
r0x1007	res	1
r0x1006	res	1
r0x1005	res	1
r0x1004	res	1
r0x100B	res	1
r0x100A	res	1
r0x1009	res	1
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
code_ceilf	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _ceilf	;Function start
; 2 exit points
;has an exit
;functions called:
;   ___fs2slong
;   ___slong2fs
;   ___slong2fs
;   ___fslt
;   ___slong2fs
;   ___fs2slong
;   ___slong2fs
;   ___slong2fs
;   ___fslt
;   ___slong2fs
;19 compiler assigned registers:
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
;   r0x100B
;   STK06
;   STK05
;   STK04
;   STK03
;; Starting pCode block
;[ICODE] ceilf.c:31:  _entry($5) :
;[ICODE] ceilf.c:31: 	proc _ceilf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed)  fixed}
_ceilf	;Function start
; 2 exit points
;[ICODE] ceilf.c:31: iTemp0 [k2 lr3:16 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _ceilf_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = recv _ceilf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed)  fixed}
;	.line	31; "ceilf.c"	float ceilf(float x) _MATH_REENTRANT
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
	MOVF	STK01,W
	MOVWF	r0x1002
	MOVF	STK02,W
;	.line	34; "ceilf.c"	r=x;
	MOVWF	r0x1003
	MOVWF	STK02
	MOVF	r0x1002,W
	MOVWF	STK01
	MOVF	r0x1001,W
	MOVWF	STK00
	MOVF	r0x1000,W
	PAGESEL	___fs2slong
	CALL	___fs2slong
	PAGESEL	$
	BANKSEL	r0x1004
	MOVWF	r0x1004
	MOVF	STK00,W
	MOVWF	r0x1005
	MOVF	STK01,W
	MOVWF	r0x1006
	MOVF	STK02,W
	MOVWF	r0x1007
;[ICODE] ceilf.c:35: 	iTemp3 [k7 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp1 [k4 lr5:26 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ _ceilf_r_1_1}[r0x104C r0x104D r0x104E r0x104F ] < 0x0 {long-int literal}
;signed compare: left < lit(0x0=0), size=4, mask=ffffffff
;	.line	35; "ceilf.c"	if (r<0)
	BSF	STATUS,0
	BTFSS	r0x1004,7
	BCF	STATUS,0
	BTFSS	STATUS,0
	GOTO	_00106_DS_
;genSkipc:3057: created from rifx:0xbffd28c4
;[ICODE] ceilf.c:35: 	if iTemp3 [k7 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_0($2)
;[ICODE] ceilf.c:36: 	send iTemp1 [k4 lr5:26 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ _ceilf_r_1_1}[r0x104C r0x104D r0x104E r0x104F ]{argreg = 1}
;[ICODE] ceilf.c:36: 	iTemp4 [k8 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1050 r0x1051 r0x1052 r0x1053 ] = call ___slong2fs [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( long-int fixed)  fixed}
;	.line	36; "ceilf.c"	return r;
	MOVF	r0x1007,W
	MOVWF	STK02
	MOVF	r0x1006,W
	MOVWF	STK01
	MOVF	r0x1005,W
	MOVWF	STK00
	MOVF	r0x1004,W
	PAGESEL	___slong2fs
	CALL	___slong2fs
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
	GOTO	_00108_DS_
;[ICODE] ceilf.c:36:  _iffalse_0($2) :
;[ICODE] ceilf.c:38: 	send iTemp1 [k4 lr5:26 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ _ceilf_r_1_1}[r0x104C r0x104D r0x104E r0x104F ]{argreg = 1}
;[ICODE] ceilf.c:38: 	iTemp5 [k9 lr14:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1050 r0x1051 r0x1052 r0x1053 ] = call ___slong2fs [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( long-int fixed)  fixed}
_00106_DS_
;	.line	38; "ceilf.c"	return (r+((r<x)?1:0));
	BANKSEL	r0x1007
	MOVF	r0x1007,W
	MOVWF	STK02
	MOVF	r0x1006,W
	MOVWF	STK01
	MOVF	r0x1005,W
	MOVWF	STK00
	MOVF	r0x1004,W
	PAGESEL	___slong2fs
	CALL	___slong2fs
	PAGESEL	$
	BANKSEL	r0x1008
	MOVWF	r0x1008
	MOVF	STK00,W
	MOVWF	r0x1009
	MOVF	STK01,W
	MOVWF	r0x100A
	MOVF	STK02,W
	MOVWF	r0x100B
;[ICODE] ceilf.c:38: 	send iTemp5 [k9 lr14:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1050 r0x1051 r0x1052 r0x1053 ]{argreg = 1}
;[ICODE] ceilf.c:38: 	send iTemp0 [k2 lr3:16 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _ceilf_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]{argreg = 1}
;[ICODE] ceilf.c:38: 	iTemp6 [k10 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1048 ] = call ___fslt [k18 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float fixed, float fixed)  fixed}
	MOVF	r0x1003,W
	MOVWF	STK06
	MOVF	r0x1002,W
	MOVWF	STK05
	MOVF	r0x1001,W
	MOVWF	STK04
	MOVF	r0x1000,W
	MOVWF	STK03
	MOVF	r0x100B,W
	MOVWF	STK02
	MOVF	r0x100A,W
	MOVWF	STK01
	MOVF	r0x1009,W
	MOVWF	STK00
	MOVF	r0x1008,W
	PAGESEL	___fslt
	CALL	___fslt
	PAGESEL	$
	BANKSEL	r0x1003
	MOVWF	r0x1003
;[ICODE] ceilf.c:38: 	if iTemp6 [k10 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1048 ] == 0 goto iTempLbl0($6)
	MOVF	r0x1003,W
	BTFSC	STATUS,2
	GOTO	_00110_DS_
;[ICODE] ceilf.c:38: 	iTemp7 [k11 lr19:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-unsigned-char register}[r0x1048 ] := 0x1 {const-unsigned-char literal}
	MOVLW	0x01
	MOVWF	r0x1003
;[ICODE] ceilf.c:38: 	 goto iTempLbl1($7)
	GOTO	_00111_DS_
;[ICODE] ceilf.c:38:  iTempLbl0($6) :
;[ICODE] ceilf.c:38: 	iTemp7 [k11 lr19:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-unsigned-char register}[r0x1048 ] := 0x0 {const-unsigned-char literal}
_00110_DS_
	BANKSEL	r0x1003
	CLRF	r0x1003
;[ICODE] ceilf.c:38:  iTempLbl1($7) :
;[ICODE] ceilf.c:38: 	iTemp8 [k12 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}[r0x1049 r0x104A ] = (int fixed)iTemp7 [k11 lr19:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-unsigned-char register}[r0x1048 ]
_00111_DS_
	BANKSEL	r0x1003
	MOVF	r0x1003,W
	MOVWF	r0x1002
	CLRF	r0x1001
;[ICODE] ceilf.c:38: 	iTemp9 [k13 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int register}[r0x1048 r0x104B r0x1050 r0x1051 ] = (long-int fixed)iTemp8 [k12 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}[r0x1049 r0x104A ]
;;99	MOVF	r0x1002,W
	MOVLW	0x00
	MOVWF	r0x1000
	BTFSC	r0x1000,7
	MOVLW	0xff
	MOVWF	r0x100A
	MOVWF	r0x100B
;[ICODE] ceilf.c:38: 	iTemp10 [k14 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int fixed}[r0x104C r0x104D r0x104E r0x104F ] = iTemp1 [k4 lr5:26 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ _ceilf_r_1_1}[r0x104C r0x104D r0x104E r0x104F ] + iTemp9 [k13 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int register}[r0x1048 r0x104B r0x1050 r0x1051 ]
	MOVF	r0x1003,W
	ADDWF	r0x1007,F
	MOVF	r0x1000,W
	BTFSC	STATUS,0
	INCFSZ	r0x1000,W
	ADDWF	r0x1006,F
	MOVF	r0x100B,W
	BTFSC	STATUS,0
	INCFSZ	r0x100B,W
	ADDWF	r0x1005,F
	MOVF	r0x100A,W
	BTFSC	STATUS,0
	INCFSZ	r0x100A,W
	ADDWF	r0x1004,F
;[ICODE] ceilf.c:38: 	send iTemp10 [k14 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int fixed}[r0x104C r0x104D r0x104E r0x104F ]{argreg = 1}
;[ICODE] ceilf.c:38: 	iTemp11 [k15 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = call ___slong2fs [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( long-int fixed)  fixed}
	MOVF	r0x1007,W
	MOVWF	STK02
	MOVF	r0x1006,W
	MOVWF	STK01
	MOVF	r0x1005,W
	MOVWF	STK00
	MOVF	r0x1004,W
	PAGESEL	___slong2fs
	CALL	___slong2fs
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
;[ICODE] ceilf.c:38:  _return($4) :
;[ICODE] ceilf.c:38: 	eproc _ceilf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed)  fixed}
_00108_DS_
	RETURN	
; exit point of _ceilf


;	code size estimation:
;	  132+   19 =   151 instructions (  340 byte)

	end
