;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6064 (Nov 22 2010) (Linux)
; This file was generated Mon Nov 22 22:55:45 2010
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"ulong2fs.c"
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
	global	___ulong2fs

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_ulong2fs_0	udata
r0x1007	res	1
r0x1006	res	1
r0x1005	res	1
r0x1004	res	1
r0x1008	res	1
r0x1009	res	1
r0x100A	res	1
r0x100B	res	1
r0x100C	res	1
r0x100D	res	1
r0x100F	res	1
r0x100E	res	1
___ulong2fs_fl_1_1	res	4
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
code_ulong2fs	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  ___ulong2fs	;Function start
; 2 exit points
;has an exit
;15 compiler assigned registers:
;   r0x1004
;   STK00
;   r0x1005
;   STK01
;   r0x1006
;   STK02
;   r0x1007
;   r0x1008
;   r0x1009
;   r0x100A
;   r0x100B
;   r0x100C
;   r0x100D
;   r0x100E
;   r0x100F
;; Starting pCode block
;[ICODE] ulong2fs.c:54:  _entry($14) :
;[ICODE] ulong2fs.c:54: 	proc ___ulong2fs [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( unsigned-long-int fixed)  fixed}
___ulong2fs	;Function start
; 2 exit points
;[ICODE] ulong2fs.c:54: iTemp0 [k2 lr3:43 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___ulong2fs_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = recv ___ulong2fs [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( unsigned-long-int fixed)  fixed}
;	.line	54; "ulong2fs.c"	float __ulong2fs (unsigned long a ) _FS_REENTRANT
	BANKSEL	r0x1004
	MOVWF	r0x1004
	MOVF	STK00,W
	MOVWF	r0x1005
	MOVF	STK01,W
	MOVWF	r0x1006
	MOVF	STK02,W
;	.line	59; "ulong2fs.c"	if (!a)
	MOVWF	r0x1007
	IORWF	r0x1006,W
	IORWF	r0x1005,W
	IORWF	r0x1004,W
	BTFSS	STATUS,2
	GOTO	_00121_DS_
;[ICODE] ulong2fs.c:61: 	ret 0 {const-float literal}
;	.line	61; "ulong2fs.c"	return 0.0;
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x00
	GOTO	_00117_DS_
;[ICODE] ulong2fs.c:64:  preHeaderLbl0($17) :
;[ICODE] ulong2fs.c:64: 	iTemp5 [k9 lr7:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___ulong2fs_exp_1_1}[r0x104C r0x104D ] := 0x96 {int literal}
_00121_DS_
;	.line	64; "ulong2fs.c"	while (a & NORM) 
	MOVLW	0x96
	BANKSEL	r0x1008
	MOVWF	r0x1008
	CLRF	r0x1009
;[ICODE] ulong2fs.c:64:  _whilecontinue_0($3) :
;[ICODE] ulong2fs.c:64: 	iTemp2 [k6 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-unsigned-long-int register} = iTemp0 [k2 lr3:43 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___ulong2fs_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] & 0xff000000 {const-unsigned-long-int literal}
_00107_DS_
	BANKSEL	r0x1004
	MOVF	r0x1004,W
	ANDLW	0xff
	BTFSC	STATUS,2
	GOTO	_00124_DS_
;[ICODE] ulong2fs.c:64: 	if iTemp2 [k6 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-unsigned-long-int register} == 0 goto loopExitLbl2($20)
;[ICODE] ulong2fs.c:67: 	iTemp0 [k2 lr3:43 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___ulong2fs_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp0 [k2 lr3:43 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___ulong2fs_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] >> 0x1 {const-unsigned-char literal}
;shiftRight_Left2ResultLit:4886: shCount=1, size=4, sign=0, same=1, offr=0
;	.line	67; "ulong2fs.c"	a >>= 1;
	BCF	STATUS,0
	RRF	r0x1004,F
	RRF	r0x1005,F
	RRF	r0x1006,F
	RRF	r0x1007,F
;[ICODE] ulong2fs.c:68: 	iTemp5 [k9 lr7:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___ulong2fs_exp_1_1}[r0x104C r0x104D ] = iTemp5 [k9 lr7:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___ulong2fs_exp_1_1}[r0x104C r0x104D ] + 0x1 {const-unsigned-char literal}
;	.line	68; "ulong2fs.c"	exp++;
	INCF	r0x1008,F
	BTFSC	STATUS,2
	INCF	r0x1009,F
;[ICODE] ulong2fs.c:68: 	 goto _whilecontinue_0($3)
	GOTO	_00107_DS_
;[ICODE] ulong2fs.c:68:  loopExitLbl2($20) :
;[ICODE] ulong2fs.c:68: 	iTemp1 [k4 lr16:41 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}[r0x104E r0x104F ] := iTemp5 [k9 lr7:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___ulong2fs_exp_1_1}[r0x104C r0x104D ]
_00124_DS_
	BANKSEL	r0x1008
	MOVF	r0x1008,W
	MOVWF	r0x100A
	MOVF	r0x1009,W
	MOVWF	r0x100B
;[ICODE] ulong2fs.c:72: 	iTemp6 [k10 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp0 [k2 lr3:43 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___ulong2fs_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] < 0x800000 {unsigned-long-int literal}
;unsigned compare: left < lit(0x800000=8388608), size=4
;	.line	72; "ulong2fs.c"	if(a < HIDDEN) {
	MOVLW	0x00
	SUBWF	r0x1004,W
	BTFSS	STATUS,2
	GOTO	_00127_DS_
	MOVLW	0x80
	SUBWF	r0x1005,W
	BTFSS	STATUS,2
	GOTO	_00127_DS_
	MOVLW	0x00
	SUBWF	r0x1006,W
	BTFSS	STATUS,2
	GOTO	_00127_DS_
	MOVLW	0x00
	SUBWF	r0x1007,W
_00127_DS_
	BTFSC	STATUS,0
	GOTO	_00114_DS_
;genSkipc:3057: created from rifx:0xbf9adc44
;[ICODE] ulong2fs.c:72: 	if iTemp6 [k10 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_1($10)
;[ICODE] ulong2fs.c:73: 	iTemp9 [k13 lr21:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___ulong2fs_exp_1_1}[r0x104C r0x104D ] := iTemp5 [k9 lr7:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___ulong2fs_exp_1_1}[r0x104C r0x104D ]
;[ICODE] ulong2fs.c:73:  _dobody_0($6) :
;[ICODE] ulong2fs.c:74: 	iTemp0 [k2 lr3:43 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___ulong2fs_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp0 [k2 lr3:43 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___ulong2fs_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] << 0x1 {const-unsigned-char literal}
_00110_DS_
;	.line	74; "ulong2fs.c"	a<<=1;
	BCF	STATUS,0
	BANKSEL	r0x1007
	RLF	r0x1007,F
	RLF	r0x1006,F
	RLF	r0x1005,F
	RLF	r0x1004,F
;[ICODE] ulong2fs.c:75: 	iTemp9 [k13 lr21:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___ulong2fs_exp_1_1}[r0x104C r0x104D ] = iTemp9 [k13 lr21:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___ulong2fs_exp_1_1}[r0x104C r0x104D ] - 0x1 {const-unsigned-char literal}
;	.line	75; "ulong2fs.c"	exp--;
	MOVLW	0xff
	ADDWF	r0x1008,F
	BTFSS	STATUS,0
	DECF	r0x1009,F
;[ICODE] ulong2fs.c:76: 	iTemp10 [k14 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp0 [k2 lr3:43 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___ulong2fs_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] < 0x800000 {unsigned-long-int literal}
;unsigned compare: left < lit(0x800000=8388608), size=4
;	.line	76; "ulong2fs.c"	} while (a < HIDDEN);
	MOVLW	0x00
	SUBWF	r0x1004,W
	BTFSS	STATUS,2
	GOTO	_00128_DS_
	MOVLW	0x80
	SUBWF	r0x1005,W
	BTFSS	STATUS,2
	GOTO	_00128_DS_
	MOVLW	0x00
	SUBWF	r0x1006,W
	BTFSS	STATUS,2
	GOTO	_00128_DS_
	MOVLW	0x00
	SUBWF	r0x1007,W
_00128_DS_
	BTFSS	STATUS,0
	GOTO	_00110_DS_
;genSkipc:3057: created from rifx:0xbf9adc44
;[ICODE] ulong2fs.c:76: 	if iTemp10 [k14 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto _dobody_0($6)
;[ICODE] ulong2fs.c:76: 	iTemp1 [k4 lr16:41 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}[r0x104E r0x104F ] := iTemp9 [k13 lr21:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___ulong2fs_exp_1_1}[r0x104C r0x104D ]
	BANKSEL	r0x1008
	MOVF	r0x1008,W
	MOVWF	r0x100A
	MOVF	r0x1009,W
	MOVWF	r0x100B
;[ICODE] ulong2fs.c:76:  _iffalse_1($10) :
;[ICODE] ulong2fs.c:87: 	iTemp11 [k15 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-unsigned-long-int register}[r0x104C r0x104D r0x1050 r0x1051 ] = iTemp0 [k2 lr3:43 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___ulong2fs_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] & 0x7fffff {const-unsigned-long-int literal}
;;100	MOVF	r0x1007,W
_00114_DS_
;	.line	87; "ulong2fs.c"	if ((a&0x7fffff)==0x7fffff) {
	BANKSEL	r0x1006
	MOVF	r0x1006,W
	MOVWF	r0x1009
	MOVLW	0x7f
	ANDWF	r0x1005,W
	MOVWF	r0x100C
	CLRF	r0x100D
;[ICODE] ulong2fs.c:87: 	iTemp12 [k16 lr32:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp11 [k15 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-unsigned-long-int register}[r0x104C r0x104D r0x1050 r0x1051 ] == 0x7fffff {const-unsigned-long-int literal}
;;99	MOVF	r0x1008,W
	MOVF	r0x1007,W
	MOVWF	r0x1008
	XORLW	0xff
	BTFSS	STATUS,2
	GOTO	_00116_DS_
	MOVF	r0x1009,W
	XORLW	0xff
	BTFSS	STATUS,2
	GOTO	_00116_DS_
	MOVF	r0x100C,W
	XORLW	0x7f
	BTFSS	STATUS,2
	GOTO	_00116_DS_
	MOVF	r0x100D,W
	XORLW	0x00
	BTFSS	STATUS,2
	GOTO	_00116_DS_
;[ICODE] ulong2fs.c:87: 	if iTemp12 [k16 lr32:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_2($12)
;[ICODE] ulong2fs.c:88: 	iTemp0 [k2 lr3:43 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___ulong2fs_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] := 0x0 {unsigned-long-int literal}
;	.line	88; "ulong2fs.c"	a=0;
	CLRF	r0x1007
	CLRF	r0x1006
	CLRF	r0x1005
	CLRF	r0x1004
;[ICODE] ulong2fs.c:89: 	iTemp1 [k4 lr16:41 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}[r0x104E r0x104F ] = iTemp1 [k4 lr16:41 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}[r0x104E r0x104F ] + 0x1 {const-unsigned-char literal}
;	.line	89; "ulong2fs.c"	exp++;
	INCF	r0x100A,F
	BTFSC	STATUS,2
	INCF	r0x100B,F
;[ICODE] ulong2fs.c:89:  _iffalse_2($12) :
;[ICODE] ulong2fs.c:93: 	iTemp0 [k2 lr3:43 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___ulong2fs_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp0 [k2 lr3:43 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___ulong2fs_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] & 0xff7fffff {unsigned-long-int literal}
_00116_DS_
;	.line	93; "ulong2fs.c"	a &= ~HIDDEN ;
	BANKSEL	r0x1005
	BCF	r0x1005,7
;[ICODE] ulong2fs.c:95: 	iTemp16 [k21 lr40:44 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat] = &[___ulong2fs_fl_1_1 [k20 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] ulong2fs.c:95: 	iTemp18 [k24 lr41:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104C r0x104D r0x1050 r0x1051 ] = (unsigned-long-int fixed)iTemp1 [k4 lr16:41 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}[r0x104E r0x104F ]
;	.line	95; "ulong2fs.c"	fl.l = PACK(0,(unsigned long)exp, a);
	MOVF	r0x100A,W
	MOVWF	r0x1008
	MOVF	r0x100B,W
	MOVWF	r0x1009
	MOVLW	0x00
	BTFSC	r0x1009,7
	MOVLW	0xff
	MOVWF	r0x100D
	MOVWF	r0x100C
;[ICODE] ulong2fs.c:95: 	iTemp19 [k25 lr42:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104E r0x104F r0x1052 r0x1053 ] = iTemp18 [k24 lr41:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104C r0x104D r0x1050 r0x1051 ] << 0x17 {const-unsigned-char literal}
	RRF	r0x1009,W
	RRF	r0x1008,W
	MOVWF	r0x100E
	CLRF	r0x100F
	RRF	r0x100F,F
	CLRF	r0x100B
	CLRF	r0x100A
;[ICODE] ulong2fs.c:95: 	iTemp21 [k27 lr43:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp19 [k25 lr42:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104E r0x104F r0x1052 r0x1053 ] | iTemp0 [k2 lr3:43 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___ulong2fs_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]
	MOVLW	0x00
	IORWF	r0x1007,F
	MOVLW	0x00
	IORWF	r0x1006,F
	MOVF	r0x100F,W
	IORWF	r0x1005,F
	MOVF	r0x100E,W
	IORWF	r0x1004,F
;[ICODE] ulong2fs.c:95: 	*(iTemp16 [k21 lr40:44 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat]) := iTemp21 [k27 lr43:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ]
;gen.c:5947: size=3/4, offset=0, AOP_TYPE(res)=8
	MOVF	r0x1007,W
	BANKSEL	___ulong2fs_fl_1_1
	MOVWF	(___ulong2fs_fl_1_1 + 0)
;gen.c:5947: size=2/4, offset=1, AOP_TYPE(res)=8
	BANKSEL	r0x1006
	MOVF	r0x1006,W
	BANKSEL	___ulong2fs_fl_1_1
	MOVWF	(___ulong2fs_fl_1_1 + 1)
;gen.c:5947: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x1005
	MOVF	r0x1005,W
	BANKSEL	___ulong2fs_fl_1_1
	MOVWF	(___ulong2fs_fl_1_1 + 2)
;gen.c:5947: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x1004
	MOVF	r0x1004,W
	BANKSEL	___ulong2fs_fl_1_1
	MOVWF	(___ulong2fs_fl_1_1 + 3)
;[ICODE] ulong2fs.c:97: 	iTemp23 [k29 lr45:46 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat] = &[___ulong2fs_fl_1_1 [k20 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] ulong2fs.c:97: 	iTemp25 [k32 lr46:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{volatile-float fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp23 [k29 lr45:46 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat]]
;	.line	97; "ulong2fs.c"	return (fl.f);
	MOVF	(___ulong2fs_fl_1_1 + 0),W
	BANKSEL	r0x1007
	MOVWF	r0x1007
	BANKSEL	___ulong2fs_fl_1_1
	MOVF	(___ulong2fs_fl_1_1 + 1),W
	BANKSEL	r0x1006
	MOVWF	r0x1006
	BANKSEL	___ulong2fs_fl_1_1
	MOVF	(___ulong2fs_fl_1_1 + 2),W
	BANKSEL	r0x1005
	MOVWF	r0x1005
	BANKSEL	___ulong2fs_fl_1_1
	MOVF	(___ulong2fs_fl_1_1 + 3),W
	BANKSEL	r0x1004
	MOVWF	r0x1004
;[ICODE] ulong2fs.c:97: 	ret iTemp25 [k32 lr46:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{volatile-float fixed}[r0x1048 r0x1049 r0x104A r0x104B ]
	MOVF	r0x1007,W
	MOVWF	STK02
	MOVF	r0x1006,W
	MOVWF	STK01
	MOVF	r0x1005,W
	MOVWF	STK00
	MOVF	r0x1004,W
;[ICODE] ulong2fs.c:97:  _return($13) :
;[ICODE] ulong2fs.c:97: 	eproc ___ulong2fs [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( unsigned-long-int fixed)  fixed}
_00117_DS_
	RETURN	
; exit point of ___ulong2fs


;	code size estimation:
;	  164+   22 =   186 instructions (  416 byte)

	end
