;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6064 (Nov 22 2010) (Linux)
; This file was generated Mon Nov 22 22:55:44 2010
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"fs2slong.c"
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
	global	___fs2slong

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_fs2slong_0	udata
r0x1003	res	1
r0x1002	res	1
r0x1001	res	1
r0x1000	res	1
r0x1004	res	1
r0x1007	res	1
r0x1006	res	1
r0x1005	res	1
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
code_fs2slong	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  ___fs2slong	;Function start
; 2 exit points
;has an exit
;functions called:
;   ___fslt
;   ___fs2ulong
;   ___fs2ulong
;   ___fslt
;   ___fs2ulong
;   ___fs2ulong
;15 compiler assigned registers:
;   r0x1000
;   STK00
;   r0x1001
;   STK01
;   r0x1002
;   STK02
;   r0x1003
;   STK06
;   STK05
;   STK04
;   STK03
;   r0x1004
;   r0x1005
;   r0x1006
;   r0x1007
;; Starting pCode block
;[ICODE] fs2slong.c:33:  _entry($7) :
;[ICODE] fs2slong.c:33: 	proc ___fs2slong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function    ( float fixed)  fixed}
___fs2slong	;Function start
; 2 exit points
;[ICODE] fs2slong.c:33: iTemp0 [k2 lr3:17 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ ___fs2slong_f_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = recv ___fs2slong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function    ( float fixed)  fixed}
;	.line	33; "fs2slong.c"	signed long __fs2slong (float f) _FS_REENTRANT
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
	MOVF	STK01,W
	MOVWF	r0x1002
	MOVF	STK02,W
;	.line	36; "fs2slong.c"	if (!f)
	MOVWF	r0x1003
	IORWF	r0x1002,W
	IORWF	r0x1001,W
	IORWF	r0x1000,W
	BTFSS	STATUS,2
	GOTO	_00106_DS_
;[ICODE] fs2slong.c:37: 	ret 0x0 {long-int literal}
;	.line	37; "fs2slong.c"	return 0;
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x00
	GOTO	_00110_DS_
;[ICODE] fs2slong.c:37:  _iffalse_0($2) :
;[ICODE] fs2slong.c:39: 	send iTemp0 [k2 lr3:17 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ ___fs2slong_f_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]{argreg = 1}
;[ICODE] fs2slong.c:39: 	send 0 {float literal}{argreg = 1}
;[ICODE] fs2slong.c:39: 	iTemp1 [k4 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x104C ] = call ___fslt [k13 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float fixed, float fixed)  fixed}
_00106_DS_
;	.line	39; "fs2slong.c"	if (f<0) {
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x00
	MOVWF	STK04
	MOVLW	0x00
	MOVWF	STK03
	BANKSEL	r0x1003
	MOVF	r0x1003,W
	MOVWF	STK02
	MOVF	r0x1002,W
	MOVWF	STK01
	MOVF	r0x1001,W
	MOVWF	STK00
	MOVF	r0x1000,W
	PAGESEL	___fslt
	CALL	___fslt
	PAGESEL	$
	BANKSEL	r0x1004
	MOVWF	r0x1004
;[ICODE] fs2slong.c:39: 	if iTemp1 [k4 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x104C ] == 0 goto _iffalse_1($4)
	MOVF	r0x1004,W
	BTFSC	STATUS,2
	GOTO	_00108_DS_
;[ICODE] fs2slong.c:40: 	iTemp2 [k6 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{float fixed}[r0x104C r0x104D r0x104E r0x104F ] = - iTemp0 [k2 lr3:17 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ ___fs2slong_f_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]
;	.line	40; "fs2slong.c"	return -__fs2ulong(-f);
	MOVF	r0x1000,W
	XORLW	0x80
	MOVWF	r0x1005
;;102	MOVF	r0x1001,W
;;100	MOVF	r0x1002,W
	MOVF	r0x1003,W
	MOVWF	r0x1004
	MOVWF	STK02
;;99	MOVF	r0x1007,W
	MOVF	r0x1002,W
	MOVWF	r0x1007
	MOVWF	STK01
;;101	MOVF	r0x1006,W
	MOVF	r0x1001,W
	MOVWF	r0x1006
	MOVWF	STK00
	MOVF	r0x1005,W
	PAGESEL	___fs2ulong
	CALL	___fs2ulong
	PAGESEL	$
	BANKSEL	r0x1005
	MOVWF	r0x1005
	MOVF	STK00,W
	MOVWF	r0x1006
	MOVF	STK01,W
	MOVWF	r0x1007
	MOVF	STK02,W
	MOVWF	r0x1004
;[ICODE] fs2slong.c:40: 	iTemp4 [k9 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{unsigned-long-int fixed}[r0x104C r0x104D r0x104E r0x104F ] = - iTemp3 [k8 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x104C r0x104D r0x104E r0x104F ]
	COMF	r0x1004,F
	COMF	r0x1007,F
	COMF	r0x1006,F
	COMF	r0x1005,F
	INCF	r0x1004,F
	BTFSC	STATUS,2
	INCF	r0x1007,F
	BTFSC	STATUS,2
	INCF	r0x1006,F
	BTFSC	STATUS,2
	INCF	r0x1005,F
;[ICODE] fs2slong.c:40: 	ret iTemp4 [k9 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{unsigned-long-int fixed}[r0x104C r0x104D r0x104E r0x104F ]
	MOVF	r0x1004,W
	MOVWF	STK02
	MOVF	r0x1007,W
	MOVWF	STK01
	MOVF	r0x1006,W
	MOVWF	STK00
	MOVF	r0x1005,W
	GOTO	_00110_DS_
;[ICODE] fs2slong.c:40:  _iffalse_1($4) :
;[ICODE] fs2slong.c:42: 	send iTemp0 [k2 lr3:17 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ ___fs2slong_f_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]{argreg = 1}
;[ICODE] fs2slong.c:42: 	iTemp6 [k11 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{unsigned-long-int fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = call ___fs2ulong [k5 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int function    ( float fixed)  fixed}
_00108_DS_
;	.line	42; "fs2slong.c"	return __fs2ulong(f);
	BANKSEL	r0x1003
	MOVF	r0x1003,W
	MOVWF	STK02
	MOVF	r0x1002,W
	MOVWF	STK01
	MOVF	r0x1001,W
	MOVWF	STK00
	MOVF	r0x1000,W
	PAGESEL	___fs2ulong
	CALL	___fs2ulong
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
;[ICODE] fs2slong.c:42:  _return($6) :
;[ICODE] fs2slong.c:42: 	eproc ___fs2slong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function    ( float fixed)  fixed}
_00110_DS_
	RETURN	
; exit point of ___fs2slong


;	code size estimation:
;	  102+   12 =   114 instructions (  252 byte)

	end
