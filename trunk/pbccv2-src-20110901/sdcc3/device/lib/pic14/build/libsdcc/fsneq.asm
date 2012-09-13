;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6064 (Nov 22 2010) (Linux)
; This file was generated Mon Nov 22 22:55:44 2010
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"fsneq.c"
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
	extern	___fsmul
	extern	___fsdiv
	extern	___fslt
	extern	___fseq
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
	global	___fsneq

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_fsneq_0	udata
r0x100B	res	1
r0x100A	res	1
r0x1009	res	1
r0x1008	res	1
r0x100F	res	1
r0x100E	res	1
r0x100D	res	1
r0x100C	res	1
___fsneq_fl1_1_1	res	4
___fsneq_fl2_1_1	res	4
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
code_fsneq	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  ___fsneq	;Function start
; 2 exit points
;has an exit
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
;[ICODE] fsneq.c:55:  _entry($4) :
;[ICODE] fsneq.c:55: 	proc ___fsneq [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float fixed, float fixed)  fixed}
___fsneq	;Function start
; 2 exit points
;[ICODE] fsneq.c:55: iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ ___fsneq_a1_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = recv ___fsneq [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float fixed, float fixed)  fixed}
;	.line	55; "fsneq.c"	char __fsneq (float a1, float a2) _FS_REENTRANT
	BANKSEL	r0x1008
	MOVWF	r0x1008
	MOVF	STK00,W
	MOVWF	r0x1009
	MOVF	STK01,W
	MOVWF	r0x100A
	MOVF	STK02,W
	BANKSEL	___fsneq_fl1_1_1
	MOVWF	(___fsneq_fl1_1_1 + 0)
	BANKSEL	r0x100B
	MOVWF	r0x100B
;[ICODE] fsneq.c:55: iTemp1 [k4 lr4:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ ___fsneq_a2_1_1}[r0x104C r0x104D r0x104E r0x104F ] = recv ___fsneq [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float fixed, float fixed)  fixed}
	MOVF	STK03,W
	MOVWF	r0x100C
	MOVF	STK04,W
	MOVWF	r0x100D
	MOVF	STK05,W
	MOVWF	r0x100E
	MOVF	STK06,W
	BANKSEL	___fsneq_fl2_1_1
	MOVWF	(___fsneq_fl2_1_1 + 0)
	BANKSEL	r0x100F
	MOVWF	r0x100F
;[ICODE] fsneq.c:59: 	iTemp2 [k7 lr5:6 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat] = &[___fsneq_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsneq.c:59: 	*(iTemp2 [k7 lr5:6 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat]) := iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ ___fsneq_a1_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]
;gen.c:5947: size=3/4, offset=0, AOP_TYPE(res)=8
;;99	MOVF	r0x100B,W
;gen.c:5947: size=2/4, offset=1, AOP_TYPE(res)=8
;	.line	59; "fsneq.c"	fl1.f = a1;
	MOVF	r0x100A,W
	BANKSEL	___fsneq_fl1_1_1
	MOVWF	(___fsneq_fl1_1_1 + 1)
;gen.c:5947: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x1009
	MOVF	r0x1009,W
	BANKSEL	___fsneq_fl1_1_1
	MOVWF	(___fsneq_fl1_1_1 + 2)
;gen.c:5947: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x1008
	MOVF	r0x1008,W
	BANKSEL	___fsneq_fl1_1_1
	MOVWF	(___fsneq_fl1_1_1 + 3)
;[ICODE] fsneq.c:60: 	iTemp4 [k11 lr7:8 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat] = &[___fsneq_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsneq.c:60: 	*(iTemp4 [k11 lr7:8 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat]) := iTemp1 [k4 lr4:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ ___fsneq_a2_1_1}[r0x104C r0x104D r0x104E r0x104F ]
;gen.c:5947: size=3/4, offset=0, AOP_TYPE(res)=8
;;100	MOVF	r0x100F,W
;gen.c:5947: size=2/4, offset=1, AOP_TYPE(res)=8
;	.line	60; "fsneq.c"	fl2.f = a2;
	BANKSEL	r0x100E
	MOVF	r0x100E,W
	BANKSEL	___fsneq_fl2_1_1
	MOVWF	(___fsneq_fl2_1_1 + 1)
;gen.c:5947: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x100D
	MOVF	r0x100D,W
	BANKSEL	___fsneq_fl2_1_1
	MOVWF	(___fsneq_fl2_1_1 + 2)
;gen.c:5947: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x100C
	MOVF	r0x100C,W
	BANKSEL	___fsneq_fl2_1_1
	MOVWF	(___fsneq_fl2_1_1 + 3)
;[ICODE] fsneq.c:70: 	iTemp6 [k14 lr9:10 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat] = &[___fsneq_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsneq.c:70: 	iTemp8 [k17 lr10:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp6 [k14 lr9:10 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat]]
;	.line	70; "fsneq.c"	if (fl1.l == fl2.l)
	BANKSEL	___fsneq_fl1_1_1
	MOVF	(___fsneq_fl1_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsneq_fl1_1_1
	MOVF	(___fsneq_fl1_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsneq_fl1_1_1
	MOVF	(___fsneq_fl1_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsneq_fl1_1_1
	MOVF	(___fsneq_fl1_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsneq.c:70: 	iTemp9 [k18 lr11:12 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat] = &[___fsneq_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsneq.c:70: 	iTemp11 [k21 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int fixed}[r0x104C r0x104D r0x104E r0x104F ] = @[iTemp9 [k18 lr11:12 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat]]
	BANKSEL	___fsneq_fl2_1_1
	MOVF	(___fsneq_fl2_1_1 + 0),W
	BANKSEL	r0x100F
	MOVWF	r0x100F
	BANKSEL	___fsneq_fl2_1_1
	MOVF	(___fsneq_fl2_1_1 + 1),W
	BANKSEL	r0x100E
	MOVWF	r0x100E
	BANKSEL	___fsneq_fl2_1_1
	MOVF	(___fsneq_fl2_1_1 + 2),W
	BANKSEL	r0x100D
	MOVWF	r0x100D
	BANKSEL	___fsneq_fl2_1_1
	MOVF	(___fsneq_fl2_1_1 + 3),W
	BANKSEL	r0x100C
	MOVWF	r0x100C
;[ICODE] fsneq.c:70: 	iTemp12 [k22 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp8 [k17 lr10:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] == iTemp11 [k21 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int fixed}[r0x104C r0x104D r0x104E r0x104F ]
	MOVF	r0x100F,W
	XORWF	r0x100B,W
	BTFSS	STATUS,2
	GOTO	_00106_DS_
	MOVF	r0x100E,W
	XORWF	r0x100A,W
	BTFSS	STATUS,2
	GOTO	_00106_DS_
	MOVF	r0x100D,W
	XORWF	r0x1009,W
	BTFSS	STATUS,2
	GOTO	_00106_DS_
	MOVF	r0x100C,W
	XORWF	r0x1008,W
	BTFSS	STATUS,2
	GOTO	_00106_DS_
;[ICODE] fsneq.c:70: 	if iTemp12 [k22 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_0($2)
;[ICODE] fsneq.c:71: 	ret 0x0 {char literal}
;	.line	71; "fsneq.c"	return (0);
	MOVLW	0x00
	GOTO	_00107_DS_
;[ICODE] fsneq.c:71:  _iffalse_0($2) :
;[ICODE] fsneq.c:72: 	ret 0x1 {char literal}
_00106_DS_
;	.line	72; "fsneq.c"	return (1);
	MOVLW	0x01
;[ICODE] fsneq.c:72:  _return($3) :
;[ICODE] fsneq.c:72: 	eproc ___fsneq [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float fixed, float fixed)  fixed}
_00107_DS_
	RETURN	
; exit point of ___fsneq


;	code size estimation:
;	   65+   32 =    97 instructions (  258 byte)

	end
