;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6064 (Nov 22 2010) (Linux)
; This file was generated Mon Nov 22 22:55:44 2010
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"fs2ulong.c"
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
	global	___fs2ulong

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_fs2ulong_0	udata
r0x1007	res	1
r0x1006	res	1
r0x1005	res	1
r0x1004	res	1
r0x1008	res	1
r0x1009	res	1
r0x100A	res	1
r0x100B	res	1
___fs2ulong_fl1_1_1	res	4
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
code_fs2ulong	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  ___fs2ulong	;Function start
; 2 exit points
;has an exit
;11 compiler assigned registers:
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
;; Starting pCode block
;[ICODE] fs2ulong.c:55:  _entry($5) :
;[ICODE] fs2ulong.c:55: 	proc ___fs2ulong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int function    ( float fixed)  fixed}
___fs2ulong	;Function start
; 2 exit points
;[ICODE] fs2ulong.c:55: iTemp0 [k2 lr3:5 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ ___fs2ulong_a1_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = recv ___fs2ulong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int function    ( float fixed)  fixed}
;	.line	55; "fs2ulong.c"	unsigned long __fs2ulong (float a1) _FS_REENTRANT
	BANKSEL	r0x1004
	MOVWF	r0x1004
	MOVF	STK00,W
	MOVWF	r0x1005
	MOVF	STK01,W
	MOVWF	r0x1006
	MOVF	STK02,W
;	.line	61; "fs2ulong.c"	fl1.f = a1;
	MOVWF	r0x1007
	BANKSEL	___fs2ulong_fl1_1_1
	MOVWF	(___fs2ulong_fl1_1_1 + 0)
;gen.c:5947: size=2/4, offset=1, AOP_TYPE(res)=8
	BANKSEL	r0x1006
	MOVF	r0x1006,W
	BANKSEL	___fs2ulong_fl1_1_1
	MOVWF	(___fs2ulong_fl1_1_1 + 1)
;gen.c:5947: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x1005
	MOVF	r0x1005,W
	BANKSEL	___fs2ulong_fl1_1_1
	MOVWF	(___fs2ulong_fl1_1_1 + 2)
;gen.c:5947: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x1004
	MOVF	r0x1004,W
	BANKSEL	___fs2ulong_fl1_1_1
	MOVWF	(___fs2ulong_fl1_1_1 + 3)
;[ICODE] fs2ulong.c:63: 	iTemp3 [k8 lr6:7 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat] = &[___fs2ulong_fl1_1_1 [k4 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fs2ulong.c:63: 	iTemp5 [k11 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp3 [k8 lr6:7 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat]]
;	.line	63; "fs2ulong.c"	if (!fl1.l || SIGN(fl1.l))
	MOVF	(___fs2ulong_fl1_1_1 + 0),W
	BANKSEL	r0x1007
	MOVWF	r0x1007
	BANKSEL	___fs2ulong_fl1_1_1
	MOVF	(___fs2ulong_fl1_1_1 + 1),W
	BANKSEL	r0x1006
	MOVWF	r0x1006
	BANKSEL	___fs2ulong_fl1_1_1
	MOVF	(___fs2ulong_fl1_1_1 + 2),W
	BANKSEL	r0x1005
	MOVWF	r0x1005
	BANKSEL	___fs2ulong_fl1_1_1
	MOVF	(___fs2ulong_fl1_1_1 + 3),W
	BANKSEL	r0x1004
	MOVWF	r0x1004
;[ICODE] fs2ulong.c:63: 	if iTemp5 [k11 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] == 0 goto _iftrue_0($1)
	MOVF	r0x1007,W
	IORWF	r0x1006,W
	IORWF	r0x1005,W
	IORWF	r0x1004,W
	BTFSC	STATUS,2
	GOTO	_00105_DS_
;[ICODE] fs2ulong.c:63: 	iTemp6 [k12 lr9:10 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat] = &[___fs2ulong_fl1_1_1 [k4 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fs2ulong.c:63: 	iTemp9 [k16 lr10:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp6 [k12 lr9:10 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat]]
	BANKSEL	___fs2ulong_fl1_1_1
	MOVF	(___fs2ulong_fl1_1_1 + 0),W
	BANKSEL	r0x1007
	MOVWF	r0x1007
	BANKSEL	___fs2ulong_fl1_1_1
	MOVF	(___fs2ulong_fl1_1_1 + 1),W
	BANKSEL	r0x1006
	MOVWF	r0x1006
	BANKSEL	___fs2ulong_fl1_1_1
	MOVF	(___fs2ulong_fl1_1_1 + 2),W
	BANKSEL	r0x1005
	MOVWF	r0x1005
	BANKSEL	___fs2ulong_fl1_1_1
	MOVF	(___fs2ulong_fl1_1_1 + 3),W
	BANKSEL	r0x1004
	MOVWF	r0x1004
;[ICODE] fs2ulong.c:63: 	iTemp10 [k17 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104C r0x104D r0x104E r0x104F ] = iTemp9 [k16 lr10:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] >> 0x1f {unsigned-char literal}
	RLF	r0x1004,W
	CLRF	r0x1008
	RLF	r0x1008,F
	CLRF	r0x1009
	CLRF	r0x100A
	CLRF	r0x100B
;[ICODE] fs2ulong.c:63: 	iTemp11 [k18 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed} = iTemp10 [k17 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104C r0x104D r0x104E r0x104F ] & 0x1 {unsigned-long-int literal}
	BTFSS	r0x1008,0
	GOTO	_00106_DS_
;[ICODE] fs2ulong.c:63: 	if iTemp11 [k18 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed} == 0 goto _iffalse_0($2)
;[ICODE] fs2ulong.c:63:  _iftrue_0($1) :
;[ICODE] fs2ulong.c:64: 	ret 0x0 {unsigned-long-int literal}
_00105_DS_
;	.line	64; "fs2ulong.c"	return (0);
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x00
	GOTO	_00108_DS_
;[ICODE] fs2ulong.c:64:  _iffalse_0($2) :
;[ICODE] fs2ulong.c:66: 	iTemp13 [k21 lr18:19 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat] = &[___fs2ulong_fl1_1_1 [k4 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fs2ulong.c:66: 	iTemp16 [k25 lr19:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp13 [k21 lr18:19 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat]]
_00106_DS_
;	.line	66; "fs2ulong.c"	exp = EXP (fl1.l) - EXCESS - 24;
	BANKSEL	___fs2ulong_fl1_1_1
	MOVF	(___fs2ulong_fl1_1_1 + 0),W
	BANKSEL	r0x1007
	MOVWF	r0x1007
	BANKSEL	___fs2ulong_fl1_1_1
	MOVF	(___fs2ulong_fl1_1_1 + 1),W
	BANKSEL	r0x1006
	MOVWF	r0x1006
	BANKSEL	___fs2ulong_fl1_1_1
	MOVF	(___fs2ulong_fl1_1_1 + 2),W
	BANKSEL	r0x1005
	MOVWF	r0x1005
	BANKSEL	___fs2ulong_fl1_1_1
	MOVF	(___fs2ulong_fl1_1_1 + 3),W
	BANKSEL	r0x1004
	MOVWF	r0x1004
;[ICODE] fs2ulong.c:66: 	iTemp17 [k26 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104C r0x104D r0x104E r0x104F ] = iTemp16 [k25 lr19:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] >> 0x17 {const-unsigned-char literal}
	RLF	r0x1005,W
	RLF	r0x1004,W
	MOVWF	r0x1007
	MOVWF	r0x1008
	CLRF	r0x1009
	RLF	r0x1009,F
	CLRF	r0x100A
	CLRF	r0x100B
;[ICODE] fs2ulong.c:66: 	iTemp18 [k27 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp17 [k26 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104C r0x104D r0x104E r0x104F ] & 0xff {unsigned-long-int literal}
;;99	MOVF	r0x1008,W
	CLRF	r0x1006
	CLRF	r0x1005
	CLRF	r0x1004
;[ICODE] fs2ulong.c:66: 	iTemp19 [k28 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp18 [k27 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] - 0x96 {unsigned-long-int literal}
	MOVLW	0x6a
	ADDWF	r0x1007,F
	MOVLW	0xff
	BTFSS	STATUS,0
	ADDWF	r0x1006,F
	MOVLW	0xff
	BTFSS	STATUS,0
	ADDWF	r0x1005,F
	MOVLW	0xff
	BTFSS	STATUS,0
	ADDWF	r0x1004,F
;[ICODE] fs2ulong.c:66: 	iTemp12 [k19 lr24:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fs2ulong_exp_1_1}[r0x104C r0x104D ] = (int fixed)iTemp19 [k28 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ]
	MOVF	r0x1007,W
	MOVWF	r0x1008
	MOVF	r0x1006,W
	MOVWF	r0x1009
;[ICODE] fs2ulong.c:67: 	iTemp22 [k32 lr26:27 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat] = &[___fs2ulong_fl1_1_1 [k4 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long fixed}]
;[ICODE] fs2ulong.c:67: 	iTemp24 [k35 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp22 [k32 lr26:27 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* fixed}[remat]]
;	.line	67; "fs2ulong.c"	l = MANT (fl1.l);
	BANKSEL	___fs2ulong_fl1_1_1
	MOVF	(___fs2ulong_fl1_1_1 + 0),W
	BANKSEL	r0x1007
	MOVWF	r0x1007
	BANKSEL	___fs2ulong_fl1_1_1
	MOVF	(___fs2ulong_fl1_1_1 + 1),W
	BANKSEL	r0x1006
	MOVWF	r0x1006
	BANKSEL	___fs2ulong_fl1_1_1
	MOVF	(___fs2ulong_fl1_1_1 + 2),W
	BANKSEL	r0x1005
	MOVWF	r0x1005
	BANKSEL	___fs2ulong_fl1_1_1
	MOVF	(___fs2ulong_fl1_1_1 + 3),W
	BANKSEL	r0x1004
	MOVWF	r0x1004
;[ICODE] fs2ulong.c:67: 	iTemp26 [k37 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp24 [k35 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] & 0x7fffff {unsigned-long-int literal}
	BCF	r0x1005,7
	CLRF	r0x1004
;[ICODE] fs2ulong.c:67: 	iTemp21 [k30 lr29:34 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___fs2ulong_l_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp26 [k37 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x1048 r0x1049 r0x104A r0x104B ] | 0x800000 {unsigned-long-int literal}
	BSF	r0x1005,7
;[ICODE] fs2ulong.c:69: 	iTemp28 [k39 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x104C r0x104D ] = - iTemp12 [k19 lr24:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ ___fs2ulong_exp_1_1}[r0x104C r0x104D ]
;	.line	69; "fs2ulong.c"	l >>= -exp;
	COMF	r0x1008,F
	COMF	r0x1009,F
	INCF	r0x1008,F
	BTFSC	STATUS,2
	INCF	r0x1009,F
;[ICODE] fs2ulong.c:69: 	iTemp21 [k30 lr29:34 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___fs2ulong_l_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp21 [k30 lr29:34 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___fs2ulong_l_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] >> iTemp28 [k39 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x104C r0x104D ]
	MOVF	r0x1008,W
	BTFSC	r0x1008,7
	GOTO	_00113_DS_
	SUBLW	0x00
	BTFSC	STATUS,2
	GOTO	_00112_DS_
_00111_DS_
	BANKSEL	r0x1004
	RRF	r0x1004,F
	RRF	r0x1005,F
	RRF	r0x1006,F
	RRF	r0x1007,F
	ADDLW	0x01
	BTFSS	STATUS,0
	GOTO	_00111_DS_
	GOTO	_00112_DS_
_00113_DS_
	BCF	STATUS,0
_00114_DS_
	BANKSEL	r0x1007
	RLF	r0x1007,F
	RLF	r0x1006,F
	RLF	r0x1005,F
	RLF	r0x1004,F
	ADDLW	0x01
	BTFSS	STATUS,0
	GOTO	_00114_DS_
;[ICODE] fs2ulong.c:71: 	ret iTemp21 [k30 lr29:34 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___fs2ulong_l_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]
_00112_DS_
;	.line	71; "fs2ulong.c"	return l;
	BANKSEL	r0x1007
	MOVF	r0x1007,W
	MOVWF	STK02
	MOVF	r0x1006,W
	MOVWF	STK01
	MOVF	r0x1005,W
	MOVWF	STK00
	MOVF	r0x1004,W
;[ICODE] fs2ulong.c:71:  _return($4) :
;[ICODE] fs2ulong.c:71: 	eproc ___fs2ulong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int function    ( float fixed)  fixed}
_00108_DS_
	RETURN	
; exit point of ___fs2ulong


;	code size estimation:
;	  132+   42 =   174 instructions (  432 byte)

	end
