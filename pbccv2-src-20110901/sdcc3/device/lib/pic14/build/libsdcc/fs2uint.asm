;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6064 (Nov 22 2010) (Linux)
; This file was generated Mon Nov 22 22:55:44 2010
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"fs2uint.c"
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
	extern	___fs2ulong

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
	global	___fs2uint

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_fs2uint_0	udata
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
code_fs2uint	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  ___fs2uint	;Function start
; 2 exit points
;has an exit
;functions called:
;   ___fs2ulong
;   ___fs2ulong
;9 compiler assigned registers:
;   r0x1000
;   STK00
;   r0x1001
;   STK01
;   r0x1002
;   STK02
;   r0x1003
;   r0x1004
;   r0x1005
;; Starting pCode block
;[ICODE] fs2uint.c:35:  _entry($4) :
;[ICODE] fs2uint.c:35: 	proc ___fs2uint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( float fixed)  fixed}
___fs2uint	;Function start
; 2 exit points
;[ICODE] fs2uint.c:35: iTemp0 [k2 lr3:4 so:0]{ ia0 a2p0 re1 rm0 nos0 ru1 dp0}{float fixed}{ sir@ ___fs2uint_f_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = recv ___fs2uint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( float fixed)  fixed}
;	.line	35; "fs2uint.c"	unsigned int __fs2uint (float f) _FS_REENTRANT
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
	MOVF	STK01,W
	MOVWF	r0x1002
	MOVF	STK02,W
;	.line	37; "fs2uint.c"	unsigned long ul=__fs2ulong(f);
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
;[ICODE] fs2uint.c:38: 	iTemp3 [k9 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp1 [k4 lr5:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___fs2uint_ul_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] < 0xffff {unsigned-long-int literal}
;unsigned compare: left < lit(0xFFFF=65535), size=4
;	.line	38; "fs2uint.c"	if (ul>=UINT_MAX) return UINT_MAX;
	MOVLW	0x00
	SUBWF	r0x1000,W
	BTFSS	STATUS,2
	GOTO	_00110_DS_
	MOVLW	0x00
	SUBWF	r0x1001,W
	BTFSS	STATUS,2
	GOTO	_00110_DS_
	MOVLW	0xff
	SUBWF	r0x1002,W
	BTFSS	STATUS,2
	GOTO	_00110_DS_
	MOVLW	0xff
	SUBWF	r0x1003,W
_00110_DS_
	BTFSS	STATUS,0
	GOTO	_00106_DS_
;genSkipc:3057: created from rifx:0xbfb22934
;[ICODE] fs2uint.c:38: 	if iTemp3 [k9 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto _iffalse_0($2)
;[ICODE] fs2uint.c:38: 	ret 0xffff {const-unsigned-int literal}
	MOVLW	0xff
	MOVWF	STK00
	MOVLW	0xff
	GOTO	_00107_DS_
;[ICODE] fs2uint.c:38:  _iffalse_0($2) :
;[ICODE] fs2uint.c:39: 	iTemp4 [k10 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{unsigned-int fixed}[r0x104C r0x104D ] = (unsigned-int fixed)iTemp1 [k4 lr5:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ ___fs2uint_ul_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]
;;101	MOVF	r0x1003,W
;;99	MOVWF	r0x1004
;;104	MOVF	r0x1002,W
;;102	MOVWF	r0x1005
;[ICODE] fs2uint.c:39: 	ret iTemp4 [k10 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{unsigned-int fixed}[r0x104C r0x104D ]
;;100	MOVF	r0x1004,W
_00106_DS_
;	.line	39; "fs2uint.c"	return ul;
	BANKSEL	r0x1003
	MOVF	r0x1003,W
	MOVWF	STK00
;;103	MOVF	r0x1005,W
	MOVF	r0x1002,W
;[ICODE] fs2uint.c:39:  _return($3) :
;[ICODE] fs2uint.c:39: 	eproc ___fs2uint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( float fixed)  fixed}
_00107_DS_
	RETURN	
; exit point of ___fs2uint


;	code size estimation:
;	   45+    5 =    50 instructions (  110 byte)

	end
