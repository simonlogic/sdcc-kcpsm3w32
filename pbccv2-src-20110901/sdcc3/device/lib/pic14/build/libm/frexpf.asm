;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6064 (Nov 22 2010) (Linux)
; This file was generated Mon Nov 22 22:55:46 2010
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"frexpf.c"
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
	extern	_ldexpf
	extern	_ceilf
	extern	_floorf
	extern	_modff
	extern	_errno
	extern	__gptrput2

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
	global	_frexpf

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_frexpf_0	udata
r0x1007	res	1
r0x1006	res	1
r0x1005	res	1
r0x1004	res	1
r0x100A	res	1
r0x1009	res	1
r0x1008	res	1
r0x100B	res	1
r0x100C	res	1
r0x100E	res	1
r0x100D	res	1
_frexpf_fl_1_1	res	4
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
code_frexpf	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _frexpf	;Function start
; 2 exit points
;has an exit
;functions called:
;   __gptrput2
;   __gptrput2
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
;   STK05
;   r0x100A
;   r0x100B
;   r0x100C
;   r0x100D
;   r0x100E
;   r0x100F
;   r0x1010
;; Starting pCode block
;[ICODE] frexpf.c:33:  _entry($2) :
;[ICODE] frexpf.c:33: 	proc _frexpf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed, int generic* fixed)  fixed}
_frexpf	;Function start
; 2 exit points
;[ICODE] frexpf.c:33: iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _frexpf_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = recv _frexpf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed, int generic* fixed)  fixed}
;	.line	33; "frexpf.c"	float frexpf(const float x, int *pw2)
	BANKSEL	r0x1004
	MOVWF	r0x1004
	MOVF	STK00,W
	MOVWF	r0x1005
	MOVF	STK01,W
	MOVWF	r0x1006
	MOVF	STK02,W
	BANKSEL	_frexpf_fl_1_1
	MOVWF	(_frexpf_fl_1_1 + 0)
	BANKSEL	r0x1007
	MOVWF	r0x1007
;[ICODE] frexpf.c:33: iTemp1 [k4 lr4:15 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int generic* fixed}{ sir@ _frexpf_pw2_1_1}[r0x104C r0x104D r0x104E ] = recv _frexpf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed, int generic* fixed)  fixed}
	MOVF	STK03,W
	MOVWF	r0x1008
	MOVF	STK04,W
	MOVWF	r0x1009
	MOVF	STK05,W
	MOVWF	r0x100A
;[ICODE] frexpf.c:38: 	iTemp2 [k7 lr5:6 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat] = &[_frexpf_fl_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct float_long fixed}]
;[ICODE] frexpf.c:38: 	*(iTemp2 [k7 lr5:6 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat]) := iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float fixed}{ sir@ _frexpf_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]
;gen.c:5947: size=3/4, offset=0, AOP_TYPE(res)=8
;;102	MOVF	r0x1007,W
;gen.c:5947: size=2/4, offset=1, AOP_TYPE(res)=8
;	.line	38; "frexpf.c"	fl.f=x;
	MOVF	r0x1006,W
	BANKSEL	_frexpf_fl_1_1
	MOVWF	(_frexpf_fl_1_1 + 1)
;gen.c:5947: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x1005
	MOVF	r0x1005,W
	BANKSEL	_frexpf_fl_1_1
	MOVWF	(_frexpf_fl_1_1 + 2)
;gen.c:5947: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x1004
	MOVF	r0x1004,W
	BANKSEL	_frexpf_fl_1_1
	MOVWF	(_frexpf_fl_1_1 + 3)
;[ICODE] frexpf.c:40: 	iTemp5 [k12 lr7:20 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat] = &[_frexpf_fl_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct float_long fixed}]
;[ICODE] frexpf.c:40: 	iTemp7 [k15 lr8:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp5 [k12 lr7:20 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat]]
;	.line	40; "frexpf.c"	i  = ( fl.l >> 23) & 0x000000ff;
	MOVF	(_frexpf_fl_1_1 + 0),W
	BANKSEL	r0x1007
	MOVWF	r0x1007
	BANKSEL	_frexpf_fl_1_1
	MOVF	(_frexpf_fl_1_1 + 1),W
	BANKSEL	r0x1006
	MOVWF	r0x1006
	BANKSEL	_frexpf_fl_1_1
	MOVF	(_frexpf_fl_1_1 + 2),W
	BANKSEL	r0x1005
	MOVWF	r0x1005
	BANKSEL	_frexpf_fl_1_1
	MOVF	(_frexpf_fl_1_1 + 3),W
	BANKSEL	r0x1004
	MOVWF	r0x1004
;[ICODE] frexpf.c:40: 	iTemp8 [k16 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int fixed}[r0x104F r0x1050 r0x1051 r0x1052 ] = iTemp7 [k15 lr8:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] >> 0x17 {const-unsigned-char literal}
	RLF	r0x1005,W
	RLF	r0x1004,W
	MOVWF	r0x100B
	CLRF	r0x100C
	BTFSC	STATUS,0
	DECF	r0x100C,F
	MOVLW	0x00
	BTFSC	r0x100C,7
	MOVLW	0xff
	MOVWF	r0x100D
	MOVWF	r0x100E
;[ICODE] frexpf.c:40: 	iTemp4 [k10 lr10:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ _frexpf_i_1_1}[r0x104F r0x1050 r0x1051 r0x1052 ] = iTemp8 [k16 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int fixed}[r0x104F r0x1050 r0x1051 r0x1052 ] & 0xff {volatile-long-int literal}
	CLRF	r0x100C
	CLRF	r0x100E
	CLRF	r0x100D
;[ICODE] frexpf.c:41: 	iTemp4 [k10 lr10:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ _frexpf_i_1_1}[r0x104F r0x1050 r0x1051 r0x1052 ] = iTemp4 [k10 lr10:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ _frexpf_i_1_1}[r0x104F r0x1050 r0x1051 r0x1052 ] - 0x7e {long-int literal}
;	.line	41; "frexpf.c"	i -= 0x7e;
	MOVLW	0x82
	ADDWF	r0x100B,F
	MOVLW	0xff
	BTFSS	STATUS,0
	ADDWF	r0x100C,F
	MOVLW	0xff
	BTFSS	STATUS,0
	ADDWF	r0x100E,F
	MOVLW	0xff
	BTFSS	STATUS,0
	ADDWF	r0x100D,F
;[ICODE] frexpf.c:42: 	iTemp12 [k20 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x1053 r0x1054 ] = (int fixed)iTemp4 [k10 lr10:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ _frexpf_i_1_1}[r0x104F r0x1050 r0x1051 r0x1052 ]
;;101	MOVF	r0x100B,W
;;99	MOVWF	r0x100F
;	.line	42; "frexpf.c"	*pw2 = i;
	MOVF	r0x100C,W
;;1	MOVWF	r0x1010
	MOVWF	STK02
;;100	MOVF	r0x100F,W
	MOVF	r0x100B,W
	MOVWF	STK03
	MOVF	r0x100A,W
	MOVWF	STK01
	MOVF	r0x1009,W
	MOVWF	STK00
	MOVF	r0x1008,W
	PAGESEL	__gptrput2
	CALL	__gptrput2
	PAGESEL	$
;[ICODE] frexpf.c:43: 	iTemp19 [k29 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-unsigned-long-int register}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp7 [k15 lr8:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] & 0x807fffff {const-unsigned-long-int literal}
;	.line	43; "frexpf.c"	fl.l &= 0x807fffff; /* strip all exponent bits */
	BANKSEL	r0x1005
	BCF	r0x1005,7
	MOVLW	0x80
	ANDWF	r0x1004,F
;[ICODE] frexpf.c:43: 	*(iTemp5 [k12 lr7:20 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat]) := iTemp19 [k29 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-unsigned-long-int register}[r0x1048 r0x1049 r0x104A r0x104B ]
;gen.c:5947: size=3/4, offset=0, AOP_TYPE(res)=8
	MOVF	r0x1007,W
	BANKSEL	_frexpf_fl_1_1
	MOVWF	(_frexpf_fl_1_1 + 0)
;gen.c:5947: size=2/4, offset=1, AOP_TYPE(res)=8
	BANKSEL	r0x1006
	MOVF	r0x1006,W
	BANKSEL	_frexpf_fl_1_1
	MOVWF	(_frexpf_fl_1_1 + 1)
;gen.c:5947: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x1005
	MOVF	r0x1005,W
	BANKSEL	_frexpf_fl_1_1
	MOVWF	(_frexpf_fl_1_1 + 2)
;gen.c:5947: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x1004
	MOVF	r0x1004,W
	BANKSEL	_frexpf_fl_1_1
	MOVWF	(_frexpf_fl_1_1 + 3)
;[ICODE] frexpf.c:44: 	iTemp25 [k37 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp5 [k12 lr7:20 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat]]
;	.line	44; "frexpf.c"	fl.l |= 0x3f000000; /* mantissa between 0.5 and 1 */
	MOVF	(_frexpf_fl_1_1 + 0),W
	BANKSEL	r0x1007
	MOVWF	r0x1007
	BANKSEL	_frexpf_fl_1_1
	MOVF	(_frexpf_fl_1_1 + 1),W
	BANKSEL	r0x1006
	MOVWF	r0x1006
	BANKSEL	_frexpf_fl_1_1
	MOVF	(_frexpf_fl_1_1 + 2),W
	BANKSEL	r0x1005
	MOVWF	r0x1005
	BANKSEL	_frexpf_fl_1_1
	MOVF	(_frexpf_fl_1_1 + 3),W
	BANKSEL	r0x1004
	MOVWF	r0x1004
;[ICODE] frexpf.c:44: 	iTemp26 [k38 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-long-int register}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp25 [k37 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] | 0x3f000000 {const-long-int literal}
	MOVLW	0x3f
	IORWF	r0x1004,F
;[ICODE] frexpf.c:44: 	*(iTemp5 [k12 lr7:20 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat]) := iTemp26 [k38 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-long-int register}[r0x1048 r0x1049 r0x104A r0x104B ]
;gen.c:5947: size=3/4, offset=0, AOP_TYPE(res)=8
	MOVF	r0x1007,W
	BANKSEL	_frexpf_fl_1_1
	MOVWF	(_frexpf_fl_1_1 + 0)
;gen.c:5947: size=2/4, offset=1, AOP_TYPE(res)=8
	BANKSEL	r0x1006
	MOVF	r0x1006,W
	BANKSEL	_frexpf_fl_1_1
	MOVWF	(_frexpf_fl_1_1 + 1)
;gen.c:5947: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x1005
	MOVF	r0x1005,W
	BANKSEL	_frexpf_fl_1_1
	MOVWF	(_frexpf_fl_1_1 + 2)
;gen.c:5947: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x1004
	MOVF	r0x1004,W
	BANKSEL	_frexpf_fl_1_1
	MOVWF	(_frexpf_fl_1_1 + 3)
;[ICODE] frexpf.c:45: 	iTemp27 [k39 lr21:22 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat] = &[_frexpf_fl_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct float_long fixed}]
;[ICODE] frexpf.c:45: 	iTemp29 [k42 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{volatile-float fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp27 [k39 lr21:22 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat]]
;	.line	45; "frexpf.c"	return(fl.f);
	MOVF	(_frexpf_fl_1_1 + 0),W
	BANKSEL	r0x1007
	MOVWF	r0x1007
	BANKSEL	_frexpf_fl_1_1
	MOVF	(_frexpf_fl_1_1 + 1),W
	BANKSEL	r0x1006
	MOVWF	r0x1006
	BANKSEL	_frexpf_fl_1_1
	MOVF	(_frexpf_fl_1_1 + 2),W
	BANKSEL	r0x1005
	MOVWF	r0x1005
	BANKSEL	_frexpf_fl_1_1
	MOVF	(_frexpf_fl_1_1 + 3),W
	BANKSEL	r0x1004
	MOVWF	r0x1004
;[ICODE] frexpf.c:45: 	ret iTemp29 [k42 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{volatile-float fixed}[r0x1048 r0x1049 r0x104A r0x104B ]
	MOVF	r0x1007,W
	MOVWF	STK02
	MOVF	r0x1006,W
	MOVWF	STK01
	MOVF	r0x1005,W
	MOVWF	STK00
	MOVF	r0x1004,W
;[ICODE] frexpf.c:45:  _return($1) :
;[ICODE] frexpf.c:45: 	eproc _frexpf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float fixed, int generic* fixed)  fixed}
	RETURN	
; exit point of _frexpf


;	code size estimation:
;	  108+   46 =   154 instructions (  400 byte)

	end
