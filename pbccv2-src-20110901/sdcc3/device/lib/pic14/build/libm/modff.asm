;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6064 (Nov 22 2010) (Linux)
; This file was generated Mon Nov 22 22:55:46 2010
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"modff.c"
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
	extern	___fs2sint
	extern	___sint2fs
	extern	___fssub
	extern	__gptrput4

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
	global	_modff

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_modff_0	udata
r0x1003	res	1
r0x1002	res	1
r0x1001	res	1
r0x1000	res	1
r0x1006	res	1
r0x1005	res	1
r0x1004	res	1
r0x1008	res	1
r0x1007	res	1
r0x100A	res	1
r0x1009	res	1
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
code_modff	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _modff	;Function start
; 2 exit points
;has an exit
;functions called:
;   ___fs2sint
;   ___sint2fs
;   __gptrput4
;   ___fssub
;   ___fs2sint
;   ___sint2fs
;   __gptrput4
;   ___fssub
;18 compiler assigned registers:
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
;   r0x1007
;   r0x1008
;   r0x1009
;   r0x100A
;   STK06
;; Starting pCode block
;[ICODE] modff.c:31:  _entry($2) :
;[ICODE] modff.c:31: 	proc _modff [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float generic* fixed)  fixed}
_modff	;Function start
; 2 exit points
;[ICODE] modff.c:31: iTemp0 [k2 lr3:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _modff_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = recv _modff [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float generic* fixed)  fixed}
;	.line	31; "modff.c"	float modff(float x, float * y)
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
	MOVF	STK01,W
	MOVWF	r0x1002
	MOVF	STK02,W
	MOVWF	r0x1003
;[ICODE] modff.c:31: iTemp1 [k4 lr4:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float generic* fixed}{ sir@ _modff_y_1_1}[r0x104C r0x104D r0x104E ] = recv _modff [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float generic* fixed)  fixed}
	MOVF	STK03,W
	MOVWF	r0x1004
	MOVF	STK04,W
	MOVWF	r0x1005
	MOVF	STK05,W
	MOVWF	r0x1006
;[ICODE] modff.c:33: 	send iTemp0 [k2 lr3:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _modff_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]{argreg = 1}
;[ICODE] modff.c:33: 	iTemp3 [k7 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x104F r0x1050 ] = call ___fs2sint [k12 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( float fixed)  fixed}
;	.line	33; "modff.c"	*y=((int)x);
	MOVF	r0x1003,W
	MOVWF	STK02
	MOVF	r0x1002,W
	MOVWF	STK01
	MOVF	r0x1001,W
	MOVWF	STK00
	MOVF	r0x1000,W
	PAGESEL	___fs2sint
	CALL	___fs2sint
	PAGESEL	$
	BANKSEL	r0x1007
	MOVWF	r0x1007
	MOVF	STK00,W
	MOVWF	r0x1008
	MOVWF	STK00
	MOVF	r0x1007,W
	PAGESEL	___sint2fs
	CALL	___sint2fs
	PAGESEL	$
	BANKSEL	r0x1009
	MOVWF	r0x1009
	MOVF	STK00,W
	MOVWF	r0x100A
	MOVF	STK01,W
	MOVWF	r0x1007
	MOVF	STK02,W
	MOVWF	r0x1008
;[ICODE] modff.c:33: 	*(iTemp1 [k4 lr4:9 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{float generic* fixed}{ sir@ _modff_y_1_1}[r0x104C r0x104D r0x104E ]) := iTemp4 [k8 lr8:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x104F r0x1050 r0x1051 r0x1052 ]
	MOVF	r0x1009,W
	MOVWF	STK02
	MOVF	r0x100A,W
	MOVWF	STK03
	MOVF	r0x1007,W
	MOVWF	STK04
	MOVF	r0x1008,W
	MOVWF	STK05
	MOVF	r0x1006,W
	MOVWF	STK01
	MOVF	r0x1005,W
	MOVWF	STK00
	MOVF	r0x1004,W
	PAGESEL	__gptrput4
	CALL	__gptrput4
	PAGESEL	$
;[ICODE] modff.c:34: 	send iTemp0 [k2 lr3:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _modff_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]{argreg = 1}
;[ICODE] modff.c:34: 	send iTemp4 [k8 lr8:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x104F r0x1050 r0x1051 r0x1052 ]{argreg = 1}
;[ICODE] modff.c:34: 	iTemp7 [k11 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = call ___fssub [k14 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
;	.line	34; "modff.c"	return (x-*y);
	BANKSEL	r0x1008
	MOVF	r0x1008,W
	MOVWF	STK06
	MOVF	r0x1007,W
	MOVWF	STK05
	MOVF	r0x100A,W
	MOVWF	STK04
	MOVF	r0x1009,W
	MOVWF	STK03
	MOVF	r0x1003,W
	MOVWF	STK02
	MOVF	r0x1002,W
	MOVWF	STK01
	MOVF	r0x1001,W
	MOVWF	STK00
	MOVF	r0x1000,W
	PAGESEL	___fssub
	CALL	___fssub
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
;[ICODE] modff.c:34:  _return($1) :
;[ICODE] modff.c:34: 	eproc _modff [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float generic* fixed)  fixed}
	RETURN	
; exit point of _modff


;	code size estimation:
;	   78+   13 =    91 instructions (  208 byte)

	end
