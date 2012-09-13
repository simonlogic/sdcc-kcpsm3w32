;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6064 (Nov 22 2010) (Linux)
; This file was generated Mon Nov 22 22:55:44 2010
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"fsadd.c"
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
	extern	___fssub
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
	global	___fsadd

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_fsadd_0	udata
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
r0x101B	res	1
r0x101C	res	1
r0x101D	res	1
r0x101E	res	1
r0x101F	res	1
r0x1020	res	1
r0x1021	res	1
r0x1022	res	1
___fsadd_fl1_1_1	res	4
___fsadd_fl2_1_1	res	4
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
code_fsadd	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  ___fsadd	;Function start
; 2 exit points
;has an exit
;34 compiler assigned registers:
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
;   r0x101B
;   r0x101C
;   r0x101D
;   r0x101E
;   r0x101F
;   r0x1020
;   r0x1021
;   r0x1022
;; Starting pCode block
;[ICODE] fsadd.c:53:  _entry($30) :
;[ICODE] fsadd.c:53: 	proc ___fsadd [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
___fsadd	;Function start
; 2 exit points
;[ICODE] fsadd.c:53: iTemp0 [k2 lr3:7 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ ___fsadd_a1_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = recv ___fsadd [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
;	.line	53; "fsadd.c"	float __fsadd (float a1, float a2) _FS_REENTRANT
	BANKSEL	r0x1008
	MOVWF	r0x1008
	MOVF	STK00,W
	MOVWF	r0x1009
	MOVF	STK01,W
	MOVWF	r0x100A
	MOVF	STK02,W
	BANKSEL	___fsadd_fl1_1_1
	MOVWF	(___fsadd_fl1_1_1 + 0)
	BANKSEL	r0x100B
	MOVWF	r0x100B
;[ICODE] fsadd.c:53: iTemp1 [k4 lr4:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ ___fsadd_a2_1_1}[r0x104C r0x104D r0x104E r0x104F ] = recv ___fsadd [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVF	STK03,W
	MOVWF	r0x100C
	MOVF	STK04,W
	MOVWF	r0x100D
	MOVF	STK05,W
	MOVWF	r0x100E
	MOVF	STK06,W
	BANKSEL	___fsadd_fl2_1_1
	MOVWF	(___fsadd_fl2_1_1 + 0)
	BANKSEL	r0x100F
	MOVWF	r0x100F
;[ICODE] fsadd.c:58: 	iTemp2 [k6 lr5:134 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___fsadd_sign_1_1}[r0x1050 r0x1051 r0x1052 r0x1053 ] := 0x0 {unsigned-long-int literal}
;	.line	58; "fsadd.c"	unsigned long sign = 0;
	CLRF	r0x1010
	CLRF	r0x1011
	CLRF	r0x1012
	CLRF	r0x1013
;[ICODE] fsadd.c:60: 	iTemp3 [k9 lr6:7 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat] = &[___fsadd_fl1_1_1 [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsadd.c:60: 	*(iTemp3 [k9 lr6:7 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat]) := iTemp0 [k2 lr3:7 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ ___fsadd_a1_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]
;gen.c:5947: size=3/4, offset=0, AOP_TYPE(res)=8
;;101	MOVF	r0x100B,W
;gen.c:5947: size=2/4, offset=1, AOP_TYPE(res)=8
;	.line	60; "fsadd.c"	fl1.f = a1;
	MOVF	r0x100A,W
	BANKSEL	___fsadd_fl1_1_1
	MOVWF	(___fsadd_fl1_1_1 + 1)
;gen.c:5947: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x1009
	MOVF	r0x1009,W
	BANKSEL	___fsadd_fl1_1_1
	MOVWF	(___fsadd_fl1_1_1 + 2)
;gen.c:5947: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x1008
	MOVF	r0x1008,W
	BANKSEL	___fsadd_fl1_1_1
	MOVWF	(___fsadd_fl1_1_1 + 3)
;[ICODE] fsadd.c:61: 	iTemp5 [k13 lr8:9 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat] = &[___fsadd_fl2_1_1 [k12 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsadd.c:61: 	*(iTemp5 [k13 lr8:9 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat]) := iTemp1 [k4 lr4:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ ___fsadd_a2_1_1}[r0x104C r0x104D r0x104E r0x104F ]
;gen.c:5947: size=3/4, offset=0, AOP_TYPE(res)=8
;;102	MOVF	r0x100F,W
;gen.c:5947: size=2/4, offset=1, AOP_TYPE(res)=8
;	.line	61; "fsadd.c"	fl2.f = a2;
	BANKSEL	r0x100E
	MOVF	r0x100E,W
	BANKSEL	___fsadd_fl2_1_1
	MOVWF	(___fsadd_fl2_1_1 + 1)
;gen.c:5947: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x100D
	MOVF	r0x100D,W
	BANKSEL	___fsadd_fl2_1_1
	MOVWF	(___fsadd_fl2_1_1 + 2)
;gen.c:5947: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x100C
	MOVF	r0x100C,W
	BANKSEL	___fsadd_fl2_1_1
	MOVWF	(___fsadd_fl2_1_1 + 3)
;[ICODE] fsadd.c:64: 	iTemp7 [k16 lr10:11 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat] = &[___fsadd_fl1_1_1 [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsadd.c:64: 	iTemp9 [k19 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp7 [k16 lr10:11 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat]]
;	.line	64; "fsadd.c"	if (!fl1.l)
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsadd.c:64: 	if iTemp9 [k19 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] != 0 goto _iffalse_0($2)
	MOVF	r0x100B,W
	IORWF	r0x100A,W
	IORWF	r0x1009,W
	IORWF	r0x1008,W
	BTFSS	STATUS,2
	GOTO	_00106_DS_
;[ICODE] fsadd.c:65: 	iTemp10 [k20 lr13:14 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat] = &[___fsadd_fl2_1_1 [k12 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsadd.c:65: 	iTemp12 [k23 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{volatile-float fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp10 [k20 lr13:14 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat]]
;	.line	65; "fsadd.c"	return (fl2.f);
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsadd.c:65: 	ret iTemp12 [k23 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{volatile-float fixed}[r0x1048 r0x1049 r0x104A r0x104B ]
	MOVF	r0x100B,W
	MOVWF	STK02
	MOVF	r0x100A,W
	MOVWF	STK01
	MOVF	r0x1009,W
	MOVWF	STK00
	MOVF	r0x1008,W
	GOTO	_00133_DS_
;[ICODE] fsadd.c:65:  _iffalse_0($2) :
;[ICODE] fsadd.c:66: 	iTemp13 [k24 lr17:18 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat] = &[___fsadd_fl2_1_1 [k12 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsadd.c:66: 	iTemp15 [k27 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp13 [k24 lr17:18 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat]]
_00106_DS_
;	.line	66; "fsadd.c"	if (!fl2.l)
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsadd.c:66: 	if iTemp15 [k27 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] != 0 goto _iffalse_1($4)
	MOVF	r0x100B,W
	IORWF	r0x100A,W
	IORWF	r0x1009,W
	IORWF	r0x1008,W
	BTFSS	STATUS,2
	GOTO	_00108_DS_
;[ICODE] fsadd.c:67: 	iTemp16 [k28 lr20:21 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat] = &[___fsadd_fl1_1_1 [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsadd.c:67: 	iTemp18 [k31 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{volatile-float fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp16 [k28 lr20:21 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat]]
;	.line	67; "fsadd.c"	return (fl1.f);
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsadd.c:67: 	ret iTemp18 [k31 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{volatile-float fixed}[r0x1048 r0x1049 r0x104A r0x104B ]
	MOVF	r0x100B,W
	MOVWF	STK02
	MOVF	r0x100A,W
	MOVWF	STK01
	MOVF	r0x1009,W
	MOVWF	STK00
	MOVF	r0x1008,W
	GOTO	_00133_DS_
;[ICODE] fsadd.c:67:  _iffalse_1($4) :
;[ICODE] fsadd.c:69: 	iTemp20 [k34 lr24:25 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat] = &[___fsadd_fl1_1_1 [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsadd.c:69: 	iTemp22 [k37 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp20 [k34 lr24:25 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat]]
_00108_DS_
;	.line	69; "fsadd.c"	exp1 = EXP (fl1.l);
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsadd.c:69: 	iTemp23 [k38 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x104C r0x104D r0x104E r0x104F ] = iTemp22 [k37 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] >> 0x17 {const-unsigned-char literal}
	RLF	r0x1009,W
	RLF	r0x1008,W
	MOVWF	r0x100B
	MOVWF	r0x100F
	CLRF	r0x100E
	RLF	r0x100E,F
	CLRF	r0x100D
	CLRF	r0x100C
;[ICODE] fsadd.c:69: 	iTemp24 [k39 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp23 [k38 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x104C r0x104D r0x104E r0x104F ] & 0xff {unsigned-long-int literal}
;;100	MOVF	r0x100F,W
	CLRF	r0x100A
	CLRF	r0x1009
	CLRF	r0x1008
;[ICODE] fsadd.c:69: 	iTemp19 [k32 lr28:102 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsadd_exp1_1_1}[r0x104C r0x104D ] = (int fixed)iTemp24 [k39 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ]
	MOVF	r0x100B,W
	MOVWF	r0x100F
	MOVLW	0x00
	MOVWF	r0x100E
;[ICODE] fsadd.c:70: 	iTemp27 [k43 lr30:31 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat] = &[___fsadd_fl2_1_1 [k12 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsadd.c:70: 	iTemp29 [k46 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp27 [k43 lr30:31 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat]]
;	.line	70; "fsadd.c"	exp2 = EXP (fl2.l);
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsadd.c:70: 	iTemp30 [k47 lr32:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x104E r0x104F r0x1054 r0x1055 ] = iTemp29 [k46 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] >> 0x17 {const-unsigned-char literal}
	RLF	r0x1009,W
	RLF	r0x1008,W
	MOVWF	r0x100B
	MOVWF	r0x100D
	CLRF	r0x100C
	RLF	r0x100C,F
	CLRF	r0x1014
	CLRF	r0x1015
;[ICODE] fsadd.c:70: 	iTemp31 [k48 lr33:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp30 [k47 lr32:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x104E r0x104F r0x1054 r0x1055 ] & 0xff {unsigned-long-int literal}
;;103	MOVF	r0x100D,W
	CLRF	r0x100A
	CLRF	r0x1009
	CLRF	r0x1008
;[ICODE] fsadd.c:70: 	iTemp26 [k41 lr34:88 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsadd_exp2_1_1}[r0x104E r0x104F ] = (int fixed)iTemp31 [k48 lr33:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ]
;;99	MOVF	r0x100B,W
	MOVLW	0x00
	MOVWF	r0x100C
;[ICODE] fsadd.c:72: 	iTemp33 [k50 lr36:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}[r0x1048 r0x1049 ] = iTemp26 [k41 lr34:88 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsadd_exp2_1_1}[r0x104E r0x104F ] + 0x19 {int literal}
;	.line	72; "fsadd.c"	if (exp1 > exp2 + 25)
	MOVLW	0x19
	ADDWF	r0x100D,W
	MOVWF	r0x100B
	CLRF	r0x100A
	RLF	r0x100A,F
	MOVF	r0x100C,W
	ADDWF	r0x100A,F
;[ICODE] fsadd.c:72: 	iTemp34 [k51 lr37:38 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp19 [k32 lr28:102 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsadd_exp1_1_1}[r0x104C r0x104D ] > iTemp33 [k50 lr36:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}[r0x1048 r0x1049 ]
	MOVF	r0x100A,W
	ADDLW	0x80
	MOVWF	r0x1016
	MOVF	r0x100E,W
	ADDLW	0x80
	SUBWF	r0x1016,W
	BTFSS	STATUS,2
	GOTO	_00151_DS_
	MOVF	r0x100F,W
	SUBWF	r0x100B,W
_00151_DS_
	BTFSC	STATUS,0
	GOTO	_00110_DS_
;genSkipc:3057: created from rifx:0xbf9be204
;[ICODE] fsadd.c:72: 	if iTemp34 [k51 lr37:38 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_2($6)
;[ICODE] fsadd.c:73: 	iTemp35 [k52 lr39:40 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat] = &[___fsadd_fl1_1_1 [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsadd.c:73: 	iTemp37 [k55 lr40:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{volatile-float fixed}[r0x1048 r0x1049 r0x1054 r0x1055 ] = @[iTemp35 [k52 lr39:40 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat]]
;	.line	73; "fsadd.c"	return (fl1.f);
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 2),W
	BANKSEL	r0x1014
	MOVWF	r0x1014
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 3),W
	BANKSEL	r0x1015
	MOVWF	r0x1015
;[ICODE] fsadd.c:73: 	ret iTemp37 [k55 lr40:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{volatile-float fixed}[r0x1048 r0x1049 r0x1054 r0x1055 ]
	MOVF	r0x100B,W
	MOVWF	STK02
	MOVF	r0x100A,W
	MOVWF	STK01
	MOVF	r0x1014,W
	MOVWF	STK00
	MOVF	r0x1015,W
	GOTO	_00133_DS_
;[ICODE] fsadd.c:73:  _iffalse_2($6) :
;[ICODE] fsadd.c:74: 	iTemp38 [k56 lr43:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}[r0x1048 r0x1049 ] = iTemp19 [k32 lr28:102 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsadd_exp1_1_1}[r0x104C r0x104D ] + 0x19 {int literal}
_00110_DS_
;	.line	74; "fsadd.c"	if (exp2 > exp1 + 25)
	MOVLW	0x19
	BANKSEL	r0x100F
	ADDWF	r0x100F,W
	MOVWF	r0x100B
	CLRF	r0x100A
	RLF	r0x100A,F
	MOVF	r0x100E,W
	ADDWF	r0x100A,F
;[ICODE] fsadd.c:74: 	iTemp39 [k57 lr44:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp26 [k41 lr34:88 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsadd_exp2_1_1}[r0x104E r0x104F ] > iTemp38 [k56 lr43:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}[r0x1048 r0x1049 ]
	MOVF	r0x100A,W
	ADDLW	0x80
	MOVWF	r0x1016
	MOVF	r0x100C,W
	ADDLW	0x80
	SUBWF	r0x1016,W
	BTFSS	STATUS,2
	GOTO	_00152_DS_
	MOVF	r0x100D,W
	SUBWF	r0x100B,W
_00152_DS_
	BTFSC	STATUS,0
	GOTO	_00112_DS_
;genSkipc:3057: created from rifx:0xbf9be204
;[ICODE] fsadd.c:74: 	if iTemp39 [k57 lr44:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_3($8)
;[ICODE] fsadd.c:75: 	iTemp40 [k58 lr46:47 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat] = &[___fsadd_fl2_1_1 [k12 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsadd.c:75: 	iTemp42 [k61 lr47:48 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{volatile-float fixed}[r0x1048 r0x1049 r0x1054 r0x1055 ] = @[iTemp40 [k58 lr46:47 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat]]
;	.line	75; "fsadd.c"	return (fl2.f);
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 2),W
	BANKSEL	r0x1014
	MOVWF	r0x1014
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 3),W
	BANKSEL	r0x1015
	MOVWF	r0x1015
;[ICODE] fsadd.c:75: 	ret iTemp42 [k61 lr47:48 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{volatile-float fixed}[r0x1048 r0x1049 r0x1054 r0x1055 ]
	MOVF	r0x100B,W
	MOVWF	STK02
	MOVF	r0x100A,W
	MOVWF	STK01
	MOVF	r0x1014,W
	MOVWF	STK00
	MOVF	r0x1015,W
	GOTO	_00133_DS_
;[ICODE] fsadd.c:75:  _iffalse_3($8) :
;[ICODE] fsadd.c:77: 	iTemp44 [k64 lr50:51 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat] = &[___fsadd_fl1_1_1 [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsadd.c:77: 	iTemp46 [k67 lr51:52 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1048 r0x1049 r0x1054 r0x1055 ] = @[iTemp44 [k64 lr50:51 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat]]
_00112_DS_
;	.line	77; "fsadd.c"	mant1 = MANT (fl1.l);
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 2),W
	BANKSEL	r0x1014
	MOVWF	r0x1014
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 3),W
	BANKSEL	r0x1015
	MOVWF	r0x1015
;[ICODE] fsadd.c:77: 	iTemp47 [k68 lr52:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x1048 r0x1049 r0x1054 r0x1055 ] = iTemp46 [k67 lr51:52 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1048 r0x1049 r0x1054 r0x1055 ] & 0x7fffff {unsigned-long-int literal}
	BCF	r0x1014,7
	CLRF	r0x1015
;[ICODE] fsadd.c:77: 	iTemp43 [k62 lr53:135 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] = iTemp47 [k68 lr52:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x1048 r0x1049 r0x1054 r0x1055 ] | 0x800000 {unsigned-long-int literal}
	BSF	r0x1014,7
;[ICODE] fsadd.c:78: 	iTemp51 [k73 lr56:57 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat] = &[___fsadd_fl2_1_1 [k12 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsadd.c:78: 	iTemp53 [k76 lr57:58 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1056 r0x1057 r0x1058 r0x1059 ] = @[iTemp51 [k73 lr56:57 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat]]
;	.line	78; "fsadd.c"	mant2 = MANT (fl2.l);
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 0),W
	BANKSEL	r0x1016
	MOVWF	r0x1016
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 1),W
	BANKSEL	r0x1017
	MOVWF	r0x1017
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 2),W
	BANKSEL	r0x1018
	MOVWF	r0x1018
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 3),W
	BANKSEL	r0x1019
	MOVWF	r0x1019
;[ICODE] fsadd.c:78: 	iTemp54 [k77 lr58:59 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x1056 r0x1057 r0x1058 r0x1059 ] = iTemp53 [k76 lr57:58 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x1056 r0x1057 r0x1058 r0x1059 ] & 0x7fffff {unsigned-long-int literal}
	BCF	r0x1018,7
	CLRF	r0x1019
;[ICODE] fsadd.c:78: 	iTemp50 [k71 lr59:90 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsadd_mant2_1_1}[r0x1056 r0x1057 r0x1058 r0x1059 ] = iTemp54 [k77 lr58:59 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x1056 r0x1057 r0x1058 r0x1059 ] | 0x800000 {unsigned-long-int literal}
	BSF	r0x1018,7
;[ICODE] fsadd.c:80: 	iTemp57 [k80 lr62:63 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat] = &[___fsadd_fl1_1_1 [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsadd.c:80: 	iTemp59 [k83 lr63:64 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x105A r0x105B r0x105C r0x105D ] = @[iTemp57 [k80 lr62:63 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat]]
;	.line	80; "fsadd.c"	if (SIGN (fl1.l))
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 0),W
	BANKSEL	r0x101A
	MOVWF	r0x101A
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 1),W
	BANKSEL	r0x101B
	MOVWF	r0x101B
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 2),W
	BANKSEL	r0x101C
	MOVWF	r0x101C
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 3),W
	BANKSEL	r0x101D
	MOVWF	r0x101D
;[ICODE] fsadd.c:80: 	iTemp60 [k84 lr64:65 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x105E r0x105F r0x1060 r0x1061 ] = iTemp59 [k83 lr63:64 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x105A r0x105B r0x105C r0x105D ] >> 0x1f {unsigned-char literal}
	RLF	r0x101D,W
	CLRF	r0x101E
	RLF	r0x101E,F
	CLRF	r0x101F
	CLRF	r0x1020
	CLRF	r0x1021
;[ICODE] fsadd.c:80: 	iTemp61 [k85 lr65:66 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed} = iTemp60 [k84 lr64:65 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x105E r0x105F r0x1060 r0x1061 ] & 0x1 {unsigned-long-int literal}
	BTFSS	r0x101E,0
	GOTO	_00114_DS_
;[ICODE] fsadd.c:80: 	if iTemp61 [k85 lr65:66 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed} == 0 goto _iffalse_4($10)
;[ICODE] fsadd.c:81: 	iTemp43 [k62 lr53:135 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] = - iTemp43 [k62 lr53:135 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ]
;	.line	81; "fsadd.c"	mant1 = -mant1;
	COMF	r0x100B,F
	COMF	r0x100A,F
	COMF	r0x1014,F
	COMF	r0x1015,F
	INCF	r0x100B,F
	BTFSC	STATUS,2
	INCF	r0x100A,F
	BTFSC	STATUS,2
	INCF	r0x1014,F
	BTFSC	STATUS,2
	INCF	r0x1015,F
;[ICODE] fsadd.c:81:  _iffalse_4($10) :
;[ICODE] fsadd.c:82: 	iTemp63 [k87 lr70:71 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat] = &[___fsadd_fl2_1_1 [k12 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsadd.c:82: 	iTemp65 [k90 lr71:72 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x105A r0x105B r0x105C r0x105D ] = @[iTemp63 [k87 lr70:71 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat]]
_00114_DS_
;	.line	82; "fsadd.c"	if (SIGN (fl2.l))
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 0),W
	BANKSEL	r0x101A
	MOVWF	r0x101A
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 1),W
	BANKSEL	r0x101B
	MOVWF	r0x101B
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 2),W
	BANKSEL	r0x101C
	MOVWF	r0x101C
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 3),W
	BANKSEL	r0x101D
	MOVWF	r0x101D
;[ICODE] fsadd.c:82: 	iTemp66 [k91 lr72:73 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x105E r0x105F r0x1060 r0x1061 ] = iTemp65 [k90 lr71:72 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x105A r0x105B r0x105C r0x105D ] >> 0x1f {unsigned-char literal}
	RLF	r0x101D,W
	CLRF	r0x101E
	RLF	r0x101E,F
	CLRF	r0x101F
	CLRF	r0x1020
	CLRF	r0x1021
;[ICODE] fsadd.c:82: 	iTemp67 [k92 lr73:74 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed} = iTemp66 [k91 lr72:73 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x105E r0x105F r0x1060 r0x1061 ] & 0x1 {unsigned-long-int literal}
	BTFSS	r0x101E,0
	GOTO	_00116_DS_
;[ICODE] fsadd.c:82: 	if iTemp67 [k92 lr73:74 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed} == 0 goto _iffalse_5($12)
;[ICODE] fsadd.c:83: 	iTemp50 [k71 lr59:90 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsadd_mant2_1_1}[r0x1056 r0x1057 r0x1058 r0x1059 ] = - iTemp50 [k71 lr59:90 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsadd_mant2_1_1}[r0x1056 r0x1057 r0x1058 r0x1059 ]
;	.line	83; "fsadd.c"	mant2 = -mant2;
	COMF	r0x1016,F
	COMF	r0x1017,F
	COMF	r0x1018,F
	COMF	r0x1019,F
	INCF	r0x1016,F
	BTFSC	STATUS,2
	INCF	r0x1017,F
	BTFSC	STATUS,2
	INCF	r0x1018,F
	BTFSC	STATUS,2
	INCF	r0x1019,F
;[ICODE] fsadd.c:83:  _iffalse_5($12) :
;[ICODE] fsadd.c:85: 	iTemp69 [k94 lr78:79 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp19 [k32 lr28:102 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsadd_exp1_1_1}[r0x104C r0x104D ] > iTemp26 [k41 lr34:88 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsadd_exp2_1_1}[r0x104E r0x104F ]
_00116_DS_
;	.line	85; "fsadd.c"	if (exp1 > exp2)
	BANKSEL	r0x100C
	MOVF	r0x100C,W
	ADDLW	0x80
	MOVWF	r0x1022
	MOVF	r0x100E,W
	ADDLW	0x80
	SUBWF	r0x1022,W
	BTFSS	STATUS,2
	GOTO	_00153_DS_
	MOVF	r0x100F,W
	SUBWF	r0x100D,W
_00153_DS_
	BTFSC	STATUS,0
	GOTO	_00118_DS_
;genSkipc:3057: created from rifx:0xbf9be204
;[ICODE] fsadd.c:85: 	if iTemp69 [k94 lr78:79 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_6($14)
;[ICODE] fsadd.c:87: 	iTemp70 [k95 lr80:81 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x105A r0x105B ] = iTemp19 [k32 lr28:102 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsadd_exp1_1_1}[r0x104C r0x104D ] - iTemp26 [k41 lr34:88 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsadd_exp2_1_1}[r0x104E r0x104F ]
;	.line	87; "fsadd.c"	mant2 >>= exp1 - exp2;
	BANKSEL	r0x100D
	MOVF	r0x100D,W
	SUBWF	r0x100F,W
	MOVWF	r0x101A
	MOVF	r0x100C,W
	BTFSS	STATUS,0
	INCF	r0x100C,W
	SUBWF	r0x100E,W
	MOVWF	r0x101B
;[ICODE] fsadd.c:87: 	iTemp50 [k71 lr59:90 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsadd_mant2_1_1}[r0x1056 r0x1057 r0x1058 r0x1059 ] = iTemp50 [k71 lr59:90 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsadd_mant2_1_1}[r0x1056 r0x1057 r0x1058 r0x1059 ] >> iTemp70 [k95 lr80:81 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x105A r0x105B ]
	MOVF	r0x101A,W
	BTFSC	r0x101A,7
	GOTO	_00156_DS_
	SUBLW	0x00
	BTFSC	STATUS,2
	GOTO	_00155_DS_
_00154_DS_
	BCF	STATUS,0
	BANKSEL	r0x1019
	BTFSC	r0x1019,7
	BSF	STATUS,0
	RRF	r0x1019,F
	RRF	r0x1018,F
	RRF	r0x1017,F
	RRF	r0x1016,F
	ADDLW	0x01
	BTFSS	STATUS,0
	GOTO	_00154_DS_
	GOTO	_00155_DS_
_00156_DS_
	BCF	STATUS,0
_00157_DS_
	BANKSEL	r0x1016
	RLF	r0x1016,F
	RLF	r0x1017,F
	RLF	r0x1018,F
	RLF	r0x1019,F
	ADDLW	0x01
	BTFSS	STATUS,0
	GOTO	_00157_DS_
;[ICODE] fsadd.c:87: 	 goto _ifend_6($15)
_00155_DS_
	GOTO	_00119_DS_
;[ICODE] fsadd.c:87:  _iffalse_6($14) :
;[ICODE] fsadd.c:91: 	iTemp72 [k97 lr85:86 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x105A r0x105B ] = iTemp26 [k41 lr34:88 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsadd_exp2_1_1}[r0x104E r0x104F ] - iTemp19 [k32 lr28:102 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsadd_exp1_1_1}[r0x104C r0x104D ]
_00118_DS_
;	.line	91; "fsadd.c"	mant1 >>= exp2 - exp1;
	BANKSEL	r0x100F
	MOVF	r0x100F,W
	SUBWF	r0x100D,W
	MOVWF	r0x101A
	MOVF	r0x100E,W
	BTFSS	STATUS,0
	INCF	r0x100E,W
	SUBWF	r0x100C,W
	MOVWF	r0x101B
;[ICODE] fsadd.c:91: 	iTemp43 [k62 lr53:135 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] = iTemp43 [k62 lr53:135 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] >> iTemp72 [k97 lr85:86 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x105A r0x105B ]
	MOVF	r0x101A,W
	BTFSC	r0x101A,7
	GOTO	_00160_DS_
	SUBLW	0x00
	BTFSC	STATUS,2
	GOTO	_00159_DS_
_00158_DS_
	BCF	STATUS,0
	BANKSEL	r0x1015
	BTFSC	r0x1015,7
	BSF	STATUS,0
	RRF	r0x1015,F
	RRF	r0x1014,F
	RRF	r0x100A,F
	RRF	r0x100B,F
	ADDLW	0x01
	BTFSS	STATUS,0
	GOTO	_00158_DS_
	GOTO	_00159_DS_
_00160_DS_
	BCF	STATUS,0
_00161_DS_
	BANKSEL	r0x100B
	RLF	r0x100B,F
	RLF	r0x100A,F
	RLF	r0x1014,F
	RLF	r0x1015,F
	ADDLW	0x01
	BTFSS	STATUS,0
	GOTO	_00161_DS_
;[ICODE] fsadd.c:92: 	iTemp19 [k32 lr28:102 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsadd_exp1_1_1}[r0x104C r0x104D ] := iTemp26 [k41 lr34:88 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsadd_exp2_1_1}[r0x104E r0x104F ]
_00159_DS_
;	.line	92; "fsadd.c"	exp1 = exp2;
	BANKSEL	r0x100D
	MOVF	r0x100D,W
	MOVWF	r0x100F
	MOVF	r0x100C,W
	MOVWF	r0x100E
;[ICODE] fsadd.c:92:  _ifend_6($15) :
;[ICODE] fsadd.c:94: 	iTemp43 [k62 lr53:135 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] = iTemp43 [k62 lr53:135 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] + iTemp50 [k71 lr59:90 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsadd_mant2_1_1}[r0x1056 r0x1057 r0x1058 r0x1059 ]
_00119_DS_
;	.line	94; "fsadd.c"	mant1 += mant2;
	BANKSEL	r0x1016
	MOVF	r0x1016,W
	ADDWF	r0x100B,F
	MOVF	r0x1017,W
	BTFSC	STATUS,0
	INCFSZ	r0x1017,W
	ADDWF	r0x100A,F
	MOVF	r0x1018,W
	BTFSC	STATUS,0
	INCFSZ	r0x1018,W
	ADDWF	r0x1014,F
	MOVF	r0x1019,W
	BTFSC	STATUS,0
	INCFSZ	r0x1019,W
	ADDWF	r0x1015,F
;[ICODE] fsadd.c:96: 	iTemp75 [k100 lr92:93 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp43 [k62 lr53:135 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] < 0x0 {long-int literal}
;signed compare: left < lit(0x0=0), size=4, mask=ffffffff
;	.line	96; "fsadd.c"	if (mant1 < 0)
	BSF	STATUS,0
	BTFSS	r0x1015,7
	BCF	STATUS,0
	BTFSS	STATUS,0
	GOTO	_00123_DS_
;genSkipc:3057: created from rifx:0xbf9be204
;[ICODE] fsadd.c:96: 	if iTemp75 [k100 lr92:93 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_8($19)
;[ICODE] fsadd.c:98: 	iTemp43 [k62 lr53:135 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] = - iTemp43 [k62 lr53:135 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ]
;	.line	98; "fsadd.c"	mant1 = -mant1;
	COMF	r0x100B,F
	COMF	r0x100A,F
	COMF	r0x1014,F
	COMF	r0x1015,F
	INCF	r0x100B,F
	BTFSC	STATUS,2
	INCF	r0x100A,F
	BTFSC	STATUS,2
	INCF	r0x1014,F
	BTFSC	STATUS,2
	INCF	r0x1015,F
;[ICODE] fsadd.c:99: 	iTemp2 [k6 lr5:134 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___fsadd_sign_1_1}[r0x1050 r0x1051 r0x1052 r0x1053 ] := 0x80000000 {unsigned-long-int literal}
;	.line	99; "fsadd.c"	sign = SIGNBIT;
	CLRF	r0x1010
	CLRF	r0x1011
	CLRF	r0x1012
	MOVLW	0x80
	MOVWF	r0x1013
;[ICODE] fsadd.c:99: 	 goto preHeaderLbl0($41)
	GOTO	_00125_DS_
;[ICODE] fsadd.c:99:  _iffalse_8($19) :
;[ICODE] fsadd.c:101: 	if iTemp43 [k62 lr53:135 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] != 0 goto preHeaderLbl0($41)
_00123_DS_
;	.line	101; "fsadd.c"	else if (!mant1)
	BANKSEL	r0x100B
	MOVF	r0x100B,W
	IORWF	r0x100A,W
	IORWF	r0x1014,W
	IORWF	r0x1015,W
	BTFSS	STATUS,2
	GOTO	_00125_DS_
;[ICODE] fsadd.c:102: 	ret 0 {float literal}
;	.line	102; "fsadd.c"	return (0);
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x00
	GOTO	_00133_DS_
;[ICODE] fsadd.c:105:  preHeaderLbl0($41) :
;[ICODE] fsadd.c:105: 	iTemp81 [k106 lr102:113 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x104C r0x104D ] := iTemp19 [k32 lr28:102 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsadd_exp1_1_1}[r0x104C r0x104D ]
;[ICODE] fsadd.c:105:  _whilecontinue_0($21) :
;[ICODE] fsadd.c:105: 	iTemp77 [k102 lr104:105 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104E r0x104F r0x1056 r0x1057 ] := iTemp43 [k62 lr53:135 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ]
_00125_DS_
;	.line	105; "fsadd.c"	while (mant1<HIDDEN) {
	BANKSEL	r0x100B
	MOVF	r0x100B,W
	MOVWF	r0x100D
	MOVF	r0x100A,W
	MOVWF	r0x100C
	MOVF	r0x1014,W
	MOVWF	r0x1016
	MOVF	r0x1015,W
	MOVWF	r0x1017
;[ICODE] fsadd.c:105: 	iTemp78 [k103 lr105:106 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp77 [k102 lr104:105 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104E r0x104F r0x1056 r0x1057 ] < 0x800000 {unsigned-long-int literal}
;unsigned compare: left < lit(0x800000=8388608), size=4
	MOVLW	0x00
	SUBWF	r0x1017,W
	BTFSS	STATUS,2
	GOTO	_00162_DS_
	MOVLW	0x80
	SUBWF	r0x1016,W
	BTFSS	STATUS,2
	GOTO	_00162_DS_
	MOVLW	0x00
	SUBWF	r0x100C,W
	BTFSS	STATUS,2
	GOTO	_00162_DS_
	MOVLW	0x00
	SUBWF	r0x100D,W
_00162_DS_
	BTFSC	STATUS,0
	GOTO	_00130_DS_
;genSkipc:3057: created from rifx:0xbf9be204
;[ICODE] fsadd.c:105: 	if iTemp78 [k103 lr105:106 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto preHeaderLbl1($44)
;[ICODE] fsadd.c:106: 	iTemp43 [k62 lr53:135 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] = iTemp43 [k62 lr53:135 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] << 0x1 {const-unsigned-char literal}
;	.line	106; "fsadd.c"	mant1 <<= 1;
	BCF	STATUS,0
	BANKSEL	r0x100B
	RLF	r0x100B,F
	RLF	r0x100A,F
	RLF	r0x1014,F
	RLF	r0x1015,F
;[ICODE] fsadd.c:107: 	iTemp81 [k106 lr102:113 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x104C r0x104D ] = iTemp81 [k106 lr102:113 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x104C r0x104D ] - 0x1 {const-unsigned-char literal}
;	.line	107; "fsadd.c"	exp1--;
	MOVLW	0xff
	ADDWF	r0x100F,F
	BTFSS	STATUS,0
	DECF	r0x100E,F
;[ICODE] fsadd.c:107: 	 goto _whilecontinue_0($21)
	GOTO	_00125_DS_
;[ICODE] fsadd.c:111:  preHeaderLbl1($44) :
;[ICODE] fsadd.c:111: 	iTemp88 [k113 lr113:132 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsadd_exp1_1_1}[r0x104C r0x104D ] := iTemp81 [k106 lr102:113 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x104C r0x104D ]
;[ICODE] fsadd.c:111:  _whilecontinue_1($26) :
;[ICODE] fsadd.c:111: 	iTemp83 [k108 lr115:116 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-unsigned-long-int register} = iTemp43 [k62 lr53:135 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] & 0xff000000 {const-unsigned-long-int literal}
_00130_DS_
;	.line	111; "fsadd.c"	while (mant1 & 0xff000000) {
	BANKSEL	r0x1015
	MOVF	r0x1015,W
	ANDLW	0xff
	BTFSC	STATUS,2
	GOTO	_00132_DS_
;[ICODE] fsadd.c:111: 	if iTemp83 [k108 lr115:116 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-unsigned-long-int register} == 0 goto _whilebreak_1($28)
;[ICODE] fsadd.c:112: 	iTemp84 [k109 lr117:118 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int fixed} = iTemp43 [k62 lr53:135 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] & 0x1 {long-int literal}
;	.line	112; "fsadd.c"	if (mant1&1)
	BTFSS	r0x100B,0
	GOTO	_00129_DS_
;[ICODE] fsadd.c:112: 	if iTemp84 [k109 lr117:118 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int fixed} == 0 goto _iffalse_9($25)
;[ICODE] fsadd.c:113: 	iTemp43 [k62 lr53:135 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] = iTemp43 [k62 lr53:135 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] + 0x2 {long-int literal}
;	.line	113; "fsadd.c"	mant1 += 2;
	MOVLW	0x02
	ADDWF	r0x100B,F
	BTFSC	STATUS,0
	INCF	r0x100A,F
	BTFSC	STATUS,2
	INCF	r0x1014,F
	BTFSC	STATUS,2
	INCF	r0x1015,F
;[ICODE] fsadd.c:113:  _iffalse_9($25) :
;[ICODE] fsadd.c:114: 	iTemp43 [k62 lr53:135 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] = iTemp43 [k62 lr53:135 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] >> 0x1 {const-unsigned-char literal}
;shiftRight_Left2ResultLit:4886: shCount=1, size=4, sign=1, same=1, offr=0
_00129_DS_
;	.line	114; "fsadd.c"	mant1 >>= 1 ;
	BCF	STATUS,0
	BANKSEL	r0x1015
	BTFSC	r0x1015,7
	BSF	STATUS,0
	RRF	r0x1015,F
	RRF	r0x1014,F
	RRF	r0x100A,F
	RRF	r0x100B,F
;[ICODE] fsadd.c:115: 	iTemp88 [k113 lr113:132 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsadd_exp1_1_1}[r0x104C r0x104D ] = iTemp88 [k113 lr113:132 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsadd_exp1_1_1}[r0x104C r0x104D ] + 0x1 {const-unsigned-char literal}
;	.line	115; "fsadd.c"	exp1++;
	INCF	r0x100F,F
	BTFSC	STATUS,2
	INCF	r0x100E,F
;[ICODE] fsadd.c:115: 	 goto _whilecontinue_1($26)
	GOTO	_00130_DS_
;[ICODE] fsadd.c:115:  _whilebreak_1($28) :
;[ICODE] fsadd.c:119: 	iTemp43 [k62 lr53:135 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] = iTemp43 [k62 lr53:135 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] & 0xff7fffff {unsigned-long-int literal}
_00132_DS_
;	.line	119; "fsadd.c"	mant1 &= ~HIDDEN;
	BANKSEL	r0x1014
	BCF	r0x1014,7
;[ICODE] fsadd.c:122: 	iTemp92 [k117 lr131:136 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat] = &[___fsadd_fl1_1_1 [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsadd.c:122: 	iTemp94 [k120 lr132:133 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104E r0x104F r0x1056 r0x1057 ] = (unsigned-long-int fixed)iTemp88 [k113 lr113:132 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsadd_exp1_1_1}[r0x104C r0x104D ]
;	.line	122; "fsadd.c"	fl1.l = PACK (sign, (unsigned long) exp1, mant1);
	MOVF	r0x100F,W
	MOVWF	r0x100D
	MOVF	r0x100E,W
	MOVWF	r0x100C
	MOVLW	0x00
	BTFSC	r0x100C,7
	MOVLW	0xff
	MOVWF	r0x1017
	MOVWF	r0x1016
;[ICODE] fsadd.c:122: 	iTemp95 [k121 lr133:134 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104C r0x104D r0x1058 r0x1059 ] = iTemp94 [k120 lr132:133 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104E r0x104F r0x1056 r0x1057 ] << 0x17 {const-unsigned-char literal}
	RRF	r0x100C,W
	RRF	r0x100D,W
	MOVWF	r0x1019
	CLRF	r0x1018
	RRF	r0x1018,F
	CLRF	r0x100E
	CLRF	r0x100F
;[ICODE] fsadd.c:122: 	iTemp96 [k122 lr134:135 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1050 r0x1051 r0x1052 r0x1053 ] = iTemp2 [k6 lr5:134 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___fsadd_sign_1_1}[r0x1050 r0x1051 r0x1052 r0x1053 ] | iTemp95 [k121 lr133:134 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104C r0x104D r0x1058 r0x1059 ]
	MOVLW	0x00
	IORWF	r0x1010,F
	MOVLW	0x00
	IORWF	r0x1011,F
	MOVF	r0x1018,W
	IORWF	r0x1012,F
	MOVF	r0x1019,W
	IORWF	r0x1013,F
;[ICODE] fsadd.c:122: 	iTemp98 [k124 lr135:136 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x1054 r0x1055 ] = iTemp96 [k122 lr134:135 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1050 r0x1051 r0x1052 r0x1053 ] | iTemp43 [k62 lr53:135 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ]
	MOVF	r0x1010,W
	IORWF	r0x100B,F
	MOVF	r0x1011,W
	IORWF	r0x100A,F
	MOVF	r0x1012,W
	IORWF	r0x1014,F
	MOVF	r0x1013,W
	IORWF	r0x1015,F
;[ICODE] fsadd.c:122: 	*(iTemp92 [k117 lr131:136 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat]) := iTemp98 [k124 lr135:136 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x1054 r0x1055 ]
;gen.c:5947: size=3/4, offset=0, AOP_TYPE(res)=8
	MOVF	r0x100B,W
	BANKSEL	___fsadd_fl1_1_1
	MOVWF	(___fsadd_fl1_1_1 + 0)
;gen.c:5947: size=2/4, offset=1, AOP_TYPE(res)=8
	BANKSEL	r0x100A
	MOVF	r0x100A,W
	BANKSEL	___fsadd_fl1_1_1
	MOVWF	(___fsadd_fl1_1_1 + 1)
;gen.c:5947: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x1014
	MOVF	r0x1014,W
	BANKSEL	___fsadd_fl1_1_1
	MOVWF	(___fsadd_fl1_1_1 + 2)
;gen.c:5947: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x1015
	MOVF	r0x1015,W
	BANKSEL	___fsadd_fl1_1_1
	MOVWF	(___fsadd_fl1_1_1 + 3)
;[ICODE] fsadd.c:124: 	iTemp99 [k125 lr137:138 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat] = &[___fsadd_fl1_1_1 [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsadd.c:124: 	iTemp101 [k128 lr138:139 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{volatile-float fixed}[r0x1048 r0x1049 r0x104C r0x104D ] = @[iTemp99 [k125 lr137:138 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat]]
;	.line	124; "fsadd.c"	return (fl1.f);
	MOVF	(___fsadd_fl1_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 2),W
	BANKSEL	r0x100F
	MOVWF	r0x100F
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 3),W
	BANKSEL	r0x100E
	MOVWF	r0x100E
;[ICODE] fsadd.c:124: 	ret iTemp101 [k128 lr138:139 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{volatile-float fixed}[r0x1048 r0x1049 r0x104C r0x104D ]
	MOVF	r0x100B,W
	MOVWF	STK02
	MOVF	r0x100A,W
	MOVWF	STK01
	MOVF	r0x100F,W
	MOVWF	STK00
	MOVF	r0x100E,W
;[ICODE] fsadd.c:124:  _return($29) :
;[ICODE] fsadd.c:124: 	eproc ___fsadd [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
_00133_DS_
	RETURN	
; exit point of ___fsadd


;	code size estimation:
;	  532+  142 =   674 instructions ( 1632 byte)

	end
