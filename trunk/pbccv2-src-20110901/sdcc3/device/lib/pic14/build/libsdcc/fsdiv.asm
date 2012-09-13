;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6064 (Nov 22 2010) (Linux)
; This file was generated Mon Nov 22 22:55:44 2010
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"fsdiv.c"
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
	global	___fsdiv

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_fsdiv_0	udata
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
___fsdiv_fl1_1_1	res	4
___fsdiv_fl2_1_1	res	4
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
code_fsdiv	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  ___fsdiv	;Function start
; 2 exit points
;has an exit
;27 compiler assigned registers:
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
;; Starting pCode block
;[ICODE] fsdiv.c:55:  _entry($19) :
;[ICODE] fsdiv.c:55: 	proc ___fsdiv [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
___fsdiv	;Function start
; 2 exit points
;[ICODE] fsdiv.c:55: iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ ___fsdiv_a1_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = recv ___fsdiv [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
;	.line	55; "fsdiv.c"	float __fsdiv (float a1, float a2) _FS_REENTRANT
	BANKSEL	r0x1008
	MOVWF	r0x1008
	MOVF	STK00,W
	MOVWF	r0x1009
	MOVF	STK01,W
	MOVWF	r0x100A
	MOVF	STK02,W
	BANKSEL	___fsdiv_fl1_1_1
	MOVWF	(___fsdiv_fl1_1_1 + 0)
	BANKSEL	r0x100B
	MOVWF	r0x100B
;[ICODE] fsdiv.c:55: iTemp1 [k4 lr4:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ ___fsdiv_a2_1_1}[r0x104C r0x104D r0x104E r0x104F ] = recv ___fsdiv [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
	MOVF	STK03,W
	MOVWF	r0x100C
	MOVF	STK04,W
	MOVWF	r0x100D
	MOVF	STK05,W
	MOVWF	r0x100E
	MOVF	STK06,W
	BANKSEL	___fsdiv_fl2_1_1
	MOVWF	(___fsdiv_fl2_1_1 + 0)
	BANKSEL	r0x100F
	MOVWF	r0x100F
;[ICODE] fsdiv.c:64: 	iTemp2 [k7 lr5:6 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat] = &[___fsdiv_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsdiv.c:64: 	*(iTemp2 [k7 lr5:6 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat]) := iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ ___fsdiv_a1_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]
;gen.c:5947: size=3/4, offset=0, AOP_TYPE(res)=8
;;102	MOVF	r0x100B,W
;gen.c:5947: size=2/4, offset=1, AOP_TYPE(res)=8
;	.line	64; "fsdiv.c"	fl1.f = a1;
	MOVF	r0x100A,W
	BANKSEL	___fsdiv_fl1_1_1
	MOVWF	(___fsdiv_fl1_1_1 + 1)
;gen.c:5947: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x1009
	MOVF	r0x1009,W
	BANKSEL	___fsdiv_fl1_1_1
	MOVWF	(___fsdiv_fl1_1_1 + 2)
;gen.c:5947: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x1008
	MOVF	r0x1008,W
	BANKSEL	___fsdiv_fl1_1_1
	MOVWF	(___fsdiv_fl1_1_1 + 3)
;[ICODE] fsdiv.c:65: 	iTemp4 [k11 lr7:8 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat] = &[___fsdiv_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsdiv.c:65: 	*(iTemp4 [k11 lr7:8 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat]) := iTemp1 [k4 lr4:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ ___fsdiv_a2_1_1}[r0x104C r0x104D r0x104E r0x104F ]
;gen.c:5947: size=3/4, offset=0, AOP_TYPE(res)=8
;;100	MOVF	r0x100F,W
;gen.c:5947: size=2/4, offset=1, AOP_TYPE(res)=8
;	.line	65; "fsdiv.c"	fl2.f = a2;
	BANKSEL	r0x100E
	MOVF	r0x100E,W
	BANKSEL	___fsdiv_fl2_1_1
	MOVWF	(___fsdiv_fl2_1_1 + 1)
;gen.c:5947: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x100D
	MOVF	r0x100D,W
	BANKSEL	___fsdiv_fl2_1_1
	MOVWF	(___fsdiv_fl2_1_1 + 2)
;gen.c:5947: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x100C
	MOVF	r0x100C,W
	BANKSEL	___fsdiv_fl2_1_1
	MOVWF	(___fsdiv_fl2_1_1 + 3)
;[ICODE] fsdiv.c:68: 	iTemp7 [k16 lr9:10 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat] = &[___fsdiv_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsdiv.c:68: 	iTemp10 [k20 lr10:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp7 [k16 lr9:10 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat]]
;	.line	68; "fsdiv.c"	exp = EXP (fl1.l) ;
	BANKSEL	___fsdiv_fl1_1_1
	MOVF	(___fsdiv_fl1_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsdiv_fl1_1_1
	MOVF	(___fsdiv_fl1_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsdiv_fl1_1_1
	MOVF	(___fsdiv_fl1_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsdiv_fl1_1_1
	MOVF	(___fsdiv_fl1_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsdiv.c:68: 	iTemp11 [k21 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104C r0x104D r0x104E r0x104F ] = iTemp10 [k20 lr10:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] >> 0x17 {const-unsigned-char literal}
	RLF	r0x1009,W
	RLF	r0x1008,W
	MOVWF	r0x100B
	MOVWF	r0x100F
	CLRF	r0x100E
	RLF	r0x100E,F
	CLRF	r0x100D
	CLRF	r0x100C
;[ICODE] fsdiv.c:68: 	iTemp12 [k22 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp11 [k21 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104C r0x104D r0x104E r0x104F ] & 0xff {unsigned-long-int literal}
;;103	MOVF	r0x100F,W
	CLRF	r0x100A
	CLRF	r0x1009
	CLRF	r0x1008
;[ICODE] fsdiv.c:68: 	iTemp6 [k14 lr14:127 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsdiv_exp_1_1}[r0x104C r0x104D ] = (int fixed)iTemp12 [k22 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ]
;;99	MOVF	r0x100B,W
	MOVLW	0x00
	MOVWF	r0x100E
;[ICODE] fsdiv.c:69: 	iTemp14 [k24 lr16:17 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat] = &[___fsdiv_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsdiv.c:69: 	iTemp17 [k28 lr17:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp14 [k24 lr16:17 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat]]
;	.line	69; "fsdiv.c"	exp -= EXP (fl2.l);
	BANKSEL	___fsdiv_fl2_1_1
	MOVF	(___fsdiv_fl2_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsdiv_fl2_1_1
	MOVF	(___fsdiv_fl2_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsdiv_fl2_1_1
	MOVF	(___fsdiv_fl2_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsdiv_fl2_1_1
	MOVF	(___fsdiv_fl2_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsdiv.c:69: 	iTemp18 [k29 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104E r0x104F r0x1050 r0x1051 ] = iTemp17 [k28 lr17:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] >> 0x17 {const-unsigned-char literal}
	RLF	r0x1009,W
	RLF	r0x1008,W
	MOVWF	r0x100B
	MOVWF	r0x100D
	CLRF	r0x100C
	RLF	r0x100C,F
	CLRF	r0x1010
	CLRF	r0x1011
;[ICODE] fsdiv.c:69: 	iTemp19 [k30 lr20:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp18 [k29 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104E r0x104F r0x1050 r0x1051 ] & 0xff {unsigned-long-int literal}
;;101	MOVF	r0x100D,W
	CLRF	r0x100A
	CLRF	r0x1009
	CLRF	r0x1008
;[ICODE] fsdiv.c:69: 	iTemp20 [k31 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104E r0x104F r0x1050 r0x1051 ] = (unsigned-long-int fixed)iTemp6 [k14 lr14:127 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsdiv_exp_1_1}[r0x104C r0x104D ]
	MOVF	r0x100F,W
	MOVWF	r0x100D
	MOVF	r0x100E,W
	MOVWF	r0x100C
	MOVLW	0x00
	BTFSC	r0x100C,7
	MOVLW	0xff
	MOVWF	r0x1011
	MOVWF	r0x1010
;[ICODE] fsdiv.c:69: 	iTemp21 [k32 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp20 [k31 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104E r0x104F r0x1050 r0x1051 ] - iTemp19 [k30 lr20:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ]
	MOVF	r0x100B,W
	SUBWF	r0x100D,W
	MOVWF	r0x100B
	MOVF	r0x100A,W
	BTFSS	STATUS,0
	INCFSZ	r0x100A,W
	GOTO	_00138_DS_
	MOVF	r0x100C,W
	GOTO	_00139_DS_
_00138_DS_
	BANKSEL	r0x100C
	SUBWF	r0x100C,W
_00139_DS_
	BANKSEL	r0x100A
	MOVWF	r0x100A
	MOVF	r0x1009,W
	BTFSS	STATUS,0
	INCFSZ	r0x1009,W
	GOTO	_00140_DS_
	MOVF	r0x1010,W
	GOTO	_00141_DS_
_00140_DS_
	BANKSEL	r0x1010
	SUBWF	r0x1010,W
_00141_DS_
	BANKSEL	r0x1009
	MOVWF	r0x1009
	MOVF	r0x1008,W
	BTFSS	STATUS,0
	INCF	r0x1008,W
	SUBWF	r0x1011,W
	MOVWF	r0x1008
;[ICODE] fsdiv.c:69: 	iTemp6 [k14 lr14:127 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsdiv_exp_1_1}[r0x104C r0x104D ] = (int fixed)iTemp21 [k32 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ]
	MOVF	r0x100B,W
	MOVWF	r0x100F
	MOVF	r0x100A,W
	MOVWF	r0x100E
;[ICODE] fsdiv.c:70: 	iTemp6 [k14 lr14:127 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsdiv_exp_1_1}[r0x104C r0x104D ] = iTemp6 [k14 lr14:127 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsdiv_exp_1_1}[r0x104C r0x104D ] + 0x7e {int literal}
;	.line	70; "fsdiv.c"	exp += EXCESS;
	MOVLW	0x7e
	ADDWF	r0x100F,F
	BTFSC	STATUS,0
	INCF	r0x100E,F
;[ICODE] fsdiv.c:73: 	iTemp25 [k37 lr27:28 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat] = &[___fsdiv_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsdiv.c:73: 	iTemp28 [k41 lr28:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp25 [k37 lr27:28 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat]]
;	.line	73; "fsdiv.c"	sign = SIGN (fl1.l) ^ SIGN (fl2.l);
	BANKSEL	___fsdiv_fl1_1_1
	MOVF	(___fsdiv_fl1_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsdiv_fl1_1_1
	MOVF	(___fsdiv_fl1_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsdiv_fl1_1_1
	MOVF	(___fsdiv_fl1_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsdiv_fl1_1_1
	MOVF	(___fsdiv_fl1_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsdiv.c:73: 	iTemp29 [k42 lr30:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104E r0x104F r0x1050 r0x1051 ] = iTemp28 [k41 lr28:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] >> 0x1f {unsigned-char literal}
	RLF	r0x1008,W
	CLRF	r0x100D
	RLF	r0x100D,F
	CLRF	r0x100C
	CLRF	r0x1010
	CLRF	r0x1011
;[ICODE] fsdiv.c:73: 	iTemp30 [k43 lr31:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp29 [k42 lr30:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104E r0x104F r0x1050 r0x1051 ] & 0x1 {unsigned-long-int literal}
	MOVLW	0x01
	ANDWF	r0x100D,W
	MOVWF	r0x100B
	CLRF	r0x100A
	CLRF	r0x1009
	CLRF	r0x1008
;[ICODE] fsdiv.c:73: 	iTemp31 [k44 lr32:33 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat] = &[___fsdiv_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsdiv.c:73: 	iTemp34 [k48 lr33:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104E r0x104F r0x1050 r0x1051 ] = @[iTemp31 [k44 lr32:33 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat]]
	BANKSEL	___fsdiv_fl2_1_1
	MOVF	(___fsdiv_fl2_1_1 + 0),W
	BANKSEL	r0x100D
	MOVWF	r0x100D
	BANKSEL	___fsdiv_fl2_1_1
	MOVF	(___fsdiv_fl2_1_1 + 1),W
	BANKSEL	r0x100C
	MOVWF	r0x100C
	BANKSEL	___fsdiv_fl2_1_1
	MOVF	(___fsdiv_fl2_1_1 + 2),W
	BANKSEL	r0x1010
	MOVWF	r0x1010
	BANKSEL	___fsdiv_fl2_1_1
	MOVF	(___fsdiv_fl2_1_1 + 3),W
	BANKSEL	r0x1011
	MOVWF	r0x1011
;[ICODE] fsdiv.c:73: 	iTemp35 [k49 lr35:36 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1052 r0x1053 r0x1054 r0x1055 ] = iTemp34 [k48 lr33:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104E r0x104F r0x1050 r0x1051 ] >> 0x1f {unsigned-char literal}
	RLF	r0x1011,W
	CLRF	r0x1012
	RLF	r0x1012,F
	CLRF	r0x1013
	CLRF	r0x1014
	CLRF	r0x1015
;[ICODE] fsdiv.c:73: 	iTemp36 [k50 lr36:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104E r0x104F r0x1050 r0x1051 ] = iTemp35 [k49 lr35:36 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1052 r0x1053 r0x1054 r0x1055 ] & 0x1 {unsigned-long-int literal}
	MOVLW	0x01
	ANDWF	r0x1012,W
	MOVWF	r0x100D
	CLRF	r0x100C
	CLRF	r0x1010
	CLRF	r0x1011
;[ICODE] fsdiv.c:73: 	iTemp37 [k51 lr37:38 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp30 [k43 lr31:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] ^ iTemp36 [k50 lr36:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104E r0x104F r0x1050 r0x1051 ]
	MOVF	r0x100D,W
	XORWF	r0x100B,F
	MOVLW	0x00
	XORWF	r0x100A,F
	MOVLW	0x00
	XORWF	r0x1009,F
	MOVLW	0x00
	XORWF	r0x1008,F
;[ICODE] fsdiv.c:73: 	iTemp24 [k35 lr38:121 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ ___fsdiv_sign_1_1}[r0x104E ] = (char fixed)iTemp37 [k51 lr37:38 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ]
	MOVF	r0x100B,W
	MOVWF	r0x100D
;[ICODE] fsdiv.c:76: 	iTemp39 [k53 lr40:41 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat] = &[___fsdiv_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsdiv.c:76: 	iTemp41 [k56 lr41:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp39 [k53 lr40:41 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat]]
;	.line	76; "fsdiv.c"	if (!fl2.l)
	BANKSEL	___fsdiv_fl2_1_1
	MOVF	(___fsdiv_fl2_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsdiv_fl2_1_1
	MOVF	(___fsdiv_fl2_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsdiv_fl2_1_1
	MOVF	(___fsdiv_fl2_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsdiv_fl2_1_1
	MOVF	(___fsdiv_fl2_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsdiv.c:76: 	if iTemp41 [k56 lr41:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] != 0 goto _iffalse_0($2)
	MOVF	r0x100B,W
	IORWF	r0x100A,W
	IORWF	r0x1009,W
	IORWF	r0x1008,W
	BTFSS	STATUS,2
	GOTO	_00106_DS_
;[ICODE] fsdiv.c:78: 	iTemp42 [k57 lr43:44 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat] = &[___fsdiv_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsdiv.c:78: 	*(iTemp42 [k57 lr43:44 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat]) := 0x7fc00000 {const-long-int literal}
;gen.c:5947: size=3/4, offset=0, AOP_TYPE(res)=8
;	.line	78; "fsdiv.c"	fl2.l = 0x7FC00000;
	BANKSEL	___fsdiv_fl2_1_1
	CLRF	(___fsdiv_fl2_1_1 + 0)
;gen.c:5947: size=2/4, offset=1, AOP_TYPE(res)=8
	CLRF	(___fsdiv_fl2_1_1 + 1)
;gen.c:5947: size=1/4, offset=2, AOP_TYPE(res)=8
	MOVLW	0xc0
	MOVWF	(___fsdiv_fl2_1_1 + 2)
;gen.c:5947: size=0/4, offset=3, AOP_TYPE(res)=8
	MOVLW	0x7f
	MOVWF	(___fsdiv_fl2_1_1 + 3)
;[ICODE] fsdiv.c:79: 	iTemp44 [k60 lr45:46 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat] = &[___fsdiv_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsdiv.c:79: 	iTemp46 [k63 lr46:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{volatile-float fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp44 [k60 lr45:46 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat]]
;	.line	79; "fsdiv.c"	return (fl2.f);
	MOVF	(___fsdiv_fl2_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsdiv_fl2_1_1
	MOVF	(___fsdiv_fl2_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsdiv_fl2_1_1
	MOVF	(___fsdiv_fl2_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsdiv_fl2_1_1
	MOVF	(___fsdiv_fl2_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsdiv.c:79: 	ret iTemp46 [k63 lr46:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{volatile-float fixed}[r0x1048 r0x1049 r0x104A r0x104B ]
	MOVF	r0x100B,W
	MOVWF	STK02
	MOVF	r0x100A,W
	MOVWF	STK01
	MOVF	r0x1009,W
	MOVWF	STK00
	MOVF	r0x1008,W
	GOTO	_00122_DS_
;[ICODE] fsdiv.c:79:  _iffalse_0($2) :
;[ICODE] fsdiv.c:83: 	iTemp47 [k64 lr49:50 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat] = &[___fsdiv_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsdiv.c:83: 	iTemp49 [k67 lr50:51 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp47 [k64 lr49:50 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat]]
_00106_DS_
;	.line	83; "fsdiv.c"	if (!fl1.l)
	BANKSEL	___fsdiv_fl1_1_1
	MOVF	(___fsdiv_fl1_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsdiv_fl1_1_1
	MOVF	(___fsdiv_fl1_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsdiv_fl1_1_1
	MOVF	(___fsdiv_fl1_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsdiv_fl1_1_1
	MOVF	(___fsdiv_fl1_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsdiv.c:83: 	if iTemp49 [k67 lr50:51 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] != 0 goto _iffalse_1($4)
	MOVF	r0x100B,W
	IORWF	r0x100A,W
	IORWF	r0x1009,W
	IORWF	r0x1008,W
	BTFSS	STATUS,2
	GOTO	_00108_DS_
;[ICODE] fsdiv.c:84: 	ret 0 {float literal}
;	.line	84; "fsdiv.c"	return (0);
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x00
	GOTO	_00122_DS_
;[ICODE] fsdiv.c:84:  _iffalse_1($4) :
;[ICODE] fsdiv.c:87: 	iTemp51 [k70 lr54:55 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat] = &[___fsdiv_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsdiv.c:87: 	iTemp53 [k73 lr55:56 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp51 [k70 lr54:55 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat]]
_00108_DS_
;	.line	87; "fsdiv.c"	mant1 = MANT (fl1.l);
	BANKSEL	___fsdiv_fl1_1_1
	MOVF	(___fsdiv_fl1_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsdiv_fl1_1_1
	MOVF	(___fsdiv_fl1_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsdiv_fl1_1_1
	MOVF	(___fsdiv_fl1_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsdiv_fl1_1_1
	MOVF	(___fsdiv_fl1_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsdiv.c:87: 	iTemp55 [k75 lr56:57 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp53 [k73 lr55:56 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] & 0x7fffff {unsigned-long-int literal}
	BCF	r0x1009,7
	CLRF	r0x1008
;[ICODE] fsdiv.c:87: 	iTemp50 [k68 lr57:90 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsdiv_mant1_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp55 [k75 lr56:57 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x1048 r0x1049 r0x104A r0x104B ] | 0x800000 {unsigned-long-int literal}
	BSF	r0x1009,7
;[ICODE] fsdiv.c:88: 	iTemp59 [k80 lr60:61 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat] = &[___fsdiv_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsdiv.c:88: 	iTemp61 [k83 lr61:62 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int fixed}[r0x104F r0x1050 r0x1051 r0x1052 ] = @[iTemp59 [k80 lr60:61 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat]]
;	.line	88; "fsdiv.c"	mant2 = MANT (fl2.l);
	BANKSEL	___fsdiv_fl2_1_1
	MOVF	(___fsdiv_fl2_1_1 + 0),W
	BANKSEL	r0x100C
	MOVWF	r0x100C
	BANKSEL	___fsdiv_fl2_1_1
	MOVF	(___fsdiv_fl2_1_1 + 1),W
	BANKSEL	r0x1010
	MOVWF	r0x1010
	BANKSEL	___fsdiv_fl2_1_1
	MOVF	(___fsdiv_fl2_1_1 + 2),W
	BANKSEL	r0x1011
	MOVWF	r0x1011
	BANKSEL	___fsdiv_fl2_1_1
	MOVF	(___fsdiv_fl2_1_1 + 3),W
	BANKSEL	r0x1012
	MOVWF	r0x1012
;[ICODE] fsdiv.c:88: 	iTemp63 [k85 lr62:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x104F r0x1050 r0x1051 r0x1052 ] = iTemp61 [k83 lr61:62 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int fixed}[r0x104F r0x1050 r0x1051 r0x1052 ] & 0x7fffff {unsigned-long-int literal}
	BCF	r0x1011,7
	CLRF	r0x1012
;[ICODE] fsdiv.c:88: 	iTemp58 [k78 lr63:90 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsdiv_mant2_1_1}[r0x104F r0x1050 r0x1051 r0x1052 ] = iTemp63 [k85 lr62:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x104F r0x1050 r0x1051 r0x1052 ] | 0x800000 {unsigned-long-int literal}
	BSF	r0x1011,7
;[ICODE] fsdiv.c:91: 	iTemp66 [k88 lr66:67 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp50 [k68 lr57:90 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsdiv_mant1_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] < iTemp58 [k78 lr63:90 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsdiv_mant2_1_1}[r0x104F r0x1050 r0x1051 r0x1052 ]
	MOVLW	0x00
	ADDLW	0x80
	MOVWF	r0x1016
	MOVLW	0x00
	ADDLW	0x80
	SUBWF	r0x1016,W
	BTFSS	STATUS,2
	GOTO	_00142_DS_
	MOVF	r0x1011,W
	SUBWF	r0x1009,W
	BTFSS	STATUS,2
	GOTO	_00142_DS_
	MOVF	r0x1010,W
	SUBWF	r0x100A,W
	BTFSS	STATUS,2
	GOTO	_00142_DS_
	MOVF	r0x100C,W
	SUBWF	r0x100B,W
_00142_DS_
	BTFSC	STATUS,0
	GOTO	_00110_DS_
;genSkipc:3057: created from rifx:0xbff8bc44
;[ICODE] fsdiv.c:91: 	if iTemp66 [k88 lr66:67 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_2($6)
;[ICODE] fsdiv.c:93: 	iTemp50 [k68 lr57:90 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsdiv_mant1_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp50 [k68 lr57:90 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsdiv_mant1_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] << 0x1 {const-unsigned-char literal}
;	.line	93; "fsdiv.c"	mant1 <<= 1;
	BCF	STATUS,0
	BANKSEL	r0x100B
	RLF	r0x100B,F
	RLF	r0x100A,F
	RLF	r0x1009,F
	RLF	r0x1008,F
;[ICODE] fsdiv.c:94: 	iTemp6 [k14 lr14:127 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsdiv_exp_1_1}[r0x104C r0x104D ] = iTemp6 [k14 lr14:127 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsdiv_exp_1_1}[r0x104C r0x104D ] - 0x1 {const-unsigned-char literal}
;	.line	94; "fsdiv.c"	exp--;
	MOVLW	0xff
	ADDWF	r0x100F,F
	BTFSS	STATUS,0
	DECF	r0x100E,F
;[ICODE] fsdiv.c:94:  _iffalse_2($6) :
;[ICODE] fsdiv.c:98: 	iTemp70 [k92 lr73:90 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___fsdiv_mask_1_1}[r0x1053 r0x1054 r0x1055 r0x1056 ] := 0x1000000 {unsigned-long-int literal}
_00110_DS_
;	.line	98; "fsdiv.c"	mask = 0x1000000;
	BANKSEL	r0x1013
	CLRF	r0x1013
	CLRF	r0x1014
	CLRF	r0x1015
	MOVLW	0x01
	MOVWF	r0x1016
;[ICODE] fsdiv.c:99: 	iTemp71 [k94 lr74:130 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsdiv_result_1_1}[r0x1057 r0x1058 r0x1059 r0x105A ] := 0x0 {long-int literal}
;	.line	99; "fsdiv.c"	result = 0;
	CLRF	r0x1017
	CLRF	r0x1018
	CLRF	r0x1019
	CLRF	r0x101A
;[ICODE] fsdiv.c:100:  _whilecontinue_0($9) :
;[ICODE] fsdiv.c:100: 	if iTemp70 [k92 lr73:90 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___fsdiv_mask_1_1}[r0x1053 r0x1054 r0x1055 r0x1056 ] == 0 goto _whilebreak_0($11)
_00113_DS_
;	.line	100; "fsdiv.c"	while (mask)
	BANKSEL	r0x1013
	MOVF	r0x1013,W
	IORWF	r0x1014,W
	IORWF	r0x1015,W
	IORWF	r0x1016,W
	BTFSC	STATUS,2
	GOTO	_00115_DS_
;[ICODE] fsdiv.c:102: 	iTemp72 [k96 lr78:79 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp50 [k68 lr57:90 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsdiv_mant1_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] < iTemp58 [k78 lr63:90 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsdiv_mant2_1_1}[r0x104F r0x1050 r0x1051 r0x1052 ]
;	.line	102; "fsdiv.c"	if (mant1 >= mant2)
	MOVF	r0x1008,W
	ADDLW	0x80
	MOVWF	r0x101B
	MOVF	r0x1012,W
	ADDLW	0x80
	SUBWF	r0x101B,W
	BTFSS	STATUS,2
	GOTO	_00143_DS_
	MOVF	r0x1011,W
	SUBWF	r0x1009,W
	BTFSS	STATUS,2
	GOTO	_00143_DS_
	MOVF	r0x1010,W
	SUBWF	r0x100A,W
	BTFSS	STATUS,2
	GOTO	_00143_DS_
	MOVF	r0x100C,W
	SUBWF	r0x100B,W
_00143_DS_
	BTFSS	STATUS,0
	GOTO	_00112_DS_
;genSkipc:3057: created from rifx:0xbff8bc44
;[ICODE] fsdiv.c:102: 	if iTemp72 [k96 lr78:79 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto _iffalse_3($8)
;[ICODE] fsdiv.c:104: 	iTemp71 [k94 lr74:130 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsdiv_result_1_1}[r0x1057 r0x1058 r0x1059 r0x105A ] = iTemp71 [k94 lr74:130 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsdiv_result_1_1}[r0x1057 r0x1058 r0x1059 r0x105A ] | iTemp70 [k92 lr73:90 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___fsdiv_mask_1_1}[r0x1053 r0x1054 r0x1055 r0x1056 ]
;	.line	104; "fsdiv.c"	result |= mask;
	BANKSEL	r0x1013
	MOVF	r0x1013,W
	IORWF	r0x1017,F
	MOVF	r0x1014,W
	IORWF	r0x1018,F
	MOVF	r0x1015,W
	IORWF	r0x1019,F
	MOVF	r0x1016,W
	IORWF	r0x101A,F
;[ICODE] fsdiv.c:105: 	iTemp50 [k68 lr57:90 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsdiv_mant1_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp50 [k68 lr57:90 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsdiv_mant1_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] - iTemp58 [k78 lr63:90 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsdiv_mant2_1_1}[r0x104F r0x1050 r0x1051 r0x1052 ]
;	.line	105; "fsdiv.c"	mant1 -= mant2;
	MOVF	r0x100C,W
	SUBWF	r0x100B,F
	MOVF	r0x1010,W
	BTFSS	STATUS,0
	INCFSZ	r0x1010,W
	SUBWF	r0x100A,F
	MOVF	r0x1011,W
	BTFSS	STATUS,0
	INCFSZ	r0x1011,W
	SUBWF	r0x1009,F
	MOVF	r0x1012,W
	BTFSS	STATUS,0
	INCFSZ	r0x1012,W
	SUBWF	r0x1008,F
;[ICODE] fsdiv.c:105:  _iffalse_3($8) :
;[ICODE] fsdiv.c:107: 	iTemp50 [k68 lr57:90 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsdiv_mant1_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp50 [k68 lr57:90 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsdiv_mant1_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] << 0x1 {const-unsigned-char literal}
_00112_DS_
;	.line	107; "fsdiv.c"	mant1 <<= 1;
	BCF	STATUS,0
	BANKSEL	r0x100B
	RLF	r0x100B,F
	RLF	r0x100A,F
	RLF	r0x1009,F
	RLF	r0x1008,F
;[ICODE] fsdiv.c:108: 	iTemp70 [k92 lr73:90 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___fsdiv_mask_1_1}[r0x1053 r0x1054 r0x1055 r0x1056 ] = iTemp70 [k92 lr73:90 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___fsdiv_mask_1_1}[r0x1053 r0x1054 r0x1055 r0x1056 ] >> 0x1 {const-unsigned-char literal}
;shiftRight_Left2ResultLit:4886: shCount=1, size=4, sign=0, same=1, offr=0
;	.line	108; "fsdiv.c"	mask >>= 1;
	BCF	STATUS,0
	RRF	r0x1016,F
	RRF	r0x1015,F
	RRF	r0x1014,F
	RRF	r0x1013,F
;[ICODE] fsdiv.c:108: 	 goto _whilecontinue_0($9)
	GOTO	_00113_DS_
;[ICODE] fsdiv.c:108:  _whilebreak_0($11) :
;[ICODE] fsdiv.c:112: 	iTemp71 [k94 lr74:130 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsdiv_result_1_1}[r0x1057 r0x1058 r0x1059 r0x105A ] = iTemp71 [k94 lr74:130 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsdiv_result_1_1}[r0x1057 r0x1058 r0x1059 r0x105A ] + 0x1 {long-int literal}
_00115_DS_
;	.line	112; "fsdiv.c"	result += 1;
	BANKSEL	r0x1017
	INCF	r0x1017,F
	BTFSC	STATUS,2
	INCF	r0x1018,F
	BTFSC	STATUS,2
	INCF	r0x1019,F
	BTFSC	STATUS,2
	INCF	r0x101A,F
;[ICODE] fsdiv.c:115: 	iTemp6 [k14 lr14:127 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsdiv_exp_1_1}[r0x104C r0x104D ] = iTemp6 [k14 lr14:127 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsdiv_exp_1_1}[r0x104C r0x104D ] + 0x1 {const-unsigned-char literal}
;	.line	115; "fsdiv.c"	exp++;
	INCF	r0x100F,F
	BTFSC	STATUS,2
	INCF	r0x100E,F
;[ICODE] fsdiv.c:116: 	iTemp71 [k94 lr74:130 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsdiv_result_1_1}[r0x1057 r0x1058 r0x1059 r0x105A ] = iTemp71 [k94 lr74:130 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsdiv_result_1_1}[r0x1057 r0x1058 r0x1059 r0x105A ] >> 0x1 {const-unsigned-char literal}
;shiftRight_Left2ResultLit:4886: shCount=1, size=4, sign=1, same=1, offr=0
;	.line	116; "fsdiv.c"	result >>= 1;
	BCF	STATUS,0
	BTFSC	r0x101A,7
	BSF	STATUS,0
	RRF	r0x101A,F
	RRF	r0x1019,F
	RRF	r0x1018,F
	RRF	r0x1017,F
;[ICODE] fsdiv.c:118: 	iTemp71 [k94 lr74:130 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsdiv_result_1_1}[r0x1057 r0x1058 r0x1059 r0x105A ] = iTemp71 [k94 lr74:130 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsdiv_result_1_1}[r0x1057 r0x1058 r0x1059 r0x105A ] & 0xff7fffff {unsigned-long-int literal}
;	.line	118; "fsdiv.c"	result &= ~HIDDEN;
	BCF	r0x1019,7
;[ICODE] fsdiv.c:121: 	iTemp86 [k110 lr101:102 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp6 [k14 lr14:127 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsdiv_exp_1_1}[r0x104C r0x104D ] < 0x100 {const-int literal}
;signed compare: left < lit(0x100=256), size=2, mask=ffff
;	.line	121; "fsdiv.c"	if (exp >= 0x100)
	MOVF	r0x100E,W
	ADDLW	0x80
	ADDLW	0x7f
	BTFSS	STATUS,2
	GOTO	_00144_DS_
	MOVLW	0x00
	SUBWF	r0x100F,W
_00144_DS_
	BTFSS	STATUS,0
	GOTO	_00120_DS_
;genSkipc:3057: created from rifx:0xbff8bc44
;[ICODE] fsdiv.c:121: 	if iTemp86 [k110 lr101:102 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto _iffalse_5($16)
;[ICODE] fsdiv.c:122: 	iTemp87 [k111 lr103:111 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat] = &[___fsdiv_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsdiv.c:122: 	if iTemp24 [k35 lr38:121 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ ___fsdiv_sign_1_1}[r0x104E ] == 0 goto iTempLbl0($20)
;	.line	122; "fsdiv.c"	fl1.l = (sign ? SIGNBIT : 0) | 0x7F800000;
	BANKSEL	r0x100D
	MOVF	r0x100D,W
	BTFSC	STATUS,2
	GOTO	_00124_DS_
;[ICODE] fsdiv.c:122: 	iTemp89 [k114 lr105:110 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x1048 r0x1049 r0x104A r0x104B ] := 0x80000000 {unsigned-long-int literal}
	CLRF	r0x100B
	CLRF	r0x100A
	CLRF	r0x1009
	MOVLW	0x80
	MOVWF	r0x1008
;[ICODE] fsdiv.c:122: 	 goto iTempLbl1($21)
	GOTO	_00125_DS_
;[ICODE] fsdiv.c:122:  iTempLbl0($20) :
;[ICODE] fsdiv.c:122: 	iTemp89 [k114 lr105:110 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x1048 r0x1049 r0x104A r0x104B ] := 0x0 {unsigned-long-int literal}
_00124_DS_
	BANKSEL	r0x100B
	CLRF	r0x100B
	CLRF	r0x100A
	CLRF	r0x1009
	CLRF	r0x1008
;[ICODE] fsdiv.c:122:  iTempLbl1($21) :
;[ICODE] fsdiv.c:122: 	iTemp90 [k115 lr110:111 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-unsigned-long-int register}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp89 [k114 lr105:110 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x1048 r0x1049 r0x104A r0x104B ] | 0x7f800000 {const-unsigned-long-int literal}
_00125_DS_
	BANKSEL	r0x1009
	BSF	r0x1009,7
	MOVLW	0x7f
	IORWF	r0x1008,F
;[ICODE] fsdiv.c:122: 	*(iTemp87 [k111 lr103:111 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat]) := iTemp90 [k115 lr110:111 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-unsigned-long-int register}[r0x1048 r0x1049 r0x104A r0x104B ]
;gen.c:5947: size=3/4, offset=0, AOP_TYPE(res)=8
	MOVF	r0x100B,W
	BANKSEL	___fsdiv_fl1_1_1
	MOVWF	(___fsdiv_fl1_1_1 + 0)
;gen.c:5947: size=2/4, offset=1, AOP_TYPE(res)=8
	BANKSEL	r0x100A
	MOVF	r0x100A,W
	BANKSEL	___fsdiv_fl1_1_1
	MOVWF	(___fsdiv_fl1_1_1 + 1)
;gen.c:5947: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x1009
	MOVF	r0x1009,W
	BANKSEL	___fsdiv_fl1_1_1
	MOVWF	(___fsdiv_fl1_1_1 + 2)
;gen.c:5947: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x1008
	MOVF	r0x1008,W
	BANKSEL	___fsdiv_fl1_1_1
	MOVWF	(___fsdiv_fl1_1_1 + 3)
;[ICODE] fsdiv.c:122: 	 goto _ifend_5($17)
	GOTO	_00121_DS_
;[ICODE] fsdiv.c:122:  _iffalse_5($16) :
;[ICODE] fsdiv.c:123: 	iTemp92 [k117 lr114:115 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp6 [k14 lr14:127 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsdiv_exp_1_1}[r0x104C r0x104D ] < 0x0 {int literal}
;signed compare: left < lit(0x0=0), size=2, mask=ffff
_00120_DS_
;	.line	123; "fsdiv.c"	else if (exp < 0)
	BSF	STATUS,0
	BANKSEL	r0x100E
	BTFSS	r0x100E,7
	BCF	STATUS,0
	BTFSS	STATUS,0
	GOTO	_00117_DS_
;genSkipc:3057: created from rifx:0xbff8bc44
;[ICODE] fsdiv.c:123: 	if iTemp92 [k117 lr114:115 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_4($13)
;[ICODE] fsdiv.c:124: 	iTemp93 [k118 lr116:117 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat] = &[___fsdiv_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsdiv.c:124: 	*(iTemp93 [k118 lr116:117 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat]) := 0x0 {volatile-long-int literal}
;gen.c:5947: size=3/4, offset=0, AOP_TYPE(res)=8
;	.line	124; "fsdiv.c"	fl1.l = 0;
	BANKSEL	___fsdiv_fl1_1_1
	CLRF	(___fsdiv_fl1_1_1 + 0)
;gen.c:5947: size=2/4, offset=1, AOP_TYPE(res)=8
	CLRF	(___fsdiv_fl1_1_1 + 1)
;gen.c:5947: size=1/4, offset=2, AOP_TYPE(res)=8
	CLRF	(___fsdiv_fl1_1_1 + 2)
;gen.c:5947: size=0/4, offset=3, AOP_TYPE(res)=8
	CLRF	(___fsdiv_fl1_1_1 + 3)
;[ICODE] fsdiv.c:124: 	 goto _ifend_5($17)
	GOTO	_00121_DS_
;[ICODE] fsdiv.c:124:  _iffalse_4($13) :
;[ICODE] fsdiv.c:126: 	iTemp95 [k121 lr120:131 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat] = &[___fsdiv_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsdiv.c:126: 	if iTemp24 [k35 lr38:121 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ ___fsdiv_sign_1_1}[r0x104E ] == 0 goto iTempLbl2($22)
_00117_DS_
;	.line	126; "fsdiv.c"	fl1.l = PACK (sign ? SIGNBIT : 0 , exp, result);
	MOVLW	0x00
	BANKSEL	r0x100D
	IORWF	r0x100D,W
	BTFSC	STATUS,2
	GOTO	_00126_DS_
;[ICODE] fsdiv.c:126: 	iTemp97 [k124 lr122:129 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x1048 r0x1049 r0x104A r0x104B ] := 0x80000000 {unsigned-long-int literal}
	CLRF	r0x100B
	CLRF	r0x100A
	CLRF	r0x1009
	MOVLW	0x80
	MOVWF	r0x1008
;[ICODE] fsdiv.c:126: 	 goto iTempLbl3($23)
	GOTO	_00127_DS_
;[ICODE] fsdiv.c:126:  iTempLbl2($22) :
;[ICODE] fsdiv.c:126: 	iTemp97 [k124 lr122:129 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x1048 r0x1049 r0x104A r0x104B ] := 0x0 {unsigned-long-int literal}
_00126_DS_
	BANKSEL	r0x100B
	CLRF	r0x100B
	CLRF	r0x100A
	CLRF	r0x1009
	CLRF	r0x1008
;[ICODE] fsdiv.c:126:  iTempLbl3($23) :
;[ICODE] fsdiv.c:126: 	iTemp98 [k125 lr127:128 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104E r0x104F r0x1050 r0x1051 ] = (unsigned-long-int fixed)iTemp6 [k14 lr14:127 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fsdiv_exp_1_1}[r0x104C r0x104D ]
_00127_DS_
	BANKSEL	r0x100F
	MOVF	r0x100F,W
	MOVWF	r0x100D
	MOVF	r0x100E,W
	MOVWF	r0x100C
	MOVLW	0x00
	BTFSC	r0x100C,7
	MOVLW	0xff
	MOVWF	r0x1011
	MOVWF	r0x1010
;[ICODE] fsdiv.c:126: 	iTemp99 [k126 lr128:129 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104C r0x104D r0x1052 r0x1053 ] = iTemp98 [k125 lr127:128 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104E r0x104F r0x1050 r0x1051 ] << 0x17 {const-unsigned-char literal}
	RRF	r0x100C,W
	RRF	r0x100D,W
	MOVWF	r0x1013
	CLRF	r0x1012
	RRF	r0x1012,F
	CLRF	r0x100E
	CLRF	r0x100F
;[ICODE] fsdiv.c:126: 	iTemp100 [k127 lr129:130 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp97 [k124 lr122:129 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x1048 r0x1049 r0x104A r0x104B ] | iTemp99 [k126 lr128:129 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104C r0x104D r0x1052 r0x1053 ]
	MOVLW	0x00
	IORWF	r0x100B,F
	MOVLW	0x00
	IORWF	r0x100A,F
	MOVF	r0x1012,W
	IORWF	r0x1009,F
	MOVF	r0x1013,W
	IORWF	r0x1008,F
;[ICODE] fsdiv.c:126: 	iTemp102 [k129 lr130:131 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1057 r0x1058 r0x1059 r0x105A ] = iTemp100 [k127 lr129:130 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] | iTemp71 [k94 lr74:130 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fsdiv_result_1_1}[r0x1057 r0x1058 r0x1059 r0x105A ]
	MOVF	r0x100B,W
	IORWF	r0x1017,F
	MOVF	r0x100A,W
	IORWF	r0x1018,F
	MOVF	r0x1009,W
	IORWF	r0x1019,F
	MOVF	r0x1008,W
	IORWF	r0x101A,F
;[ICODE] fsdiv.c:126: 	*(iTemp95 [k121 lr120:131 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat]) := iTemp102 [k129 lr130:131 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1057 r0x1058 r0x1059 r0x105A ]
;gen.c:5947: size=3/4, offset=0, AOP_TYPE(res)=8
	MOVF	r0x1017,W
	BANKSEL	___fsdiv_fl1_1_1
	MOVWF	(___fsdiv_fl1_1_1 + 0)
;gen.c:5947: size=2/4, offset=1, AOP_TYPE(res)=8
	BANKSEL	r0x1018
	MOVF	r0x1018,W
	BANKSEL	___fsdiv_fl1_1_1
	MOVWF	(___fsdiv_fl1_1_1 + 1)
;gen.c:5947: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x1019
	MOVF	r0x1019,W
	BANKSEL	___fsdiv_fl1_1_1
	MOVWF	(___fsdiv_fl1_1_1 + 2)
;gen.c:5947: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x101A
	MOVF	r0x101A,W
	BANKSEL	___fsdiv_fl1_1_1
	MOVWF	(___fsdiv_fl1_1_1 + 3)
;[ICODE] fsdiv.c:126:  _ifend_5($17) :
;[ICODE] fsdiv.c:127: 	iTemp104 [k131 lr133:134 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat] = &[___fsdiv_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fsdiv.c:127: 	iTemp106 [k134 lr134:135 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{volatile-float fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp104 [k131 lr133:134 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat]]
_00121_DS_
;	.line	127; "fsdiv.c"	return (fl1.f);
	BANKSEL	___fsdiv_fl1_1_1
	MOVF	(___fsdiv_fl1_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsdiv_fl1_1_1
	MOVF	(___fsdiv_fl1_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsdiv_fl1_1_1
	MOVF	(___fsdiv_fl1_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsdiv_fl1_1_1
	MOVF	(___fsdiv_fl1_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsdiv.c:127: 	ret iTemp106 [k134 lr134:135 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{volatile-float fixed}[r0x1048 r0x1049 r0x104A r0x104B ]
	MOVF	r0x100B,W
	MOVWF	STK02
	MOVF	r0x100A,W
	MOVWF	STK01
	MOVF	r0x1009,W
	MOVWF	STK00
	MOVF	r0x1008,W
;[ICODE] fsdiv.c:127:  _return($18) :
;[ICODE] fsdiv.c:127: 	eproc ___fsdiv [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float fixed, float fixed)  fixed}
_00122_DS_
	RETURN	
; exit point of ___fsdiv


;	code size estimation:
;	  469+  128 =   597 instructions ( 1450 byte)

	end
