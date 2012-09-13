;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6064 (Nov 22 2010) (Linux)
; This file was generated Mon Nov 22 22:55:45 2010
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"uint2fs.c"
	list	p=16f877
	radix dec
	include "p16f877.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	___uchar2fs
	extern	___schar2fs
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
	global	___uint2fs

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_uint2fs_0	udata
r0x1001	res	1
r0x1000	res	1
r0x1002	res	1
r0x1003	res	1
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
code_uint2fs	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  ___uint2fs	;Function start
; 2 exit points
;has an exit
;functions called:
;   ___ulong2fs
;   ___ulong2fs
;9 compiler assigned registers:
;   r0x1000
;   STK00
;   r0x1001
;   r0x1002
;   r0x1003
;   r0x1004
;   r0x1005
;   STK02
;   STK01
;; Starting pCode block
;[ICODE] uint2fs.c:33:  _entry($2) :
;[ICODE] uint2fs.c:33: 	proc ___uint2fs [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( unsigned-int fixed)  fixed}
___uint2fs	;Function start
; 2 exit points
;[ICODE] uint2fs.c:33: iTemp0 [k2 lr3:4 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ ___uint2fs_ui_1_1}[r0x1048 r0x1049 ] = recv ___uint2fs [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( unsigned-int fixed)  fixed}
	BANKSEL	r0x1003
	MOVWF	r0x1003
;	.line	33; "uint2fs.c"	float __uint2fs (unsigned int ui) _FS_REENTRANT
	MOVWF	r0x1000
	MOVF	STK00,W
;	.line	35; "uint2fs.c"	return __ulong2fs(ui);
	MOVWF	r0x1001
	MOVWF	r0x1002
	MOVWF	STK02
	MOVF	r0x1003,W
	MOVWF	STK01
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	___ulong2fs
	CALL	___ulong2fs
	PAGESEL	$
	BANKSEL	r0x1003
	MOVWF	r0x1003
	MOVF	STK00,W
	MOVWF	r0x1002
	MOVF	STK01,W
	MOVWF	r0x1000
	MOVF	STK02,W
	MOVWF	r0x1001
	MOVWF	STK02
	MOVF	r0x1000,W
	MOVWF	STK01
	MOVF	r0x1002,W
	MOVWF	STK00
	MOVF	r0x1003,W
;[ICODE] uint2fs.c:35:  _return($1) :
;[ICODE] uint2fs.c:35: 	eproc ___uint2fs [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( unsigned-int fixed)  fixed}
	RETURN	
; exit point of ___uint2fs


;	code size estimation:
;	   26+    4 =    30 instructions (   68 byte)

	end
