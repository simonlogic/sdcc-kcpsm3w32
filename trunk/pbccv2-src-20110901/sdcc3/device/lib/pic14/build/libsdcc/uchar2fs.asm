;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6064 (Nov 22 2010) (Linux)
; This file was generated Mon Nov 22 22:55:45 2010
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"uchar2fs.c"
	list	p=16f877
	radix dec
	include "p16f877.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
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
	global	___uchar2fs

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_uchar2fs_0	udata
r0x1000	res	1
r0x1001	res	1
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
code_uchar2fs	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  ___uchar2fs	;Function start
; 2 exit points
;has an exit
;functions called:
;   ___ulong2fs
;   ___ulong2fs
;8 compiler assigned registers:
;   r0x1000
;   r0x1001
;   r0x1002
;   r0x1003
;   r0x1004
;   STK02
;   STK01
;   STK00
;; Starting pCode block
;[ICODE] uchar2fs.c:33:  _entry($2) :
;[ICODE] uchar2fs.c:33: 	proc ___uchar2fs [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( unsigned-char fixed)  fixed}
___uchar2fs	;Function start
; 2 exit points
;[ICODE] uchar2fs.c:33: iTemp0 [k2 lr3:4 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ ___uchar2fs_uc_1_1}[r0x1048 ] = recv ___uchar2fs [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( unsigned-char fixed)  fixed}
;	.line	33; "uchar2fs.c"	float __uchar2fs (unsigned char uc) _FS_REENTRANT
	BANKSEL	r0x1000
	MOVWF	r0x1000
;	.line	35; "uchar2fs.c"	return __ulong2fs(uc);
	MOVWF	r0x1001
	CLRF	r0x1002
	CLRF	r0x1003
;;1	CLRF	r0x1004
;[ICODE] uchar2fs.c:35: 	send iTemp1 [k5 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{unsigned-long-int fixed}[r0x1049 r0x104A r0x104B r0x104C ]{argreg = 1}
;[ICODE] uchar2fs.c:35: 	iTemp2 [k7 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{float fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = call ___ulong2fs [k4 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( unsigned-long-int fixed)  fixed}
	MOVF	r0x1001,W
	MOVWF	STK02
	MOVLW	0x00
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
	MOVWF	r0x1001
	MOVF	STK02,W
	MOVWF	r0x1000
	MOVWF	STK02
	MOVF	r0x1001,W
	MOVWF	STK01
	MOVF	r0x1002,W
	MOVWF	STK00
	MOVF	r0x1003,W
;[ICODE] uchar2fs.c:35:  _return($1) :
;[ICODE] uchar2fs.c:35: 	eproc ___uchar2fs [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( unsigned-char fixed)  fixed}
	RETURN	
; exit point of ___uchar2fs


;	code size estimation:
;	   26+    4 =    30 instructions (   68 byte)

	end
