;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6064 (Nov 22 2010) (Linux)
; This file was generated Mon Nov 22 22:55:46 2010
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"floorf.c"
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
	extern	_modff
	extern	___fs2slong
	extern	___slong2fs
	extern	___fsgt

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
	global	_floorf

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_floorf_0	udata
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
code_floorf	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _floorf	;Function start
; 2 exit points
;has an exit
;functions called:
;   ___fs2slong
;   ___slong2fs
;   ___fsgt
;   ___slong2fs
;   ___slong2fs
;   ___fs2slong
;   ___slong2fs
;   ___fsgt
;   ___slong2fs
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
;[ICODE] floorf.c:31:  _entry($5) :
;[ICODE] floorf.c:31: 	proc _floorf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed)  fixed}
_floorf	;Function start
; 2 exit points
;[ICODE] floorf.c:31: iTemp0 [k2 lr3:12 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _floorf_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = recv _floorf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed)  fixed}
;	.line	31; "floorf.c"	float floorf (float x) _MATH_REENTRANT
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
	MOVF	STK01,W
	MOVWF	r0x1002
	MOVF	STK02,W
;	.line	34; "floorf.c"	r=x;
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
;[ICODE] floorf.c:35: 	iTemp3 [k7 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp1 [k4 lr5:26 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ _floorf_r_1_1}[r0x104C r0x104D r0x104E r0x104F ] > 0x0 {long-int literal}
;swapping arguments (AOP_TYPEs 1/2)
;signed compare: left >= lit(0x1=1), size=4, mask=ffffffff
;	.line	35; "floorf.c"	if (r<=0)
	MOVF	r0x1004,W
	ADDLW	0x80
	ADDLW	0x80
	BTFSS	STATUS,2
	GOTO	_00114_DS_
	MOVLW	0x00
	SUBWF	r0x1005,W
	BTFSS	STATUS,2
	GOTO	_00114_DS_
	MOVLW	0x00
	SUBWF	r0x1006,W
	BTFSS	STATUS,2
	GOTO	_00114_DS_
	MOVLW	0x01
	SUBWF	r0x1007,W
_00114_DS_
	BTFSC	STATUS,0
	GOTO	_00106_DS_
;genSkipc:3057: created from rifx:0xbf899994
;[ICODE] floorf.c:35: 	if iTemp3 [k7 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto _iffalse_0($2)
;[ICODE] floorf.c:36: 	send iTemp1 [k4 lr5:26 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ _floorf_r_1_1}[r0x104C r0x104D r0x104E r0x104F ]{argreg = 1}
;[ICODE] floorf.c:36: 	iTemp4 [k8 lr10:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1050 r0x1051 r0x1052 r0x1053 ] = call ___slong2fs [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( long-int fixed)  fixed}
;	.line	36; "floorf.c"	return (r+((r>x)?-1:0));
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
;[ICODE] floorf.c:36: 	send iTemp4 [k8 lr10:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1050 r0x1051 r0x1052 r0x1053 ]{argreg = 1}
;[ICODE] floorf.c:36: 	send iTemp0 [k2 lr3:12 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _floorf_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]{argreg = 1}
;[ICODE] floorf.c:36: 	iTemp5 [k9 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1048 ] = call ___fsgt [k18 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float fixed, float fixed)  fixed}
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
	PAGESEL	___fsgt
	CALL	___fsgt
	PAGESEL	$
	BANKSEL	r0x1003
	MOVWF	r0x1003
;[ICODE] floorf.c:36: 	if iTemp5 [k9 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1048 ] == 0 goto iTempLbl0($6)
	MOVF	r0x1003,W
	BTFSC	STATUS,2
	GOTO	_00110_DS_
;[ICODE] floorf.c:36: 	iTemp6 [k10 lr15:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x1048 ] := 0xffffffff {const-char literal}
	MOVLW	0xff
	MOVWF	r0x1003
;[ICODE] floorf.c:36: 	 goto iTempLbl1($7)
	GOTO	_00111_DS_
;[ICODE] floorf.c:36:  iTempLbl0($6) :
;[ICODE] floorf.c:36: 	iTemp6 [k10 lr15:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x1048 ] := 0x0 {const-char literal}
_00110_DS_
	BANKSEL	r0x1003
	CLRF	r0x1003
;[ICODE] floorf.c:36:  iTempLbl1($7) :
;[ICODE] floorf.c:36: 	iTemp8 [k12 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int register}[r0x1049 r0x104A r0x104B r0x1050 ] = (long-int fixed)iTemp6 [k10 lr15:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x1048 ]
_00111_DS_
	BANKSEL	r0x1003
	MOVF	r0x1003,W
	MOVWF	r0x1002
	MOVLW	0x00
	BTFSC	r0x1002,7
	MOVLW	0xff
	MOVWF	r0x100B
	MOVWF	r0x1000
	MOVWF	r0x1001
;[ICODE] floorf.c:36: 	iTemp9 [k13 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int fixed}[r0x1048 r0x1051 r0x1052 r0x1053 ] = iTemp1 [k4 lr5:26 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ _floorf_r_1_1}[r0x104C r0x104D r0x104E r0x104F ] + iTemp8 [k12 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int register}[r0x1049 r0x104A r0x104B r0x1050 ]
	MOVF	r0x1002,W
	ADDWF	r0x1007,W
	MOVWF	r0x1003
	MOVF	r0x1006,W
	MOVWF	r0x100A
	MOVF	r0x1001,W
	BTFSC	STATUS,0
	INCFSZ	r0x1001,W
	ADDWF	r0x100A,F
	MOVF	r0x1005,W
	MOVWF	r0x1009
	MOVF	r0x1000,W
	BTFSC	STATUS,0
	INCFSZ	r0x1000,W
	ADDWF	r0x1009,F
	MOVF	r0x1004,W
	MOVWF	r0x1008
	MOVF	r0x100B,W
	BTFSC	STATUS,0
	INCFSZ	r0x100B,W
	ADDWF	r0x1008,F
;[ICODE] floorf.c:36: 	send iTemp9 [k13 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int fixed}[r0x1048 r0x1051 r0x1052 r0x1053 ]{argreg = 1}
;[ICODE] floorf.c:36: 	iTemp10 [k14 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = call ___slong2fs [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( long-int fixed)  fixed}
	MOVF	r0x1003,W
	MOVWF	STK02
	MOVF	r0x100A,W
	MOVWF	STK01
	MOVF	r0x1009,W
	MOVWF	STK00
	MOVF	r0x1008,W
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
	GOTO	_00108_DS_
;[ICODE] floorf.c:36:  _iffalse_0($2) :
;[ICODE] floorf.c:38: 	send iTemp1 [k4 lr5:26 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ _floorf_r_1_1}[r0x104C r0x104D r0x104E r0x104F ]{argreg = 1}
;[ICODE] floorf.c:38: 	iTemp11 [k15 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = call ___slong2fs [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( long-int fixed)  fixed}
_00106_DS_
;	.line	38; "floorf.c"	return r;
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
;[ICODE] floorf.c:38:  _return($4) :
;[ICODE] floorf.c:38: 	eproc _floorf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed)  fixed}
_00108_DS_
	RETURN	
; exit point of _floorf


;	code size estimation:
;	  150+   20 =   170 instructions (  380 byte)

	end
