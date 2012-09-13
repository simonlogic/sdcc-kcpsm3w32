;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6064 (Nov 22 2010) (Linux)
; This file was generated Mon Nov 22 22:55:45 2010
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"schar2fs.c"
	list	p=16f877
	radix dec
	include "p16f877.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	___uchar2fs
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
	global	___schar2fs

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_schar2fs_0	udata
r0x1000	res	1
r0x1001	res	1
r0x1004	res	1
r0x1003	res	1
r0x1002	res	1
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
code_schar2fs	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  ___schar2fs	;Function start
; 2 exit points
;has an exit
;functions called:
;   ___slong2fs
;   ___slong2fs
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
;[ICODE] schar2fs.c:33:  _entry($2) :
;[ICODE] schar2fs.c:33: 	proc ___schar2fs [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( char fixed)  fixed}
___schar2fs	;Function start
; 2 exit points
;[ICODE] schar2fs.c:33: iTemp0 [k2 lr3:4 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ ___schar2fs_sc_1_1}[r0x1048 ] = recv ___schar2fs [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( char fixed)  fixed}
;	.line	33; "schar2fs.c"	float __schar2fs (signed char sc) _FS_REENTRANT
	BANKSEL	r0x1000
	MOVWF	r0x1000
;	.line	35; "schar2fs.c"	return __slong2fs(sc);
	MOVWF	r0x1001
	MOVLW	0x00
	BTFSC	r0x1001,7
	MOVLW	0xff
	MOVWF	r0x1002
	MOVWF	r0x1003
	MOVWF	r0x1004
;[ICODE] schar2fs.c:35: 	send iTemp1 [k5 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{long-int fixed}[r0x1049 r0x104A r0x104B r0x104C ]{argreg = 1}
;[ICODE] schar2fs.c:35: 	iTemp2 [k7 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{float fixed}[r0x1048 r0x1049 r0x104A r0x104B ] = call ___slong2fs [k4 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( long-int fixed)  fixed}
	MOVF	r0x1001,W
	MOVWF	STK02
	MOVF	r0x1004,W
	MOVWF	STK01
	MOVF	r0x1003,W
	MOVWF	STK00
	MOVF	r0x1002,W
	PAGESEL	___slong2fs
	CALL	___slong2fs
	PAGESEL	$
	BANKSEL	r0x1003
	MOVWF	r0x1003
	MOVF	STK00,W
	MOVWF	r0x1004
	MOVF	STK01,W
	MOVWF	r0x1001
	MOVF	STK02,W
	MOVWF	r0x1000
	MOVWF	STK02
	MOVF	r0x1001,W
	MOVWF	STK01
	MOVF	r0x1004,W
	MOVWF	STK00
	MOVF	r0x1003,W
;[ICODE] schar2fs.c:35:  _return($1) :
;[ICODE] schar2fs.c:35: 	eproc ___schar2fs [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( char fixed)  fixed}
	RETURN	
; exit point of ___schar2fs


;	code size estimation:
;	   30+    4 =    34 instructions (   76 byte)

	end
