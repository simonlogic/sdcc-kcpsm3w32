;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6064 (Nov 22 2010) (Linux)
; This file was generated Mon Nov 22 22:55:46 2010
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"powf.c"
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
	extern	_sqrtf
	extern	_fabsf
	extern	_frexpf
	extern	_ldexpf
	extern	_ceilf
	extern	_floorf
	extern	_modff
	extern	___fseq
	extern	___fsgt
	extern	___fsmul
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
	global	_powf

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_powf_0	udata
r0x1003	res	1
r0x1002	res	1
r0x1001	res	1
r0x1000	res	1
r0x1007	res	1
r0x1006	res	1
r0x1005	res	1
r0x1004	res	1
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
code_powf	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _powf	;Function start
; 2 exit points
;has an exit
;functions called:
;   ___fseq
;   ___fsgt
;   _logf
;   ___fsmul
;   _expf
;   ___fseq
;   ___fsgt
;   _logf
;   ___fsmul
;   _expf
;16 compiler assigned registers:
;   r0x1000
;   STK00
;   r0x1001
;   STK01
;   r0x1002
;   STK02
;   r0x1003
;   STK03
;   r0x1004
;   STK04
;   r0x1005
;   STK05
;   r0x1006
;   STK06
;   r0x1007
;   r0x1008
;; Starting pCode block
;[ICODE] powf.c:33:  _entry($8) :
;[ICODE] powf.c:33: 	proc _powf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed, const-float fixed)  fixed}
_powf	;Function start
; 2 exit points
;[ICODE] powf.c:33: iTemp0 [k2 lr3:20 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _powf_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = recv _powf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed, const-float fixed)  fixed}
;	.line	33; "powf.c"	float powf(const float x, const float y)
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
	MOVF	STK01,W
	MOVWF	r0x1002
	MOVF	STK02,W
	MOVWF	r0x1003
;[ICODE] powf.c:33: iTemp1 [k4 lr4:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _powf_y_1_1}[r0x104C r0x104D r0x104E r0x104F ] = recv _powf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed, const-float fixed)  fixed}
	MOVF	STK03,W
	MOVWF	r0x1004
	MOVF	STK04,W
	MOVWF	r0x1005
	MOVF	STK05,W
	MOVWF	r0x1006
	MOVF	STK06,W
;	.line	35; "powf.c"	if(y == 0.0) return 1.0;
	MOVWF	r0x1007
	IORWF	r0x1006,W
	IORWF	r0x1005,W
	IORWF	r0x1004,W
	BTFSS	STATUS,2
	GOTO	_00106_DS_
;[ICODE] powf.c:35: 	ret 1 {const-float literal}
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x80
	MOVWF	STK00
	MOVLW	0x3f
	GOTO	_00111_DS_
;[ICODE] powf.c:35:  _iffalse_0($2) :
;[ICODE] powf.c:36: 	send iTemp1 [k4 lr4:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _powf_y_1_1}[r0x104C r0x104D r0x104E r0x104F ]{argreg = 1}
;[ICODE] powf.c:36: 	send 1 {const-float literal}{argreg = 1}
;[ICODE] powf.c:36: 	iTemp2 [k6 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1050 ] = call ___fseq [k15 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float fixed, float fixed)  fixed}
_00106_DS_
;	.line	36; "powf.c"	if(y==1.0) return x;
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
;[ICODE] powf.c:36: 	if iTemp2 [k6 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1050 ] == 0 goto _iffalse_1($4)
	MOVF	r0x1008,W
	BTFSC	STATUS,2
	GOTO	_00108_DS_
;[ICODE] powf.c:36: 	ret iTemp0 [k2 lr3:20 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _powf_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]
	MOVF	r0x1003,W
	MOVWF	STK02
	MOVF	r0x1002,W
	MOVWF	STK01
	MOVF	r0x1001,W
	MOVWF	STK00
	MOVF	r0x1000,W
	GOTO	_00111_DS_
;[ICODE] powf.c:36:  _iffalse_1($4) :
;[ICODE] powf.c:37: 	send iTemp0 [k2 lr3:20 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _powf_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]{argreg = 1}
;[ICODE] powf.c:37: 	send 0 {const-float literal}{argreg = 1}
;[ICODE] powf.c:37: 	iTemp3 [k7 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1050 ] = call ___fsgt [k16 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float fixed, float fixed)  fixed}
_00108_DS_
;	.line	37; "powf.c"	if(x <= 0.0) return 0.0;
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
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
	PAGESEL	___fsgt
	CALL	___fsgt
	PAGESEL	$
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] powf.c:37: 	if iTemp3 [k7 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1050 ] != 0 goto _iffalse_2($6)
	MOVF	r0x1008,W
	BTFSS	STATUS,2
	GOTO	_00110_DS_
;[ICODE] powf.c:37: 	ret 0 {const-float literal}
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x00
	GOTO	_00111_DS_
;[ICODE] powf.c:37:  _iffalse_2($6) :
;[ICODE] powf.c:38: 	send iTemp0 [k2 lr3:20 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _powf_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]{argreg = 1}
;[ICODE] powf.c:38: 	iTemp4 [k11 lr21:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = call _logf [k9 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed)  fixed}
_00110_DS_
;	.line	38; "powf.c"	return expf(logf(x) * y);
	BANKSEL	r0x1003
	MOVF	r0x1003,W
	MOVWF	STK02
	MOVF	r0x1002,W
	MOVWF	STK01
	MOVF	r0x1001,W
	MOVWF	STK00
	MOVF	r0x1000,W
	PAGESEL	_logf
	CALL	_logf
	PAGESEL	$
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
	MOVF	STK01,W
	MOVWF	r0x1002
	MOVF	STK02,W
	MOVWF	r0x1003
;[ICODE] powf.c:38: 	send iTemp4 [k11 lr21:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1048 r0x1049 r0x104A r0x104B ]{argreg = 1}
;[ICODE] powf.c:38: 	send iTemp1 [k4 lr4:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _powf_y_1_1}[r0x104C r0x104D r0x104E r0x104F ]{argreg = 1}
;[ICODE] powf.c:38: 	iTemp5 [k12 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = call ___fsmul [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVF	r0x1007,W
	MOVWF	STK06
	MOVF	r0x1006,W
	MOVWF	STK05
	MOVF	r0x1005,W
	MOVWF	STK04
	MOVF	r0x1004,W
	MOVWF	STK03
	MOVF	r0x1003,W
	MOVWF	STK02
	MOVF	r0x1002,W
	MOVWF	STK01
	MOVF	r0x1001,W
	MOVWF	STK00
	MOVF	r0x1000,W
	PAGESEL	___fsmul
	CALL	___fsmul
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
	PAGESEL	_expf
	CALL	_expf
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
;[ICODE] powf.c:38:  _return($7) :
;[ICODE] powf.c:38: 	eproc _powf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed, const-float fixed)  fixed}
_00111_DS_
	RETURN	
; exit point of _powf


;	code size estimation:
;	  143+   19 =   162 instructions (  362 byte)

	end
