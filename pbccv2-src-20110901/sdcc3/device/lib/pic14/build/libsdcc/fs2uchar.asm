;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6064 (Nov 22 2010) (Linux)
; This file was generated Mon Nov 22 22:55:44 2010
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"fs2uchar.c"
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
	global	___fs2uchar

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_fs2uchar_0	udata
r0x1003	res	1
r0x1002	res	1
r0x1001	res	1
r0x1000	res	1
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
code_fs2uchar	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  ___fs2uchar	;Function start
; 2 exit points
;has an exit
;functions called:
;   ___fs2ulong
;   ___fs2ulong
;8 compiler assigned registers:
;   r0x1000
;   STK00
;   r0x1001
;   STK01
;   r0x1002
;   STK02
;   r0x1003
;   r0x1004
;; Starting pCode block
;[ICODE] fs2uchar.c:33:  _entry($4) :
;[ICODE] fs2uchar.c:33: 	proc ___fs2uchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char function    ( float fixed)  fixed}
___fs2uchar	;Function start
; 2 exit points
;[ICODE] fs2uchar.c:33: iTemp0 [k2 lr3:4 so:0]{ ia0 a2p0 re1 rm0 nos0 ru1 dp0}{float fixed}{ sir@ ___fs2uchar_f_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = recv ___fs2uchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char function    ( float fixed)  fixed}
;	.line	33; "fs2uchar.c"	unsigned char __fs2uchar (float f) _FS_REENTRANT
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
	MOVF	STK01,W
	MOVWF	r0x1002
	MOVF	STK02,W
;	.line	35; "fs2uchar.c"	unsigned long ul=__fs2ulong(f);
	MOVWF	r0x1003
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
;[ICODE] fs2uchar.c:36: 	iTemp3 [k9 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp1 [k4 lr5:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___fs2uchar_ul_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] < 0xff {unsigned-long-int literal}
;unsigned compare: left < lit(0xFF=255), size=4
;	.line	36; "fs2uchar.c"	if (ul>=UCHAR_MAX) return UCHAR_MAX;
	MOVLW	0x00
	SUBWF	r0x1000,W
	BTFSS	STATUS,2
	GOTO	_00110_DS_
	MOVLW	0x00
	SUBWF	r0x1001,W
	BTFSS	STATUS,2
	GOTO	_00110_DS_
	MOVLW	0x00
	SUBWF	r0x1002,W
	BTFSS	STATUS,2
	GOTO	_00110_DS_
	MOVLW	0xff
	SUBWF	r0x1003,W
_00110_DS_
	BTFSS	STATUS,0
	GOTO	_00106_DS_
;genSkipc:3057: created from rifx:0xbfb70ce4
;[ICODE] fs2uchar.c:36: 	if iTemp3 [k9 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto _iffalse_0($2)
;[ICODE] fs2uchar.c:36: 	ret 0xff {const-unsigned-char literal}
	MOVLW	0xff
	GOTO	_00107_DS_
;[ICODE] fs2uchar.c:36:  _iffalse_0($2) :
;[ICODE] fs2uchar.c:37: 	iTemp4 [k10 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{unsigned-char fixed}[r0x104C ] = (unsigned-char fixed)iTemp1 [k4 lr5:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___fs2uchar_ul_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]
_00106_DS_
;	.line	37; "fs2uchar.c"	return ul;
	BANKSEL	r0x1003
	MOVF	r0x1003,W
;;1	MOVWF	r0x1004
_00107_DS_
	RETURN	
; exit point of ___fs2uchar


;	code size estimation:
;	   41+    5 =    46 instructions (  102 byte)

	end
