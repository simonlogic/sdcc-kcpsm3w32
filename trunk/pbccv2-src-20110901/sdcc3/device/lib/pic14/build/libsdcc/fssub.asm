;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6064 (Nov 22 2010) (Linux)
; This file was generated Mon Nov 22 22:55:44 2010
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"fssub.c"
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
	extern	___fsmul
	extern	___fsdiv
	extern	___fslt
	extern	___fseq
	extern	___fsneq
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
	global	___fssub

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_fssub_0	udata
r0x100B	res	1
r0x100A	res	1
r0x1009	res	1
r0x1008	res	1
r0x100F	res	1
r0x100E	res	1
r0x100D	res	1
r0x100C	res	1
___fssub_fl1_1_1	res	4
___fssub_fl2_1_1	res	4
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
code_fssub	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  ___fssub	;Function start
; 2 exit points
;has an exit
;functions called:
;   ___fsadd
;   ___fsadd
;15 compiler assigned registers:
;   r0x1008
;   STK00
;   r0x1009
;   STK01
;   r0x100A
;   STK02
;   r0x100B
;   STK03
;   r0x100C
;   STK04
;   r0x100D
;   STK05
;   r0x100E
;   STK06
;   r0x100F
;; Starting pCode block
;[ICODE] fssub.c:55:  _entry($6) :
;[ICODE] fssub.c:55: 	proc ___fssub [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
___fssub	;Function start
; 2 exit points
;[ICODE] fssub.c:55: iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ ___fssub_a1_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = recv ___fssub [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
;	.line	55; "fssub.c"	float __fssub (float a1, float a2) _FS_REENTRANT
	BANKSEL	r0x1008
	MOVWF	r0x1008
	MOVF	STK00,W
	MOVWF	r0x1009
	MOVF	STK01,W
	MOVWF	r0x100A
	MOVF	STK02,W
	BANKSEL	___fssub_fl1_1_1
	MOVWF	(___fssub_fl1_1_1 + 0)
	BANKSEL	r0x100B
	MOVWF	r0x100B
;[ICODE] fssub.c:55: iTemp1 [k4 lr4:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ ___fssub_a2_1_1}[r0x104C r0x104D r0x104E r0x104F ] = recv ___fssub [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVF	STK03,W
	MOVWF	r0x100C
	MOVF	STK04,W
	MOVWF	r0x100D
	MOVF	STK05,W
	MOVWF	r0x100E
	MOVF	STK06,W
	BANKSEL	___fssub_fl2_1_1
	MOVWF	(___fssub_fl2_1_1 + 0)
	BANKSEL	r0x100F
	MOVWF	r0x100F
;[ICODE] fssub.c:59: 	iTemp2 [k7 lr5:6 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat] = &[___fssub_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fssub.c:59: 	*(iTemp2 [k7 lr5:6 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat]) := iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ ___fssub_a1_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]
;gen.c:5947: size=3/4, offset=0, AOP_TYPE(res)=8
;;99	MOVF	r0x100B,W
;gen.c:5947: size=2/4, offset=1, AOP_TYPE(res)=8
;	.line	59; "fssub.c"	fl1.f = a1;
	MOVF	r0x100A,W
	BANKSEL	___fssub_fl1_1_1
	MOVWF	(___fssub_fl1_1_1 + 1)
;gen.c:5947: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x1009
	MOVF	r0x1009,W
	BANKSEL	___fssub_fl1_1_1
	MOVWF	(___fssub_fl1_1_1 + 2)
;gen.c:5947: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x1008
	MOVF	r0x1008,W
	BANKSEL	___fssub_fl1_1_1
	MOVWF	(___fssub_fl1_1_1 + 3)
;[ICODE] fssub.c:60: 	iTemp4 [k11 lr7:8 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat] = &[___fssub_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fssub.c:60: 	*(iTemp4 [k11 lr7:8 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat]) := iTemp1 [k4 lr4:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ ___fssub_a2_1_1}[r0x104C r0x104D r0x104E r0x104F ]
;gen.c:5947: size=3/4, offset=0, AOP_TYPE(res)=8
;;100	MOVF	r0x100F,W
;gen.c:5947: size=2/4, offset=1, AOP_TYPE(res)=8
;	.line	60; "fssub.c"	fl2.f = a2;
	BANKSEL	r0x100E
	MOVF	r0x100E,W
	BANKSEL	___fssub_fl2_1_1
	MOVWF	(___fssub_fl2_1_1 + 1)
;gen.c:5947: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x100D
	MOVF	r0x100D,W
	BANKSEL	___fssub_fl2_1_1
	MOVWF	(___fssub_fl2_1_1 + 2)
;gen.c:5947: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x100C
	MOVF	r0x100C,W
	BANKSEL	___fssub_fl2_1_1
	MOVWF	(___fssub_fl2_1_1 + 3)
;[ICODE] fssub.c:63: 	iTemp6 [k14 lr9:10 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat] = &[___fssub_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fssub.c:63: 	iTemp8 [k17 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp6 [k14 lr9:10 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat]]
;	.line	63; "fssub.c"	if (!fl2.l)
	MOVF	(___fssub_fl2_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fssub_fl2_1_1
	MOVF	(___fssub_fl2_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fssub_fl2_1_1
	MOVF	(___fssub_fl2_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fssub_fl2_1_1
	MOVF	(___fssub_fl2_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fssub.c:63: 	if iTemp8 [k17 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] != 0 goto _iffalse_0($2)
	MOVF	r0x100B,W
	IORWF	r0x100A,W
	IORWF	r0x1009,W
	IORWF	r0x1008,W
	BTFSS	STATUS,2
	GOTO	_00106_DS_
;[ICODE] fssub.c:64: 	iTemp9 [k18 lr12:13 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat] = &[___fssub_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fssub.c:64: 	iTemp11 [k21 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{volatile-float fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp9 [k18 lr12:13 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat]]
;	.line	64; "fssub.c"	return (fl1.f);
	BANKSEL	___fssub_fl1_1_1
	MOVF	(___fssub_fl1_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fssub_fl1_1_1
	MOVF	(___fssub_fl1_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fssub_fl1_1_1
	MOVF	(___fssub_fl1_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fssub_fl1_1_1
	MOVF	(___fssub_fl1_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fssub.c:64: 	ret iTemp11 [k21 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{volatile-float fixed}[r0x1048 r0x1049 r0x104A r0x104B ]
	MOVF	r0x100B,W
	MOVWF	STK02
	MOVF	r0x100A,W
	MOVWF	STK01
	MOVF	r0x1009,W
	MOVWF	STK00
	MOVF	r0x1008,W
	GOTO	_00109_DS_
;[ICODE] fssub.c:64:  _iffalse_0($2) :
;[ICODE] fssub.c:65: 	iTemp12 [k22 lr16:17 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat] = &[___fssub_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fssub.c:65: 	iTemp14 [k25 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp12 [k22 lr16:17 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat]]
_00106_DS_
;	.line	65; "fssub.c"	if (!fl1.l)
	BANKSEL	___fssub_fl1_1_1
	MOVF	(___fssub_fl1_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fssub_fl1_1_1
	MOVF	(___fssub_fl1_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fssub_fl1_1_1
	MOVF	(___fssub_fl1_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fssub_fl1_1_1
	MOVF	(___fssub_fl1_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fssub.c:65: 	if iTemp14 [k25 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] != 0 goto _iffalse_1($4)
	MOVF	r0x100B,W
	IORWF	r0x100A,W
	IORWF	r0x1009,W
	IORWF	r0x1008,W
	BTFSS	STATUS,2
	GOTO	_00108_DS_
;[ICODE] fssub.c:66: 	iTemp15 [k26 lr19:20 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat] = &[___fssub_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fssub.c:66: 	iTemp17 [k29 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp15 [k26 lr19:20 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat]]
;	.line	66; "fssub.c"	return (-fl2.f);
	BANKSEL	___fssub_fl2_1_1
	MOVF	(___fssub_fl2_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fssub_fl2_1_1
	MOVF	(___fssub_fl2_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fssub_fl2_1_1
	MOVF	(___fssub_fl2_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fssub_fl2_1_1
	MOVF	(___fssub_fl2_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
	XORLW	0x80
	MOVWF	r0x1008
	MOVF	r0x1009,W
	MOVF	r0x100A,W
	MOVF	r0x100B,W
	MOVWF	STK02
	MOVF	r0x100A,W
	MOVWF	STK01
	MOVF	r0x1009,W
	MOVWF	STK00
	MOVF	r0x1008,W
	GOTO	_00109_DS_
;[ICODE] fssub.c:66:  _iffalse_1($4) :
;[ICODE] fssub.c:69: 	iTemp19 [k31 lr24:28 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat] = &[___fssub_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fssub.c:69: 	iTemp21 [k34 lr25:26 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat] = &[___fssub_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fssub.c:69: 	iTemp23 [k37 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp21 [k34 lr25:26 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat]]
_00108_DS_
;	.line	69; "fssub.c"	fl2.l ^= SIGNBIT;
	BANKSEL	___fssub_fl2_1_1
	MOVF	(___fssub_fl2_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fssub_fl2_1_1
	MOVF	(___fssub_fl2_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fssub_fl2_1_1
	MOVF	(___fssub_fl2_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fssub_fl2_1_1
	MOVF	(___fssub_fl2_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fssub.c:69: 	iTemp25 [k39 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp23 [k37 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] ^ 0x80000000 {unsigned-long-int literal}
	MOVLW	0x80
	XORWF	r0x1008,F
;[ICODE] fssub.c:69: 	*(iTemp19 [k31 lr24:28 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat]) := iTemp25 [k39 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x1048 r0x1049 r0x104A r0x104B ]
;gen.c:5947: size=3/4, offset=0, AOP_TYPE(res)=8
	MOVF	r0x100B,W
	BANKSEL	___fssub_fl2_1_1
	MOVWF	(___fssub_fl2_1_1 + 0)
;gen.c:5947: size=2/4, offset=1, AOP_TYPE(res)=8
	BANKSEL	r0x100A
	MOVF	r0x100A,W
	BANKSEL	___fssub_fl2_1_1
	MOVWF	(___fssub_fl2_1_1 + 1)
;gen.c:5947: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x1009
	MOVF	r0x1009,W
	BANKSEL	___fssub_fl2_1_1
	MOVWF	(___fssub_fl2_1_1 + 2)
;gen.c:5947: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x1008
	MOVF	r0x1008,W
	BANKSEL	___fssub_fl2_1_1
	MOVWF	(___fssub_fl2_1_1 + 3)
;[ICODE] fssub.c:70: 	iTemp27 [k41 lr29:30 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat] = &[___fssub_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fssub.c:70: 	iTemp29 [k44 lr30:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{volatile-float fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp27 [k41 lr29:30 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat]]
;	.line	70; "fssub.c"	return fl1.f + fl2.f; 
	BANKSEL	___fssub_fl1_1_1
	MOVF	(___fssub_fl1_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fssub_fl1_1_1
	MOVF	(___fssub_fl1_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fssub_fl1_1_1
	MOVF	(___fssub_fl1_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fssub_fl1_1_1
	MOVF	(___fssub_fl1_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fssub.c:70: 	iTemp30 [k45 lr31:32 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat] = &[___fssub_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fssub.c:70: 	iTemp32 [k48 lr32:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float fixed}[r0x104C r0x104D r0x104E r0x104F ] = @[iTemp30 [k45 lr31:32 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat]]
	BANKSEL	___fssub_fl2_1_1
	MOVF	(___fssub_fl2_1_1 + 0),W
	BANKSEL	r0x100F
	MOVWF	r0x100F
	BANKSEL	___fssub_fl2_1_1
	MOVF	(___fssub_fl2_1_1 + 1),W
	BANKSEL	r0x100E
	MOVWF	r0x100E
	BANKSEL	___fssub_fl2_1_1
	MOVF	(___fssub_fl2_1_1 + 2),W
	BANKSEL	r0x100D
	MOVWF	r0x100D
	BANKSEL	___fssub_fl2_1_1
	MOVF	(___fssub_fl2_1_1 + 3),W
	BANKSEL	r0x100C
	MOVWF	r0x100C
;[ICODE] fssub.c:70: 	send iTemp29 [k44 lr30:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{volatile-float fixed}[r0x1048 r0x1049 r0x104A r0x104B ]{argreg = 1}
;[ICODE] fssub.c:70: 	send iTemp32 [k48 lr32:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float fixed}[r0x104C r0x104D r0x104E r0x104F ]{argreg = 1}
;[ICODE] fssub.c:70: 	iTemp33 [k49 lr35:36 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = call ___fsadd [k50 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVF	r0x100F,W
	MOVWF	STK06
	MOVF	r0x100E,W
	MOVWF	STK05
	MOVF	r0x100D,W
	MOVWF	STK04
	MOVF	r0x100C,W
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
;[ICODE] fssub.c:70:  _return($5) :
;[ICODE] fssub.c:70: 	eproc ___fssub [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
_00109_DS_
	RETURN	
; exit point of ___fssub


;	code size estimation:
;	  157+   81 =   238 instructions (  638 byte)

	end
