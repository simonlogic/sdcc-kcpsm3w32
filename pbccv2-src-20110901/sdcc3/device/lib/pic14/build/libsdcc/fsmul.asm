;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6064 (Nov 22 2010) (Linux)
; This file was generated Mon Nov 22 22:55:44 2010
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"fsmul.c"
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
	extern	___fsdiv
	extern	___fslt
	extern	___fseq
	extern	___fsneq
	extern	___fsgt
	extern	__mullong

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
	global	___fsmul

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_fsmul_0	udata
r0x100B	res	1
r0x100A	res	1
r0x1009	res	1
r0x1008	res	1
r0x100F	res	1
r0x100E	res	1
r0x100D	res	1
r0x100C	res	1
r0x1010	res	1
r0x1011	res	1
r0x1012	res	1
r0x1013	res	1
r0x1014	res	1
r0x1015	res	1
r0x1016	res	1
r0x1017	res	1
r0x1018	res	1
r0x1019	res	1
r0x101A	res	1
___fsmul_fl1_1_1	res	4
___fsmul_fl2_1_1	res	4
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
code_fsmul	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  ___fsmul	;Function start
; 2 exit points
;has an exit
;functions called:
;   __mullong
;   __mullong
;   __mullong
;   __mullong
;   __mullong
;   __mullong
;26 compiler assigned registers:
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
;   r0x101A
;; Starting pCode block
;[ICODE] fsmul.c:55:  _entry($14) :
;[ICODE] fsmul.c:55: 	proc ___fsmul [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
___fsmul	;Function start
; 2 exit points
;[ICODE] fsmul.c:55: iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ ___fsmul_a1_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = recv ___fsmul [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
;	.line	55; "fsmul.c"	float __fsmul (float a1, float a2) _FS_REENTRANT
	BANKSEL	r0x1008
	MOVWF	r0x1008
	MOVF	STK00,W
	MOVWF	r0x1009
	MOVF	STK01,W
	MOVWF	r0x100A
	MOVF	STK02,W
	BANKSEL	___fsmul_fl1_1_1
	MOVWF	(___fsmul_fl1_1_1 + 0)
	BANKSEL	r0x100B
	MOVWF	r0x100B
;[ICODE] fsmul.c:55: iTemp1 [k4 lr4:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ ___fsmul_a2_1_1}[r0x104C r0x104D r0x104E r0x104F ] = recv ___fsmul [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVF	STK03,W
	MOVWF	r0x100C
	MOVF	STK04,W
	MOVWF	r0x100D
	MOVF	STK05,W
	MOVWF	r0x100E
	MOVF	STK06,W
	BANKSEL	___fsmul_fl2_1_1
	MOVWF	(___fsmul_fl2_1_1 + 0)
	BANKSEL	r0x100F
	MOVWF	r0x100F
;[ICODE] fsmul.c:62: 	iTemp2 [k7 lr5:6 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsmul.c:62: 	*(iTemp2 [k7 lr5:6 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat]) := iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ ___fsmul_a1_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]
;gen.c:5947: size=3/4, offset=0, AOP_TYPE(res)=8
;;99	MOVF	r0x100B,W
;gen.c:5947: size=2/4, offset=1, AOP_TYPE(res)=8
;	.line	62; "fsmul.c"	fl1.f = a1;
	MOVF	r0x100A,W
	BANKSEL	___fsmul_fl1_1_1
	MOVWF	(___fsmul_fl1_1_1 + 1)
;gen.c:5947: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x1009
	MOVF	r0x1009,W
	BANKSEL	___fsmul_fl1_1_1
	MOVWF	(___fsmul_fl1_1_1 + 2)
;gen.c:5947: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x1008
	MOVF	r0x1008,W
	BANKSEL	___fsmul_fl1_1_1
	MOVWF	(___fsmul_fl1_1_1 + 3)
;[ICODE] fsmul.c:63: 	iTemp4 [k11 lr7:8 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat] = &[___fsmul_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsmul.c:63: 	*(iTemp4 [k11 lr7:8 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat]) := iTemp1 [k4 lr4:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ ___fsmul_a2_1_1}[r0x104C r0x104D r0x104E r0x104F ]
;gen.c:5947: size=3/4, offset=0, AOP_TYPE(res)=8
;;103	MOVF	r0x100F,W
;gen.c:5947: size=2/4, offset=1, AOP_TYPE(res)=8
;	.line	63; "fsmul.c"	fl2.f = a2;
	BANKSEL	r0x100E
	MOVF	r0x100E,W
	BANKSEL	___fsmul_fl2_1_1
	MOVWF	(___fsmul_fl2_1_1 + 1)
;gen.c:5947: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x100D
	MOVF	r0x100D,W
	BANKSEL	___fsmul_fl2_1_1
	MOVWF	(___fsmul_fl2_1_1 + 2)
;gen.c:5947: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x100C
	MOVF	r0x100C,W
	BANKSEL	___fsmul_fl2_1_1
	MOVWF	(___fsmul_fl2_1_1 + 3)
;[ICODE] fsmul.c:65: 	iTemp6 [k14 lr9:10 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsmul.c:65: 	iTemp8 [k17 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp6 [k14 lr9:10 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat]]
;	.line	65; "fsmul.c"	if (!fl1.l || !fl2.l)
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsmul.c:65: 	if iTemp8 [k17 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] == 0 goto _iftrue_0($1)
	MOVF	r0x100B,W
	IORWF	r0x100A,W
	IORWF	r0x1009,W
	IORWF	r0x1008,W
	BTFSC	STATUS,2
	GOTO	_00105_DS_
;[ICODE] fsmul.c:65: 	iTemp9 [k18 lr12:13 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat] = &[___fsmul_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsmul.c:65: 	iTemp11 [k21 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp9 [k18 lr12:13 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat]]
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsmul.c:65: 	if iTemp11 [k21 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] != 0 goto _iffalse_0($2)
	MOVF	r0x100B,W
	IORWF	r0x100A,W
	IORWF	r0x1009,W
	IORWF	r0x1008,W
	BTFSS	STATUS,2
	GOTO	_00106_DS_
;[ICODE] fsmul.c:65:  _iftrue_0($1) :
;[ICODE] fsmul.c:66: 	ret 0 {float literal}
_00105_DS_
;	.line	66; "fsmul.c"	return (0);
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x00
	GOTO	_00117_DS_
;[ICODE] fsmul.c:66:  _iffalse_0($2) :
;[ICODE] fsmul.c:69: 	iTemp13 [k24 lr18:19 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsmul.c:69: 	iTemp15 [k27 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp13 [k24 lr18:19 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat]]
_00106_DS_
;	.line	69; "fsmul.c"	sign = SIGN (fl1.l) ^ SIGN (fl2.l);
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsmul.c:69: 	iTemp16 [k28 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x104C r0x104D r0x104E r0x104F ] = iTemp15 [k27 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] >> 0x1f {unsigned-char literal}
	RLF	r0x1008,W
	CLRF	r0x100F
	RLF	r0x100F,F
	CLRF	r0x100E
	CLRF	r0x100D
	CLRF	r0x100C
;[ICODE] fsmul.c:69: 	iTemp17 [k29 lr21:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp16 [k28 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x104C r0x104D r0x104E r0x104F ] & 0x1 {unsigned-long-int literal}
	MOVLW	0x01
	ANDWF	r0x100F,W
	MOVWF	r0x100B
	CLRF	r0x100A
	CLRF	r0x1009
	CLRF	r0x1008
;[ICODE] fsmul.c:69: 	iTemp18 [k30 lr22:23 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat] = &[___fsmul_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsmul.c:69: 	iTemp20 [k33 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x104C r0x104D r0x104E r0x104F ] = @[iTemp18 [k30 lr22:23 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat]]
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 0),W
	BANKSEL	r0x100F
	MOVWF	r0x100F
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 1),W
	BANKSEL	r0x100E
	MOVWF	r0x100E
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 2),W
	BANKSEL	r0x100D
	MOVWF	r0x100D
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 3),W
	BANKSEL	r0x100C
	MOVWF	r0x100C
;[ICODE] fsmul.c:69: 	iTemp21 [k34 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1050 r0x1051 r0x1052 r0x1053 ] = iTemp20 [k33 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x104C r0x104D r0x104E r0x104F ] >> 0x1f {unsigned-char literal}
	RLF	r0x100C,W
	CLRF	r0x1010
	RLF	r0x1010,F
	CLRF	r0x1011
	CLRF	r0x1012
	CLRF	r0x1013
;[ICODE] fsmul.c:69: 	iTemp22 [k35 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104C r0x104D r0x104E r0x104F ] = iTemp21 [k34 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1050 r0x1051 r0x1052 r0x1053 ] & 0x1 {unsigned-long-int literal}
	MOVLW	0x01
	ANDWF	r0x1010,W
	MOVWF	r0x100F
	CLRF	r0x100E
	CLRF	r0x100D
	CLRF	r0x100C
;[ICODE] fsmul.c:69: 	iTemp23 [k36 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp17 [k29 lr21:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] ^ iTemp22 [k35 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104C r0x104D r0x104E r0x104F ]
	MOVF	r0x100F,W
	XORWF	r0x100B,F
	MOVLW	0x00
	XORWF	r0x100A,F
	MOVLW	0x00
	XORWF	r0x1009,F
	MOVLW	0x00
	XORWF	r0x1008,F
;[ICODE] fsmul.c:69: 	iTemp12 [k22 lr27:127 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ ___fsmul_sign_1_1}[r0x104C ] = (char fixed)iTemp23 [k36 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ]
	MOVF	r0x100B,W
	MOVWF	r0x100F
;[ICODE] fsmul.c:70: 	iTemp26 [k40 lr29:30 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsmul.c:70: 	iTemp28 [k43 lr30:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp26 [k40 lr29:30 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat]]
;	.line	70; "fsmul.c"	exp = EXP (fl1.l) - EXCESS;
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsmul.c:70: 	iTemp29 [k44 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x104D r0x104E r0x104F r0x1050 ] = iTemp28 [k43 lr30:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] >> 0x17 {const-unsigned-char literal}
	RLF	r0x1009,W
	RLF	r0x1008,W
	MOVWF	r0x100B
	MOVWF	r0x100E
	CLRF	r0x100D
	RLF	r0x100D,F
	CLRF	r0x100C
	CLRF	r0x1010
;[ICODE] fsmul.c:70: 	iTemp30 [k45 lr32:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp29 [k44 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x104D r0x104E r0x104F r0x1050 ] & 0xff {unsigned-long-int literal}
;;104	MOVF	r0x100E,W
	CLRF	r0x100A
	CLRF	r0x1009
	CLRF	r0x1008
;[ICODE] fsmul.c:70: 	iTemp31 [k46 lr33:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp30 [k45 lr32:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] - 0x7e {unsigned-long-int literal}
	MOVLW	0x82
	ADDWF	r0x100B,F
	MOVLW	0xff
	BTFSS	STATUS,0
	ADDWF	r0x100A,F
	MOVLW	0xff
	BTFSS	STATUS,0
	ADDWF	r0x1009,F
	MOVLW	0xff
	BTFSS	STATUS,0
	ADDWF	r0x1008,F
;[ICODE] fsmul.c:70: 	iTemp25 [k38 lr34:133 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsmul_exp_1_1}[r0x104D r0x104E ] = (int fixed)iTemp31 [k46 lr33:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ]
	MOVF	r0x100B,W
	MOVWF	r0x100E
	MOVF	r0x100A,W
	MOVWF	r0x100D
;[ICODE] fsmul.c:71: 	iTemp33 [k48 lr36:37 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat] = &[___fsmul_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsmul.c:71: 	iTemp35 [k51 lr37:38 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp33 [k48 lr36:37 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat]]
;	.line	71; "fsmul.c"	exp += EXP (fl2.l);
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsmul.c:71: 	iTemp36 [k52 lr38:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x104F r0x1050 r0x1051 r0x1052 ] = iTemp35 [k51 lr37:38 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] >> 0x17 {const-unsigned-char literal}
	RLF	r0x1009,W
	RLF	r0x1008,W
	MOVWF	r0x100B
	MOVWF	r0x100C
	CLRF	r0x1010
	RLF	r0x1010,F
	CLRF	r0x1011
	CLRF	r0x1012
;[ICODE] fsmul.c:71: 	iTemp37 [k53 lr39:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp36 [k52 lr38:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x104F r0x1050 r0x1051 r0x1052 ] & 0xff {unsigned-long-int literal}
;;105	MOVF	r0x100C,W
	CLRF	r0x100A
	CLRF	r0x1009
	CLRF	r0x1008
;[ICODE] fsmul.c:71: 	iTemp38 [k54 lr40:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104F r0x1050 r0x1051 r0x1052 ] = (unsigned-long-int fixed)iTemp25 [k38 lr34:133 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsmul_exp_1_1}[r0x104D r0x104E ]
	MOVF	r0x100E,W
	MOVWF	r0x100C
	MOVF	r0x100D,W
	MOVWF	r0x1010
	MOVLW	0x00
	BTFSC	r0x1010,7
	MOVLW	0xff
	MOVWF	r0x1012
	MOVWF	r0x1011
;[ICODE] fsmul.c:71: 	iTemp39 [k55 lr41:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp38 [k54 lr40:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104F r0x1050 r0x1051 r0x1052 ] + iTemp37 [k53 lr39:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ]
	MOVF	r0x100B,W
	ADDWF	r0x100C,W
	MOVWF	r0x100B
	MOVF	r0x1010,W
	BTFSC	STATUS,0
	INCFSZ	r0x1010,W
	ADDWF	r0x100A,F
	MOVF	r0x1011,W
	BTFSC	STATUS,0
	INCFSZ	r0x1011,W
	ADDWF	r0x1009,F
	MOVF	r0x1012,W
	BTFSC	STATUS,0
	INCFSZ	r0x1012,W
	ADDWF	r0x1008,F
;[ICODE] fsmul.c:71: 	iTemp25 [k38 lr34:133 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsmul_exp_1_1}[r0x104D r0x104E ] = (int fixed)iTemp39 [k55 lr41:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ]
	MOVF	r0x100B,W
	MOVWF	r0x100E
	MOVF	r0x100A,W
	MOVWF	r0x100D
;[ICODE] fsmul.c:73: 	iTemp41 [k57 lr44:49 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsmul.c:73: 	iTemp43 [k60 lr45:46 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsmul.c:73: 	iTemp45 [k63 lr46:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp43 [k60 lr45:46 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat]]
;	.line	73; "fsmul.c"	fl1.l = MANT (fl1.l);
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsmul.c:73: 	iTemp46 [k64 lr47:48 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp45 [k63 lr46:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] & 0x7fffff {unsigned-long-int literal}
	BCF	r0x1009,7
	CLRF	r0x1008
;[ICODE] fsmul.c:73: 	iTemp47 [k65 lr48:49 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp46 [k64 lr47:48 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x1048 r0x1049 r0x104A r0x104B ] | 0x800000 {unsigned-long-int literal}
	BSF	r0x1009,7
;[ICODE] fsmul.c:73: 	*(iTemp41 [k57 lr44:49 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat]) := iTemp47 [k65 lr48:49 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x1048 r0x1049 r0x104A r0x104B ]
;gen.c:5947: size=3/4, offset=0, AOP_TYPE(res)=8
	MOVF	r0x100B,W
	BANKSEL	___fsmul_fl1_1_1
	MOVWF	(___fsmul_fl1_1_1 + 0)
;gen.c:5947: size=2/4, offset=1, AOP_TYPE(res)=8
	BANKSEL	r0x100A
	MOVF	r0x100A,W
	BANKSEL	___fsmul_fl1_1_1
	MOVWF	(___fsmul_fl1_1_1 + 1)
;gen.c:5947: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x1009
	MOVF	r0x1009,W
	BANKSEL	___fsmul_fl1_1_1
	MOVWF	(___fsmul_fl1_1_1 + 2)
;gen.c:5947: size=0/4, offset=3, AOP_TYPE(res)=8
	MOVLW	0x00
	MOVWF	(___fsmul_fl1_1_1 + 3)
;[ICODE] fsmul.c:74: 	iTemp48 [k66 lr50:55 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat] = &[___fsmul_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsmul.c:74: 	iTemp50 [k69 lr51:52 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat] = &[___fsmul_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsmul.c:74: 	iTemp52 [k72 lr52:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp50 [k69 lr51:52 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat]]
;	.line	74; "fsmul.c"	fl2.l = MANT (fl2.l);
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsmul.c:74: 	iTemp53 [k73 lr53:54 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp52 [k72 lr52:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] & 0x7fffff {unsigned-long-int literal}
	BCF	r0x1009,7
	CLRF	r0x1008
;[ICODE] fsmul.c:74: 	iTemp54 [k74 lr54:55 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp53 [k73 lr53:54 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x1048 r0x1049 r0x104A r0x104B ] | 0x800000 {unsigned-long-int literal}
	BSF	r0x1009,7
;[ICODE] fsmul.c:74: 	*(iTemp48 [k66 lr50:55 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat]) := iTemp54 [k74 lr54:55 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x1048 r0x1049 r0x104A r0x104B ]
;gen.c:5947: size=3/4, offset=0, AOP_TYPE(res)=8
	MOVF	r0x100B,W
	BANKSEL	___fsmul_fl2_1_1
	MOVWF	(___fsmul_fl2_1_1 + 0)
;gen.c:5947: size=2/4, offset=1, AOP_TYPE(res)=8
	BANKSEL	r0x100A
	MOVF	r0x100A,W
	BANKSEL	___fsmul_fl2_1_1
	MOVWF	(___fsmul_fl2_1_1 + 1)
;gen.c:5947: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x1009
	MOVF	r0x1009,W
	BANKSEL	___fsmul_fl2_1_1
	MOVWF	(___fsmul_fl2_1_1 + 2)
;gen.c:5947: size=0/4, offset=3, AOP_TYPE(res)=8
	MOVLW	0x00
	MOVWF	(___fsmul_fl2_1_1 + 3)
;[ICODE] fsmul.c:77: 	iTemp56 [k77 lr56:57 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsmul.c:77: 	iTemp58 [k80 lr57:58 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp56 [k77 lr56:57 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat]]
;	.line	77; "fsmul.c"	result = (fl1.l >> 8) * (fl2.l >> 8);
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 1),W
	BANKSEL	r0x100C
	MOVWF	r0x100C
	MOVWF	r0x100A
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 2),W
	BANKSEL	r0x1010
	MOVWF	r0x1010
	MOVWF	r0x1009
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 3),W
	BANKSEL	r0x1011
	MOVWF	r0x1011
	MOVWF	r0x1008
;[ICODE] fsmul.c:77: 	iTemp59 [k81 lr58:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x104F r0x1050 r0x1051 r0x1052 ] = iTemp58 [k80 lr57:58 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] >> 0x8 {const-unsigned-char literal}
;;120	MOVF	r0x100A,W
;;121	MOVF	r0x1009,W
;;122	MOVF	r0x1008,W
	CLRF	r0x1012
;[ICODE] fsmul.c:77: 	iTemp60 [k82 lr59:60 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat] = &[___fsmul_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsmul.c:77: 	iTemp62 [k85 lr60:61 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp60 [k82 lr59:60 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat]]
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 1),W
	BANKSEL	r0x1013
	MOVWF	r0x1013
	MOVWF	r0x100A
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 2),W
	BANKSEL	r0x1014
	MOVWF	r0x1014
	MOVWF	r0x1009
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 3),W
	BANKSEL	r0x1015
	MOVWF	r0x1015
	MOVWF	r0x1008
;[ICODE] fsmul.c:77: 	iTemp63 [k86 lr61:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1053 r0x1054 r0x1055 r0x1056 ] = iTemp62 [k85 lr60:61 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] >> 0x8 {const-unsigned-char literal}
;;100	MOVF	r0x100A,W
;;101	MOVF	r0x1009,W
;;102	MOVF	r0x1008,W
	CLRF	r0x1016
;[ICODE] fsmul.c:77: 	send iTemp59 [k81 lr58:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x104F r0x1050 r0x1051 r0x1052 ]{argreg = 1}
;[ICODE] fsmul.c:77: 	send iTemp63 [k86 lr61:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1053 r0x1054 r0x1055 r0x1056 ]{argreg = 1}
;[ICODE] fsmul.c:77: 	iTemp55 [k75 lr64:136 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___fsmul_result_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = call __mullong [k144 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function    ( long-int fixed, long-int fixed)  fixed}
	MOVF	r0x1013,W
	MOVWF	STK06
	MOVF	r0x1014,W
	MOVWF	STK05
	MOVF	r0x1015,W
	MOVWF	STK04
	MOVLW	0x00
	MOVWF	STK03
	MOVF	r0x100C,W
	MOVWF	STK02
	MOVF	r0x1010,W
	MOVWF	STK01
	MOVF	r0x1011,W
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	__mullong
	CALL	__mullong
	PAGESEL	$
	BANKSEL	r0x1008
	MOVWF	r0x1008
	MOVF	STK00,W
	MOVWF	r0x1009
	MOVF	STK01,W
	MOVWF	r0x100A
	MOVF	STK02,W
	MOVWF	r0x100B
;[ICODE] fsmul.c:78: 	iTemp65 [k88 lr66:67 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsmul.c:78: 	iTemp67 [k91 lr67:68 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x104F r0x1050 r0x1051 r0x1052 ] = @[iTemp65 [k88 lr66:67 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat]]
;	.line	78; "fsmul.c"	result += ((fl1.l & (unsigned long) 0xFF) * (fl2.l >> 8)) >> 8;
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 0),W
	BANKSEL	r0x100C
	MOVWF	r0x100C
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 1),W
	BANKSEL	r0x1010
	MOVWF	r0x1010
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 2),W
	BANKSEL	r0x1011
	MOVWF	r0x1011
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 3),W
	BANKSEL	r0x1012
	MOVWF	r0x1012
;[ICODE] fsmul.c:78: 	iTemp68 [k92 lr68:73 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x104F r0x1050 r0x1051 r0x1052 ] = iTemp67 [k91 lr67:68 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x104F r0x1050 r0x1051 r0x1052 ] & 0xff {unsigned-long-int literal}
	CLRF	r0x1010
	CLRF	r0x1011
	CLRF	r0x1012
;[ICODE] fsmul.c:78: 	iTemp69 [k93 lr69:70 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat] = &[___fsmul_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsmul.c:78: 	iTemp71 [k96 lr70:71 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1053 r0x1054 r0x1055 r0x1056 ] = @[iTemp69 [k93 lr69:70 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat]]
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 0),W
	BANKSEL	r0x1013
	MOVWF	r0x1013
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 1),W
	BANKSEL	r0x1014
	MOVWF	r0x1014
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 2),W
	BANKSEL	r0x1015
	MOVWF	r0x1015
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 3),W
	BANKSEL	r0x1016
	MOVWF	r0x1016
;[ICODE] fsmul.c:78: 	iTemp72 [k97 lr71:73 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1057 r0x1058 r0x1059 r0x105A ] = iTemp71 [k96 lr70:71 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1053 r0x1054 r0x1055 r0x1056 ] >> 0x8 {const-unsigned-char literal}
;;115	MOVF	r0x1014,W
;;117	MOVF	r0x1015,W
;;119	MOVF	r0x1016,W
	CLRF	r0x101A
;[ICODE] fsmul.c:78: 	send iTemp68 [k92 lr68:73 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x104F r0x1050 r0x1051 r0x1052 ]{argreg = 1}
;[ICODE] fsmul.c:78: 	send iTemp72 [k97 lr71:73 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1057 r0x1058 r0x1059 r0x105A ]{argreg = 1}
;[ICODE] fsmul.c:78: 	iTemp73 [k98 lr74:75 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x104F r0x1050 r0x1051 r0x1052 ] = call __mullong [k144 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function    ( long-int fixed, long-int fixed)  fixed}
;;114	MOVF	r0x1017,W
	MOVF	r0x1014,W
	MOVWF	r0x1017
	MOVWF	STK06
;;116	MOVF	r0x1018,W
	MOVF	r0x1015,W
	MOVWF	r0x1018
	MOVWF	STK05
;;118	MOVF	r0x1019,W
	MOVF	r0x1016,W
	MOVWF	r0x1019
	MOVWF	STK04
	MOVLW	0x00
	MOVWF	STK03
	MOVF	r0x100C,W
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	__mullong
	CALL	__mullong
	PAGESEL	$
	BANKSEL	r0x1015
	MOVWF	r0x1015
	MOVWF	r0x1012
	MOVF	STK00,W
	MOVWF	r0x1014
	MOVWF	r0x1011
	MOVF	STK01,W
	MOVWF	r0x1010
	MOVF	STK02,W
	MOVWF	r0x100C
;[ICODE] fsmul.c:78: 	iTemp74 [k99 lr75:76 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1053 r0x1054 r0x1055 r0x1056 ] = iTemp73 [k98 lr74:75 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x104F r0x1050 r0x1051 r0x1052 ] >> 0x8 {const-unsigned-char literal}
;;110	MOVF	r0x1010,W
;;123	MOVF	r0x1011,W
;;124	MOVF	r0x1012,W
	CLRF	r0x1016
;[ICODE] fsmul.c:78: 	iTemp55 [k75 lr64:136 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___fsmul_result_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp55 [k75 lr64:136 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___fsmul_result_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] + iTemp74 [k99 lr75:76 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1053 r0x1054 r0x1055 r0x1056 ]
;;109	MOVF	r0x1013,W
	MOVF	r0x1010,W
	MOVWF	r0x1013
	ADDWF	r0x100B,F
	MOVF	r0x1014,W
	BTFSC	STATUS,0
	INCFSZ	r0x1014,W
	ADDWF	r0x100A,F
	MOVF	r0x1015,W
	BTFSC	STATUS,0
	INCFSZ	r0x1015,W
	ADDWF	r0x1009,F
	MOVF	r0x1016,W
	BTFSC	STATUS,0
	INCFSZ	r0x1016,W
	ADDWF	r0x1008,F
;[ICODE] fsmul.c:79: 	iTemp76 [k101 lr78:79 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat] = &[___fsmul_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsmul.c:79: 	iTemp78 [k104 lr79:80 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x104F r0x1050 r0x1051 r0x1052 ] = @[iTemp76 [k101 lr78:79 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat]]
;	.line	79; "fsmul.c"	result += ((fl2.l & (unsigned long) 0xFF) * (fl1.l >> 8)) >> 8;
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 0),W
	BANKSEL	r0x100C
	MOVWF	r0x100C
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 1),W
	BANKSEL	r0x1010
	MOVWF	r0x1010
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 2),W
	BANKSEL	r0x1011
	MOVWF	r0x1011
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 3),W
	BANKSEL	r0x1012
	MOVWF	r0x1012
;[ICODE] fsmul.c:79: 	iTemp79 [k105 lr80:85 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x104F r0x1050 r0x1051 r0x1052 ] = iTemp78 [k104 lr79:80 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x104F r0x1050 r0x1051 r0x1052 ] & 0xff {unsigned-long-int literal}
	CLRF	r0x1010
	CLRF	r0x1011
	CLRF	r0x1012
;[ICODE] fsmul.c:79: 	iTemp80 [k106 lr81:82 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsmul.c:79: 	iTemp82 [k109 lr82:83 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1053 r0x1054 r0x1055 r0x1056 ] = @[iTemp80 [k106 lr81:82 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat]]
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 0),W
	BANKSEL	r0x1013
	MOVWF	r0x1013
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 1),W
	BANKSEL	r0x1017
	MOVWF	r0x1017
	MOVWF	r0x1014
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 2),W
	BANKSEL	r0x1018
	MOVWF	r0x1018
	MOVWF	r0x1015
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 3),W
	BANKSEL	r0x1019
	MOVWF	r0x1019
	MOVWF	r0x1016
;[ICODE] fsmul.c:79: 	iTemp83 [k110 lr83:85 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1057 r0x1058 r0x1059 r0x105A ] = iTemp82 [k109 lr82:83 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1053 r0x1054 r0x1055 r0x1056 ] >> 0x8 {const-unsigned-char literal}
;;111	MOVF	r0x1014,W
;;112	MOVF	r0x1015,W
;;113	MOVF	r0x1016,W
	CLRF	r0x101A
;[ICODE] fsmul.c:79: 	send iTemp79 [k105 lr80:85 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x104F r0x1050 r0x1051 r0x1052 ]{argreg = 1}
;[ICODE] fsmul.c:79: 	send iTemp83 [k110 lr83:85 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1057 r0x1058 r0x1059 r0x105A ]{argreg = 1}
;[ICODE] fsmul.c:79: 	iTemp84 [k111 lr86:87 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x104F r0x1050 r0x1051 r0x1052 ] = call __mullong [k144 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function    ( long-int fixed, long-int fixed)  fixed}
	MOVF	r0x1017,W
	MOVWF	STK06
	MOVF	r0x1018,W
	MOVWF	STK05
	MOVF	r0x1019,W
	MOVWF	STK04
	MOVLW	0x00
	MOVWF	STK03
	MOVF	r0x100C,W
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	__mullong
	CALL	__mullong
	PAGESEL	$
	BANKSEL	r0x1015
	MOVWF	r0x1015
	MOVWF	r0x1012
	MOVF	STK00,W
	MOVWF	r0x1014
	MOVWF	r0x1011
	MOVF	STK01,W
	MOVWF	r0x1013
	MOVWF	r0x1010
	MOVF	STK02,W
	MOVWF	r0x100C
;[ICODE] fsmul.c:79: 	iTemp85 [k112 lr87:88 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1053 r0x1054 r0x1055 r0x1056 ] = iTemp84 [k111 lr86:87 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x104F r0x1050 r0x1051 r0x1052 ] >> 0x8 {const-unsigned-char literal}
;;106	MOVF	r0x1010,W
;;107	MOVF	r0x1011,W
;;108	MOVF	r0x1012,W
	CLRF	r0x1016
;[ICODE] fsmul.c:79: 	iTemp55 [k75 lr64:136 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___fsmul_result_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp55 [k75 lr64:136 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___fsmul_result_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] + iTemp85 [k112 lr87:88 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1053 r0x1054 r0x1055 r0x1056 ]
	MOVF	r0x1013,W
	ADDWF	r0x100B,F
	MOVF	r0x1014,W
	BTFSC	STATUS,0
	INCFSZ	r0x1014,W
	ADDWF	r0x100A,F
	MOVF	r0x1015,W
	BTFSC	STATUS,0
	INCFSZ	r0x1015,W
	ADDWF	r0x1009,F
	MOVF	r0x1016,W
	BTFSC	STATUS,0
	INCFSZ	r0x1016,W
	ADDWF	r0x1008,F
;[ICODE] fsmul.c:82: 	iTemp55 [k75 lr64:136 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___fsmul_result_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp55 [k75 lr64:136 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___fsmul_result_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] + 0x40 {unsigned-long-int literal}
;	.line	82; "fsmul.c"	result += 0x40;
	MOVLW	0x40
	ADDWF	r0x100B,F
	BTFSC	STATUS,0
	INCF	r0x100A,F
	BTFSC	STATUS,2
	INCF	r0x1009,F
	BTFSC	STATUS,2
	INCF	r0x1008,F
;[ICODE] fsmul.c:84: 	iTemp88 [k115 lr92:93 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register} = iTemp55 [k75 lr64:136 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___fsmul_result_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] & 0x80000000 {unsigned-long-int literal}
;	.line	84; "fsmul.c"	if (result & SIGNBIT)
	BTFSS	r0x1008,7
	GOTO	_00109_DS_
;[ICODE] fsmul.c:84: 	if iTemp88 [k115 lr92:93 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register} == 0 goto _iffalse_1($5)
;[ICODE] fsmul.c:87: 	iTemp55 [k75 lr64:136 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___fsmul_result_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp55 [k75 lr64:136 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___fsmul_result_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] + 0x40 {unsigned-long-int literal}
;	.line	87; "fsmul.c"	result += 0x40;
	MOVLW	0x40
	ADDWF	r0x100B,F
	BTFSC	STATUS,0
	INCF	r0x100A,F
	BTFSC	STATUS,2
	INCF	r0x1009,F
	BTFSC	STATUS,2
	INCF	r0x1008,F
;[ICODE] fsmul.c:88: 	iTemp55 [k75 lr64:136 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___fsmul_result_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp55 [k75 lr64:136 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___fsmul_result_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] >> 0x8 {const-unsigned-char literal}
;	.line	88; "fsmul.c"	result >>= 8;
	MOVF	r0x100A,W
	MOVWF	r0x100B
	MOVF	r0x1009,W
	MOVWF	r0x100A
	MOVF	r0x1008,W
	MOVWF	r0x1009
	CLRF	r0x1008
;[ICODE] fsmul.c:88: 	 goto _ifend_1($6)
	GOTO	_00110_DS_
;[ICODE] fsmul.c:88:  _iffalse_1($5) :
;[ICODE] fsmul.c:92: 	iTemp55 [k75 lr64:136 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___fsmul_result_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp55 [k75 lr64:136 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___fsmul_result_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] >> 0x7 {const-unsigned-char literal}
_00109_DS_
;	.line	92; "fsmul.c"	result >>= 7;
	BANKSEL	r0x100B
	RLF	r0x100B,W
	RLF	r0x100A,W
	MOVWF	r0x100B
	RLF	r0x1009,W
	MOVWF	r0x100A
	RLF	r0x1008,W
	MOVWF	r0x1009
	CLRF	r0x1008
	RLF	r0x1008,F
;[ICODE] fsmul.c:93: 	iTemp25 [k38 lr34:133 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsmul_exp_1_1}[r0x104D r0x104E ] = iTemp25 [k38 lr34:133 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsmul_exp_1_1}[r0x104D r0x104E ] - 0x1 {const-unsigned-char literal}
;	.line	93; "fsmul.c"	exp--;
	MOVLW	0xff
	ADDWF	r0x100E,F
	BTFSS	STATUS,0
	DECF	r0x100D,F
;[ICODE] fsmul.c:93:  _ifend_1($6) :
;[ICODE] fsmul.c:96: 	iTemp55 [k75 lr64:136 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___fsmul_result_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp55 [k75 lr64:136 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___fsmul_result_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] & 0xff7fffff {unsigned-long-int literal}
_00110_DS_
;	.line	96; "fsmul.c"	result &= ~HIDDEN;
	BANKSEL	r0x1009
	BCF	r0x1009,7
;[ICODE] fsmul.c:99: 	iTemp95 [k122 lr107:108 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp25 [k38 lr34:133 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsmul_exp_1_1}[r0x104D r0x104E ] < 0x100 {const-int literal}
;signed compare: left < lit(0x100=256), size=2, mask=ffff
;	.line	99; "fsmul.c"	if (exp >= 0x100)
	MOVF	r0x100D,W
	ADDLW	0x80
	ADDLW	0x7f
	BTFSS	STATUS,2
	GOTO	_00129_DS_
	MOVLW	0x00
	SUBWF	r0x100E,W
_00129_DS_
	BTFSS	STATUS,0
	GOTO	_00115_DS_
;genSkipc:3057: created from rifx:0xbfc99184
;[ICODE] fsmul.c:99: 	if iTemp95 [k122 lr107:108 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto _iffalse_3($11)
;[ICODE] fsmul.c:100: 	iTemp96 [k123 lr109:117 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsmul.c:100: 	if iTemp12 [k22 lr27:127 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ ___fsmul_sign_1_1}[r0x104C ] == 0 goto iTempLbl0($15)
;	.line	100; "fsmul.c"	fl1.l = (sign ? SIGNBIT : 0) | 0x7F800000;
	BANKSEL	r0x100F
	MOVF	r0x100F,W
	BTFSC	STATUS,2
	GOTO	_00119_DS_
;[ICODE] fsmul.c:100: 	iTemp98 [k126 lr111:116 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x104F r0x1050 r0x1051 r0x1052 ] := 0x80000000 {unsigned-long-int literal}
	CLRF	r0x100C
	CLRF	r0x1010
	CLRF	r0x1011
	MOVLW	0x80
	MOVWF	r0x1012
;[ICODE] fsmul.c:100: 	 goto iTempLbl1($16)
	GOTO	_00120_DS_
;[ICODE] fsmul.c:100:  iTempLbl0($15) :
;[ICODE] fsmul.c:100: 	iTemp98 [k126 lr111:116 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x104F r0x1050 r0x1051 r0x1052 ] := 0x0 {unsigned-long-int literal}
_00119_DS_
	BANKSEL	r0x100C
	CLRF	r0x100C
	CLRF	r0x1010
	CLRF	r0x1011
	CLRF	r0x1012
;[ICODE] fsmul.c:100:  iTempLbl1($16) :
;[ICODE] fsmul.c:100: 	iTemp99 [k127 lr116:117 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-unsigned-long-int register}[r0x104F r0x1050 r0x1051 r0x1052 ] = iTemp98 [k126 lr111:116 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x104F r0x1050 r0x1051 r0x1052 ] | 0x7f800000 {const-unsigned-long-int literal}
_00120_DS_
	BANKSEL	r0x1011
	BSF	r0x1011,7
	MOVLW	0x7f
	IORWF	r0x1012,F
;[ICODE] fsmul.c:100: 	*(iTemp96 [k123 lr109:117 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat]) := iTemp99 [k127 lr116:117 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-unsigned-long-int register}[r0x104F r0x1050 r0x1051 r0x1052 ]
;gen.c:5947: size=3/4, offset=0, AOP_TYPE(res)=8
	MOVF	r0x100C,W
	BANKSEL	___fsmul_fl1_1_1
	MOVWF	(___fsmul_fl1_1_1 + 0)
;gen.c:5947: size=2/4, offset=1, AOP_TYPE(res)=8
	BANKSEL	r0x1010
	MOVF	r0x1010,W
	BANKSEL	___fsmul_fl1_1_1
	MOVWF	(___fsmul_fl1_1_1 + 1)
;gen.c:5947: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x1011
	MOVF	r0x1011,W
	BANKSEL	___fsmul_fl1_1_1
	MOVWF	(___fsmul_fl1_1_1 + 2)
;gen.c:5947: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x1012
	MOVF	r0x1012,W
	BANKSEL	___fsmul_fl1_1_1
	MOVWF	(___fsmul_fl1_1_1 + 3)
;[ICODE] fsmul.c:100: 	 goto _ifend_3($12)
	GOTO	_00116_DS_
;[ICODE] fsmul.c:100:  _iffalse_3($11) :
;[ICODE] fsmul.c:101: 	iTemp100 [k128 lr120:121 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp25 [k38 lr34:133 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsmul_exp_1_1}[r0x104D r0x104E ] < 0x0 {int literal}
;signed compare: left < lit(0x0=0), size=2, mask=ffff
_00115_DS_
;	.line	101; "fsmul.c"	else if (exp < 0)
	BSF	STATUS,0
	BANKSEL	r0x100D
	BTFSS	r0x100D,7
	BCF	STATUS,0
	BTFSS	STATUS,0
	GOTO	_00112_DS_
;genSkipc:3057: created from rifx:0xbfc99184
;[ICODE] fsmul.c:101: 	if iTemp100 [k128 lr120:121 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_2($8)
;[ICODE] fsmul.c:102: 	iTemp101 [k129 lr122:123 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsmul.c:102: 	*(iTemp101 [k129 lr122:123 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat]) := 0x0 {volatile-unsigned-long-int literal}
;gen.c:5947: size=3/4, offset=0, AOP_TYPE(res)=8
;	.line	102; "fsmul.c"	fl1.l = 0;
	BANKSEL	___fsmul_fl1_1_1
	CLRF	(___fsmul_fl1_1_1 + 0)
;gen.c:5947: size=2/4, offset=1, AOP_TYPE(res)=8
	CLRF	(___fsmul_fl1_1_1 + 1)
;gen.c:5947: size=1/4, offset=2, AOP_TYPE(res)=8
	CLRF	(___fsmul_fl1_1_1 + 2)
;gen.c:5947: size=0/4, offset=3, AOP_TYPE(res)=8
	CLRF	(___fsmul_fl1_1_1 + 3)
;[ICODE] fsmul.c:102: 	 goto _ifend_3($12)
	GOTO	_00116_DS_
;[ICODE] fsmul.c:102:  _iffalse_2($8) :
;[ICODE] fsmul.c:104: 	iTemp103 [k132 lr126:137 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsmul.c:104: 	if iTemp12 [k22 lr27:127 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ ___fsmul_sign_1_1}[r0x104C ] == 0 goto iTempLbl2($17)
_00112_DS_
;	.line	104; "fsmul.c"	fl1.l = PACK (sign ? SIGNBIT : 0 , exp, result);
	MOVLW	0x00
	BANKSEL	r0x100F
	IORWF	r0x100F,W
	BTFSC	STATUS,2
	GOTO	_00121_DS_
;[ICODE] fsmul.c:104: 	iTemp105 [k135 lr128:135 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x104C r0x104F r0x1050 r0x1051 ] := 0x80000000 {unsigned-long-int literal}
	CLRF	r0x100F
	CLRF	r0x100C
	CLRF	r0x1010
	MOVLW	0x80
	MOVWF	r0x1011
;[ICODE] fsmul.c:104: 	 goto iTempLbl3($18)
	GOTO	_00122_DS_
;[ICODE] fsmul.c:104:  iTempLbl2($17) :
;[ICODE] fsmul.c:104: 	iTemp105 [k135 lr128:135 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x104C r0x104F r0x1050 r0x1051 ] := 0x0 {unsigned-long-int literal}
_00121_DS_
	BANKSEL	r0x100F
	CLRF	r0x100F
	CLRF	r0x100C
	CLRF	r0x1010
	CLRF	r0x1011
;[ICODE] fsmul.c:104:  iTempLbl3($18) :
;[ICODE] fsmul.c:104: 	iTemp106 [k136 lr133:134 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1052 r0x1053 r0x1054 r0x1055 ] = (unsigned-long-int fixed)iTemp25 [k38 lr34:133 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsmul_exp_1_1}[r0x104D r0x104E ]
_00122_DS_
	BANKSEL	r0x100E
	MOVF	r0x100E,W
	MOVWF	r0x1012
	MOVF	r0x100D,W
	MOVWF	r0x1013
	MOVLW	0x00
	BTFSC	r0x1013,7
	MOVLW	0xff
	MOVWF	r0x1015
	MOVWF	r0x1014
;[ICODE] fsmul.c:104: 	iTemp107 [k137 lr134:135 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104D r0x104E r0x1056 r0x1057 ] = iTemp106 [k136 lr133:134 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1052 r0x1053 r0x1054 r0x1055 ] << 0x17 {const-unsigned-char literal}
	RRF	r0x1013,W
	RRF	r0x1012,W
	MOVWF	r0x1017
	CLRF	r0x1016
	RRF	r0x1016,F
	CLRF	r0x100D
	CLRF	r0x100E
;[ICODE] fsmul.c:104: 	iTemp108 [k138 lr135:136 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104C r0x104F r0x1050 r0x1051 ] = iTemp105 [k135 lr128:135 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x104C r0x104F r0x1050 r0x1051 ] | iTemp107 [k137 lr134:135 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104D r0x104E r0x1056 r0x1057 ]
	MOVLW	0x00
	IORWF	r0x100F,F
	MOVLW	0x00
	IORWF	r0x100C,F
	MOVF	r0x1016,W
	IORWF	r0x1010,F
	MOVF	r0x1017,W
	IORWF	r0x1011,F
;[ICODE] fsmul.c:104: 	iTemp109 [k139 lr136:137 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp108 [k138 lr135:136 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104C r0x104F r0x1050 r0x1051 ] | iTemp55 [k75 lr64:136 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___fsmul_result_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]
	MOVF	r0x100F,W
	IORWF	r0x100B,F
	MOVF	r0x100C,W
	IORWF	r0x100A,F
	MOVF	r0x1010,W
	IORWF	r0x1009,F
	MOVF	r0x1011,W
	IORWF	r0x1008,F
;[ICODE] fsmul.c:104: 	*(iTemp103 [k132 lr126:137 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat]) := iTemp109 [k139 lr136:137 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ]
;gen.c:5947: size=3/4, offset=0, AOP_TYPE(res)=8
	MOVF	r0x100B,W
	BANKSEL	___fsmul_fl1_1_1
	MOVWF	(___fsmul_fl1_1_1 + 0)
;gen.c:5947: size=2/4, offset=1, AOP_TYPE(res)=8
	BANKSEL	r0x100A
	MOVF	r0x100A,W
	BANKSEL	___fsmul_fl1_1_1
	MOVWF	(___fsmul_fl1_1_1 + 1)
;gen.c:5947: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x1009
	MOVF	r0x1009,W
	BANKSEL	___fsmul_fl1_1_1
	MOVWF	(___fsmul_fl1_1_1 + 2)
;gen.c:5947: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x1008
	MOVF	r0x1008,W
	BANKSEL	___fsmul_fl1_1_1
	MOVWF	(___fsmul_fl1_1_1 + 3)
;[ICODE] fsmul.c:104:  _ifend_3($12) :
;[ICODE] fsmul.c:105: 	iTemp110 [k140 lr139:140 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsmul.c:105: 	iTemp112 [k143 lr140:141 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{volatile-float fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp110 [k140 lr139:140 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat]]
_00116_DS_
;	.line	105; "fsmul.c"	return (fl1.f);
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsmul.c:105: 	ret iTemp112 [k143 lr140:141 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{volatile-float fixed}[r0x1048 r0x1049 r0x104A r0x104B ]
	MOVF	r0x100B,W
	MOVWF	STK02
	MOVF	r0x100A,W
	MOVWF	STK01
	MOVF	r0x1009,W
	MOVWF	STK00
	MOVF	r0x1008,W
;[ICODE] fsmul.c:105:  _return($13) :
;[ICODE] fsmul.c:105: 	eproc ___fsmul [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
_00117_DS_
	RETURN	
; exit point of ___fsmul


;	code size estimation:
;	  563+  179 =   742 instructions ( 1842 byte)

	end
