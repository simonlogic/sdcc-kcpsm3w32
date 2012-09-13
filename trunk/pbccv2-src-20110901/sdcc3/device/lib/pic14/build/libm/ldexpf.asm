;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6064 (Nov 22 2010) (Linux)
; This file was generated Mon Nov 22 22:55:46 2010
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"ldexpf.c"
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
	extern	___fsneq
	extern	___fsgt
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
	extern	_ceilf
	extern	_floorf
	extern	_modff
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
	global	_ldexpf

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_ldexpf_0	udata
r0x1007	res	1
r0x1006	res	1
r0x1005	res	1
r0x1004	res	1
r0x1009	res	1
r0x1008	res	1
r0x100A	res	1
r0x100B	res	1
r0x100D	res	1
r0x100C	res	1
r0x100E	res	1
r0x100F	res	1
r0x1011	res	1
r0x1010	res	1
_ldexpf_fl_1_1	res	4
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
code_ldexpf	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _ldexpf	;Function start
; 2 exit points
;has an exit
;19 compiler assigned registers:
;   r0x1004
;   STK00
;   r0x1005
;   STK01
;   r0x1006
;   STK02
;   r0x1007
;   STK03
;   r0x1008
;   STK04
;   r0x1009
;   r0x100A
;   r0x100B
;   r0x100C
;   r0x100D
;   r0x100E
;   r0x100F
;   r0x1010
;   r0x1011
;; Starting pCode block
;[ICODE] ldexpf.c:33:  _entry($2) :
;[ICODE] ldexpf.c:33: 	proc _ldexpf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed, const-int fixed)  fixed}
_ldexpf	;Function start
; 2 exit points
;[ICODE] ldexpf.c:33: iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _ldexpf_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = recv _ldexpf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed, const-int fixed)  fixed}
;	.line	33; "ldexpf.c"	float ldexpf(const float x, const int pw2)
	BANKSEL	r0x1004
	MOVWF	r0x1004
	MOVF	STK00,W
	MOVWF	r0x1005
	MOVF	STK01,W
	MOVWF	r0x1006
	MOVF	STK02,W
	BANKSEL	_ldexpf_fl_1_1
	MOVWF	(_ldexpf_fl_1_1 + 0)
	BANKSEL	r0x1007
	MOVWF	r0x1007
;[ICODE] ldexpf.c:33: iTemp1 [k4 lr4:12 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-int fixed}{ sir@ _ldexpf_pw2_1_1}[r0x104C r0x104D ] = recv _ldexpf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed, const-int fixed)  fixed}
	MOVF	STK03,W
	MOVWF	r0x1008
	MOVF	STK04,W
	MOVWF	r0x1009
;[ICODE] ldexpf.c:38: 	iTemp2 [k7 lr5:6 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat] = &[_ldexpf_fl_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct float_long fixed}]
;[ICODE] ldexpf.c:38: 	*(iTemp2 [k7 lr5:6 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat]) := iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _ldexpf_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]
;gen.c:5947: size=3/4, offset=0, AOP_TYPE(res)=8
;;99	MOVF	r0x1007,W
;gen.c:5947: size=2/4, offset=1, AOP_TYPE(res)=8
;	.line	38; "ldexpf.c"	fl.f = x;
	MOVF	r0x1006,W
	BANKSEL	_ldexpf_fl_1_1
	MOVWF	(_ldexpf_fl_1_1 + 1)
;gen.c:5947: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x1005
	MOVF	r0x1005,W
	BANKSEL	_ldexpf_fl_1_1
	MOVWF	(_ldexpf_fl_1_1 + 2)
;gen.c:5947: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x1004
	MOVF	r0x1004,W
	BANKSEL	_ldexpf_fl_1_1
	MOVWF	(_ldexpf_fl_1_1 + 3)
;[ICODE] ldexpf.c:40: 	iTemp5 [k12 lr7:19 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat] = &[_ldexpf_fl_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct float_long fixed}]
;[ICODE] ldexpf.c:40: 	iTemp7 [k15 lr8:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp5 [k12 lr7:19 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat]]
;	.line	40; "ldexpf.c"	e=(fl.l >> 23) & 0x000000ff;
	MOVF	(_ldexpf_fl_1_1 + 0),W
	BANKSEL	r0x1007
	MOVWF	r0x1007
	BANKSEL	_ldexpf_fl_1_1
	MOVF	(_ldexpf_fl_1_1 + 1),W
	BANKSEL	r0x1006
	MOVWF	r0x1006
	BANKSEL	_ldexpf_fl_1_1
	MOVF	(_ldexpf_fl_1_1 + 2),W
	BANKSEL	r0x1005
	MOVWF	r0x1005
	BANKSEL	_ldexpf_fl_1_1
	MOVF	(_ldexpf_fl_1_1 + 3),W
	BANKSEL	r0x1004
	MOVWF	r0x1004
;[ICODE] ldexpf.c:40: 	iTemp8 [k16 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int fixed}[r0x104E r0x104F r0x1050 r0x1051 ] = iTemp7 [k15 lr8:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] >> 0x17 {const-unsigned-char literal}
	RLF	r0x1005,W
	RLF	r0x1004,W
	MOVWF	r0x100A
	CLRF	r0x100B
	BTFSC	STATUS,0
	DECF	r0x100B,F
	MOVLW	0x00
	BTFSC	r0x100B,7
	MOVLW	0xff
	MOVWF	r0x100C
	MOVWF	r0x100D
;[ICODE] ldexpf.c:40: 	iTemp4 [k10 lr10:15 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ _ldexpf_e_1_1}[r0x104E r0x104F r0x1050 r0x1051 ] = iTemp8 [k16 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int fixed}[r0x104E r0x104F r0x1050 r0x1051 ] & 0xff {volatile-long-int literal}
	CLRF	r0x100B
	CLRF	r0x100D
	CLRF	r0x100C
;[ICODE] ldexpf.c:41: 	iTemp10 [k18 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int fixed}[r0x1052 r0x1053 r0x1054 r0x1055 ] = (long-int fixed)iTemp1 [k4 lr4:12 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-int fixed}{ sir@ _ldexpf_pw2_1_1}[r0x104C r0x104D ]
;	.line	41; "ldexpf.c"	e+=pw2;
	MOVF	r0x1009,W
	MOVWF	r0x100E
	MOVF	r0x1008,W
	MOVWF	r0x100F
	MOVLW	0x00
	BTFSC	r0x100F,7
	MOVLW	0xff
	MOVWF	r0x1010
	MOVWF	r0x1011
;[ICODE] ldexpf.c:41: 	iTemp4 [k10 lr10:15 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ _ldexpf_e_1_1}[r0x104E r0x104F r0x1050 r0x1051 ] = iTemp4 [k10 lr10:15 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ _ldexpf_e_1_1}[r0x104E r0x104F r0x1050 r0x1051 ] + iTemp10 [k18 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int fixed}[r0x1052 r0x1053 r0x1054 r0x1055 ]
	MOVF	r0x100E,W
	ADDWF	r0x100A,F
	MOVF	r0x100F,W
	BTFSC	STATUS,0
	INCFSZ	r0x100F,W
	ADDWF	r0x100B,F
	MOVF	r0x1011,W
	BTFSC	STATUS,0
	INCFSZ	r0x1011,W
	ADDWF	r0x100D,F
	MOVF	r0x1010,W
	BTFSC	STATUS,0
	INCFSZ	r0x1010,W
	ADDWF	r0x100C,F
;[ICODE] ldexpf.c:42: 	iTemp14 [k23 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int fixed}[r0x104E r0x104F r0x1050 r0x1051 ] = iTemp4 [k10 lr10:15 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ _ldexpf_e_1_1}[r0x104E r0x104F r0x1050 r0x1051 ] & 0xff {long-int literal}
;	.line	42; "ldexpf.c"	fl.l= ((e & 0xff) << 23) | (fl.l & 0x807fffff);
	CLRF	r0x100B
	CLRF	r0x100D
	CLRF	r0x100C
;[ICODE] ldexpf.c:42: 	iTemp15 [k24 lr16:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int fixed}[r0x104C r0x104D r0x1052 r0x1053 ] = iTemp14 [k23 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int fixed}[r0x104E r0x104F r0x1050 r0x1051 ] << 0x17 {const-unsigned-char literal}
	RRF	r0x100B,W
	RRF	r0x100A,W
	MOVWF	r0x100F
	CLRF	r0x100E
	RRF	r0x100E,F
	CLRF	r0x1008
	CLRF	r0x1009
;[ICODE] ldexpf.c:42: 	iTemp20 [k30 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-unsigned-long-int register}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp7 [k15 lr8:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] & 0x807fffff {const-unsigned-long-int literal}
	BCF	r0x1005,7
	MOVLW	0x80
	ANDWF	r0x1004,F
;[ICODE] ldexpf.c:42: 	iTemp22 [k32 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-unsigned-long-int register}[r0x104C r0x104D r0x1052 r0x1053 ] = iTemp15 [k24 lr16:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int fixed}[r0x104C r0x104D r0x1052 r0x1053 ] | iTemp20 [k30 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-unsigned-long-int register}[r0x1048 r0x1049 r0x104A r0x104B ]
	MOVF	r0x1007,W
	IORWF	r0x1009,F
	MOVF	r0x1006,W
	IORWF	r0x1008,F
	MOVF	r0x1005,W
	IORWF	r0x100E,F
	MOVF	r0x1004,W
	IORWF	r0x100F,F
;[ICODE] ldexpf.c:42: 	*(iTemp5 [k12 lr7:19 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat]) := iTemp22 [k32 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-unsigned-long-int register}[r0x104C r0x104D r0x1052 r0x1053 ]
;gen.c:5947: size=3/4, offset=0, AOP_TYPE(res)=8
	MOVF	r0x1009,W
	BANKSEL	_ldexpf_fl_1_1
	MOVWF	(_ldexpf_fl_1_1 + 0)
;gen.c:5947: size=2/4, offset=1, AOP_TYPE(res)=8
	BANKSEL	r0x1008
	MOVF	r0x1008,W
	BANKSEL	_ldexpf_fl_1_1
	MOVWF	(_ldexpf_fl_1_1 + 1)
;gen.c:5947: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x100E
	MOVF	r0x100E,W
	BANKSEL	_ldexpf_fl_1_1
	MOVWF	(_ldexpf_fl_1_1 + 2)
;gen.c:5947: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x100F
	MOVF	r0x100F,W
	BANKSEL	_ldexpf_fl_1_1
	MOVWF	(_ldexpf_fl_1_1 + 3)
;[ICODE] ldexpf.c:44: 	iTemp24 [k34 lr20:21 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat] = &[_ldexpf_fl_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct float_long fixed}]
;[ICODE] ldexpf.c:44: 	iTemp26 [k37 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{volatile-float fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp24 [k34 lr20:21 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat]]
;	.line	44; "ldexpf.c"	return(fl.f);
	MOVF	(_ldexpf_fl_1_1 + 0),W
	BANKSEL	r0x1007
	MOVWF	r0x1007
	BANKSEL	_ldexpf_fl_1_1
	MOVF	(_ldexpf_fl_1_1 + 1),W
	BANKSEL	r0x1006
	MOVWF	r0x1006
	BANKSEL	_ldexpf_fl_1_1
	MOVF	(_ldexpf_fl_1_1 + 2),W
	BANKSEL	r0x1005
	MOVWF	r0x1005
	BANKSEL	_ldexpf_fl_1_1
	MOVF	(_ldexpf_fl_1_1 + 3),W
	BANKSEL	r0x1004
	MOVWF	r0x1004
;[ICODE] ldexpf.c:44: 	ret iTemp26 [k37 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{volatile-float fixed}[r0x1048 r0x1049 r0x104A r0x104B ]
	MOVF	r0x1007,W
	MOVWF	STK02
	MOVF	r0x1006,W
	MOVWF	STK01
	MOVF	r0x1005,W
	MOVWF	STK00
	MOVF	r0x1004,W
;[ICODE] ldexpf.c:44:  _return($1) :
;[ICODE] ldexpf.c:44: 	eproc _ldexpf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed, const-int fixed)  fixed}
	RETURN	
; exit point of _ldexpf


;	code size estimation:
;	  108+   29 =   137 instructions (  332 byte)

	end
