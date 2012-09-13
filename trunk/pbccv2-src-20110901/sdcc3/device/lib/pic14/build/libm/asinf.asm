;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6064 (Nov 22 2010) (Linux)
; This file was generated Mon Nov 22 22:55:45 2010
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"asinf.c"
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
	extern	_asincosf
	extern	___fseq

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
	global	_asinf

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_asinf_0	udata
r0x1003	res	1
r0x1002	res	1
r0x1001	res	1
r0x1000	res	1
r0x1004	res	1
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
code_asinf	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _asinf	;Function start
; 2 exit points
;has an exit
;functions called:
;   ___fseq
;   ___fseq
;   _asincosf
;   ___fseq
;   ___fseq
;   _asincosf
;12 compiler assigned registers:
;   r0x1000
;   STK00
;   r0x1001
;   STK01
;   r0x1002
;   STK02
;   r0x1003
;   STK06
;   STK05
;   STK04
;   STK03
;   r0x1004
;; Starting pCode block
;[ICODE] asinf.c:33:  _entry($11) :
;[ICODE] asinf.c:33: 	proc _asinf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed)  fixed}
_asinf	;Function start
; 2 exit points
;[ICODE] asinf.c:33: iTemp0 [k2 lr3:20 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _asinf_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = recv _asinf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed)  fixed}
;	.line	33; "asinf.c"	float asinf(const float x) _MATH_REENTRANT
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
	MOVF	STK01,W
	MOVWF	r0x1002
	MOVF	STK02,W
	MOVWF	r0x1003
;[ICODE] asinf.c:35: 	send iTemp0 [k2 lr3:20 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _asinf_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]{argreg = 1}
;[ICODE] asinf.c:35: 	send 1 {const-float literal}{argreg = 1}
;[ICODE] asinf.c:35: 	iTemp1 [k4 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x104C ] = call ___fseq [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float fixed, float fixed)  fixed}
;	.line	35; "asinf.c"	if(x== 1.0) return  HALF_PI;
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x80
	MOVWF	STK04
	MOVLW	0x3f
	MOVWF	STK03
	MOVF	r0x1003,W
	MOVWF	STK02
	MOVF	r0x1002,W
	MOVWF	STK01
	MOVF	r0x1001,W
	MOVWF	STK00
	MOVF	r0x1000,W
	PAGESEL	___fseq
	CALL	___fseq
	PAGESEL	$
	BANKSEL	r0x1004
	MOVWF	r0x1004
;[ICODE] asinf.c:35: 	if iTemp1 [k4 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x104C ] == 0 goto _iffalse_2($8)
	MOVF	r0x1004,W
	BTFSC	STATUS,2
	GOTO	_00112_DS_
;[ICODE] asinf.c:35: 	ret 1.5708 {const-float literal}
	MOVLW	0xdb
	MOVWF	STK02
	MOVLW	0x0f
	MOVWF	STK01
	MOVLW	0xc9
	MOVWF	STK00
	MOVLW	0x3f
	GOTO	_00114_DS_
;[ICODE] asinf.c:35:  _iffalse_2($8) :
;[ICODE] asinf.c:36: 	send iTemp0 [k2 lr3:20 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _asinf_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]{argreg = 1}
;[ICODE] asinf.c:36: 	send -1 {const-float literal}{argreg = 1}
;[ICODE] asinf.c:36: 	iTemp2 [k5 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x104C ] = call ___fseq [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float fixed, float fixed)  fixed}
_00112_DS_
;	.line	36; "asinf.c"	else if(x==-1.0) return -HALF_PI;
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x80
	MOVWF	STK04
	MOVLW	0xbf
	MOVWF	STK03
	BANKSEL	r0x1003
	MOVF	r0x1003,W
	MOVWF	STK02
	MOVF	r0x1002,W
	MOVWF	STK01
	MOVF	r0x1001,W
	MOVWF	STK00
	MOVF	r0x1000,W
	PAGESEL	___fseq
	CALL	___fseq
	PAGESEL	$
	BANKSEL	r0x1004
	MOVWF	r0x1004
;[ICODE] asinf.c:36: 	if iTemp2 [k5 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x104C ] == 0 goto _iffalse_1($5)
	MOVF	r0x1004,W
	BTFSC	STATUS,2
	GOTO	_00109_DS_
;[ICODE] asinf.c:36: 	ret -1.5708 {const-float literal}
	MOVLW	0xdb
	MOVWF	STK02
	MOVLW	0x0f
	MOVWF	STK01
	MOVLW	0xc9
	MOVWF	STK00
	MOVLW	0xbf
	GOTO	_00114_DS_
;[ICODE] asinf.c:36:  _iffalse_1($5) :
;[ICODE] asinf.c:37: 	if iTemp0 [k2 lr3:20 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _asinf_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] != 0 goto _iffalse_0($2)
_00109_DS_
;	.line	37; "asinf.c"	else if(x== 0.0) return 0.0;
	BANKSEL	r0x1003
	MOVF	r0x1003,W
	IORWF	r0x1002,W
	IORWF	r0x1001,W
	IORWF	r0x1000,W
	BTFSS	STATUS,2
	GOTO	_00106_DS_
;[ICODE] asinf.c:37: 	ret 0 {const-float literal}
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x00
	GOTO	_00114_DS_
;[ICODE] asinf.c:37:  _iffalse_0($2) :
;[ICODE] asinf.c:38: 	send iTemp0 [k2 lr3:20 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _asinf_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]{argreg = 1}
;[ICODE] asinf.c:38: 	send 0x0 {const-int literal}{argreg = 1}
;[ICODE] asinf.c:38: 	iTemp3 [k9 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{float fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = call _asincosf [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed, const-int fixed)  fixed}
_00106_DS_
;	.line	38; "asinf.c"	else return asincosf(x,0);
	MOVLW	0x00
	MOVWF	STK04
	MOVLW	0x00
	MOVWF	STK03
	BANKSEL	r0x1003
	MOVF	r0x1003,W
	MOVWF	STK02
	MOVF	r0x1002,W
	MOVWF	STK01
	MOVF	r0x1001,W
	MOVWF	STK00
	MOVF	r0x1000,W
	PAGESEL	_asincosf
	CALL	_asincosf
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
;[ICODE] asinf.c:38:  _return($10) :
;[ICODE] asinf.c:38: 	eproc _asinf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed)  fixed}
_00114_DS_
	RETURN	
; exit point of _asinf


;	code size estimation:
;	  103+   13 =   116 instructions (  258 byte)

	end
