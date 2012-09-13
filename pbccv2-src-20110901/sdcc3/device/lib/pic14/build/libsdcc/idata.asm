;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.1 #6064 (Nov 22 2010) (Linux)
; This file was generated Mon Nov 22 22:55:44 2010
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"idata.c"
	list	p=16f877
	radix dec
	include "p16f877.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_main
	extern	_cinit
	extern	__gptrget2
	extern	__gptrget1

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
	global	__sdcc_gsinit_startup

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_idata_0	udata
r0x1001	res	1
r0x1000	res	1
r0x1002	res	1
r0x1003	res	1
r0x1004	res	1
r0x1005	res	1
r0x1007	res	1
r0x1006	res	1
r0x1009	res	1
r0x1008	res	1
r0x100B	res	1
r0x100A	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_idata_0	idata
_force_cinit
	db	0x00

;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_idata	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  __sdcc_gsinit_startup	;Function start
; 2 exit points
;has an exit
;functions called:
;   __gptrget2
;   __gptrget2
;   __gptrget2
;   __gptrget2
;   __gptrget1
;   __gptrget2
;   __gptrget2
;   __gptrget2
;   __gptrget2
;   __gptrget1
;14 compiler assigned registers:
;   STK01
;   STK00
;   r0x1000
;   r0x1001
;   r0x1002
;   r0x1003
;   r0x1004
;   r0x1005
;   r0x1006
;   r0x1007
;   r0x1008
;   r0x1009
;   r0x100A
;   r0x100B
;; Starting pCode block
;[ICODE] idata.c:68:  _entry($8) :
;[ICODE] idata.c:68: 	proc __sdcc_gsinit_startup [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( )  fixed}
__sdcc_gsinit_startup	;Function start
; 2 exit points
;[ICODE] idata.c:75: 	iTemp1 [k5 lr3:4 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{const-unsigned-int code* code}[remat] = &[_cinit [k4 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-struct __00010001 code}]
;[ICODE] idata.c:75: 	iTemp0 [k2 lr4:12 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ __sdcc_gsinit_startup_num_1_1}[r0x1048 r0x1049 ] = @[iTemp1 [k5 lr3:4 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{const-unsigned-int code* code}[remat]]
;	.line	75; "idata.c"	num = cinit.records;
	MOVLW	(_cinit + 0)
	MOVWF	STK01
	MOVLW	high (_cinit + 0)
	MOVWF	STK00
	MOVLW	0x80
	PAGESEL	__gptrget2
	CALL	__gptrget2
	PAGESEL	$
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
;[ICODE] idata.c:76: 	iTemp5 [k11 lr6:7 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{const-struct __00010001 code* code}[remat] = &[_cinit [k4 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-struct __00010001 code}]
;[ICODE] idata.c:76: 	iTemp4 [k9 lr7:11 so:0]{ ia0 a2p0 re1 rm1 nos0 ru0 dp0}{const-struct __00010000 code* fixed}[remat] = iTemp5 [k11 lr6:7 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{const-struct __00010001 code* code}[remat] + 0x2 {const-unsigned-char literal}
;[ICODE] idata.c:79: 	iTemp34 [k47 lr11:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-struct __00010000 code* fixed}[r0x104A r0x104B ] := iTemp4 [k9 lr7:11 so:0]{ ia0 a2p0 re1 rm1 nos0 ru0 dp0}{const-struct __00010000 code* fixed}[remat]
;	.line	79; "idata.c"	while (num--) {
	MOVLW	(_cinit + 2)
	MOVWF	r0x1002
	MOVLW	high (_cinit + 2)
	MOVWF	r0x1003
;[ICODE] idata.c:79: 	iTemp9 [k16 lr12:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x1048 r0x1049 ] := iTemp0 [k2 lr4:12 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ __sdcc_gsinit_startup_num_1_1}[r0x1048 r0x1049 ]
;[ICODE] idata.c:79:  _whilecontinue_0($4) :
;[ICODE] idata.c:79: 	iTemp8 [k15 lr14:16 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int fixed}[r0x104C r0x104D ] := iTemp9 [k16 lr12:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x1048 r0x1049 ]
_00108_DS_
	BANKSEL	r0x1001
	MOVF	r0x1001,W
	MOVWF	r0x1004
	MOVF	r0x1000,W
	MOVWF	r0x1005
;[ICODE] idata.c:79: 	iTemp9 [k16 lr12:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x1048 r0x1049 ] = iTemp9 [k16 lr12:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x1048 r0x1049 ] - 0x1 {const-unsigned-char literal}
	MOVLW	0xff
	ADDWF	r0x1001,F
	BTFSS	STATUS,0
	DECF	r0x1000,F
;[ICODE] idata.c:79: 	if iTemp8 [k15 lr14:16 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int fixed}[r0x104C r0x104D ] == 0 goto _whilebreak_0($6)
	MOVF	r0x1004,W
	IORWF	r0x1005,W
	BTFSC	STATUS,2
	GOTO	_00110_DS_
;[ICODE] idata.c:80: 	iTemp12 [k21 lr17:18 so:0]{ ia1 a2p0 re0 rm0 nos0 ru1 dp0}{const-unsigned-int code* fixed}[r0x104C r0x104D ] = iTemp34 [k47 lr11:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-struct __00010000 code* fixed}[r0x104A r0x104B ] + 0x4 {const-unsigned-char literal}
;	.line	80; "idata.c"	size = cptr->size;
	MOVLW	0x04
	ADDWF	r0x1002,W
	MOVWF	r0x1004
	CLRF	r0x1005
	RLF	r0x1005,F
	MOVF	r0x1003,W
	ADDWF	r0x1005,F
;[ICODE] idata.c:80: 	iTemp10 [k17 lr18:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ __sdcc_gsinit_startup_size_1_1}[r0x104E r0x104F ] = @[iTemp12 [k21 lr17:18 so:0]{ ia1 a2p0 re0 rm0 nos0 ru1 dp0}{const-unsigned-int code* fixed}[r0x104C r0x104D ]]
	MOVF	r0x1004,W
	MOVWF	STK01
	MOVF	r0x1005,W
	MOVWF	STK00
	MOVLW	0x80
	PAGESEL	__gptrget2
	CALL	__gptrget2
	PAGESEL	$
	BANKSEL	r0x1006
	MOVWF	r0x1006
	MOVF	STK00,W
	MOVWF	r0x1007
;[ICODE] idata.c:81: 	iTemp17 [k28 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-unsigned-int fixed}[r0x104C r0x104D ] = @[iTemp34 [k47 lr11:43 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{const-struct __00010000 code* fixed}[r0x104A r0x104B ]]
;	.line	81; "idata.c"	src = (__code char *) cptr->src;
	MOVF	r0x1002,W
	MOVWF	STK01
	MOVF	r0x1003,W
	MOVWF	STK00
	MOVLW	0x80
	PAGESEL	__gptrget2
	CALL	__gptrget2
	PAGESEL	$
	BANKSEL	r0x1008
	MOVWF	r0x1008
	MOVWF	r0x1005
	MOVF	STK00,W
	MOVWF	r0x1009
	MOVWF	r0x1004
;[ICODE] idata.c:81: 	iTemp14 [k23 lr21:28 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char code* fixed}{ sir@ __sdcc_gsinit_startup_src_1_1}[r0x1050 r0x1051 ] = (const-char code* fixed)iTemp17 [k28 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-unsigned-int fixed}[r0x104C r0x104D ]
;;100	MOVF	r0x1005,W
;;99	MOVF	r0x1004,W
;[ICODE] idata.c:82: 	iTemp21 [k34 lr23:24 so:0]{ ia1 a2p0 re0 rm0 nos0 ru1 dp0}{const-unsigned-int code* fixed}[r0x104C r0x104D ] = iTemp34 [k47 lr11:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-struct __00010000 code* fixed}[r0x104A r0x104B ] + 0x2 {const-unsigned-char literal}
;	.line	82; "idata.c"	dst = (__data char *) cptr->dst;
	MOVLW	0x02
	ADDWF	r0x1002,W
	MOVWF	r0x1004
	CLRF	r0x1005
	RLF	r0x1005,F
	MOVF	r0x1003,W
	ADDWF	r0x1005,F
;[ICODE] idata.c:82: 	iTemp22 [k35 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-unsigned-int fixed}[r0x1052 r0x1053 ] = @[iTemp21 [k34 lr23:24 so:0]{ ia1 a2p0 re0 rm0 nos0 ru1 dp0}{const-unsigned-int code* fixed}[r0x104C r0x104D ]]
	MOVF	r0x1004,W
	MOVWF	STK01
	MOVF	r0x1005,W
	MOVWF	STK00
	MOVLW	0x80
	PAGESEL	__gptrget2
	CALL	__gptrget2
	PAGESEL	$
	BANKSEL	r0x1005
	MOVWF	r0x1005
	MOVWF	r0x100A
	MOVF	STK00,W
	MOVWF	r0x1004
	MOVWF	r0x100B
;[ICODE] idata.c:82: 	iTemp19 [k30 lr25:29 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* fixed}{ sir@ __sdcc_gsinit_startup_dst_1_1}[r0x104C r0x104D ] = (char near* fixed)iTemp22 [k35 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-unsigned-int fixed}[r0x1052 r0x1053 ]
;;102	MOVF	r0x100A,W
;;101	MOVF	r0x100B,W
;[ICODE] idata.c:85: 	iTemp30 [k43 lr28:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char code* fixed}[r0x1050 r0x1051 ] := iTemp14 [k23 lr21:28 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char code* fixed}{ sir@ __sdcc_gsinit_startup_src_1_1}[r0x1050 r0x1051 ]
;[ICODE] idata.c:85: 	iTemp32 [k45 lr29:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* fixed}[r0x104C r0x104D ] := iTemp19 [k30 lr25:29 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* fixed}{ sir@ __sdcc_gsinit_startup_dst_1_1}[r0x104C r0x104D ]
;[ICODE] idata.c:85: 	iTemp25 [k38 lr30:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x104E r0x104F ] := iTemp10 [k17 lr18:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ __sdcc_gsinit_startup_size_1_1}[r0x104E r0x104F ]
;[ICODE] idata.c:85:  _whilecontinue_1($1) :
;[ICODE] idata.c:85: 	iTemp24 [k37 lr32:34 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int fixed}[r0x1052 r0x1053 ] := iTemp25 [k38 lr30:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x104E r0x104F ]
_00105_DS_
;	.line	85; "idata.c"	while (size--) {
	BANKSEL	r0x1007
	MOVF	r0x1007,W
	MOVWF	r0x100B
	MOVF	r0x1006,W
	MOVWF	r0x100A
;[ICODE] idata.c:85: 	iTemp25 [k38 lr30:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x104E r0x104F ] = iTemp25 [k38 lr30:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x104E r0x104F ] - 0x1 {const-unsigned-char literal}
	MOVLW	0xff
	ADDWF	r0x1007,F
	BTFSS	STATUS,0
	DECF	r0x1006,F
;[ICODE] idata.c:85: 	if iTemp24 [k37 lr32:34 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int fixed}[r0x1052 r0x1053 ] == 0 goto _whilebreak_1($3)
	MOVF	r0x100B,W
	IORWF	r0x100A,W
	BTFSC	STATUS,2
	GOTO	_00107_DS_
;[ICODE] idata.c:86: 	iTemp28 [k41 lr35:36 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char fixed}[r0x1052 ] = @[iTemp30 [k43 lr28:39 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{const-char code* fixed}[r0x1050 r0x1051 ]]
;	.line	86; "idata.c"	*dst = *src;
	MOVF	r0x1009,W
	MOVWF	STK01
	MOVF	r0x1008,W
	MOVWF	STK00
	MOVLW	0x80
	PAGESEL	__gptrget1
	CALL	__gptrget1
	PAGESEL	$
	BANKSEL	r0x100B
	MOVWF	r0x100B
;[ICODE] idata.c:86: 	*(iTemp32 [k45 lr29:39 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char near* fixed}[r0x104C r0x104D ]) := iTemp28 [k41 lr35:36 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char fixed}[r0x1052 ]
	MOVF	r0x1004,W
	MOVWF	FSR
	BCF	STATUS,7
	BTFSC	r0x1005,0
	BSF	STATUS,7
	MOVF	r0x100B,W
	MOVWF	INDF
;[ICODE] idata.c:87: 	iTemp30 [k43 lr28:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char code* fixed}[r0x1050 r0x1051 ] = iTemp30 [k43 lr28:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char code* fixed}[r0x1050 r0x1051 ] + 0x1 {const-unsigned-char literal}
;	.line	87; "idata.c"	src++;
	INCF	r0x1009,F
	BTFSC	STATUS,2
	INCF	r0x1008,F
;[ICODE] idata.c:88: 	iTemp32 [k45 lr29:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* fixed}[r0x104C r0x104D ] = iTemp32 [k45 lr29:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* fixed}[r0x104C r0x104D ] + 0x1 {const-unsigned-char literal}
;	.line	88; "idata.c"	dst++;
	INCF	r0x1004,F
	BTFSC	STATUS,2
	INCF	r0x1005,F
;[ICODE] idata.c:88: 	 goto _whilecontinue_1($1)
	GOTO	_00105_DS_
;[ICODE] idata.c:88:  _whilebreak_1($3) :
;[ICODE] idata.c:92: 	iTemp34 [k47 lr11:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-struct __00010000 code* fixed}[r0x104A r0x104B ] = iTemp34 [k47 lr11:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-struct __00010000 code* fixed}[r0x104A r0x104B ] + 0x6 {const-unsigned-char literal}
_00107_DS_
;	.line	92; "idata.c"	cptr++;
	MOVLW	0x06
	BANKSEL	r0x1002
	ADDWF	r0x1002,F
	BTFSC	STATUS,0
	INCF	r0x1003,F
;[ICODE] idata.c:92: 	 goto _whilecontinue_0($4)
	GOTO	_00108_DS_
;[ICODE] idata.c:92:  _whilebreak_0($6) :
;[ICODE] idata.c:99: inline
_00110_DS_
	PAGESEL _main
	GOTO _main
	
;[ICODE] idata.c:99:  _return($7) :
;[ICODE] idata.c:99: 	eproc __sdcc_gsinit_startup [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( )  fixed}
	RETURN	
; exit point of __sdcc_gsinit_startup


;	code size estimation:
;	  109+   18 =   127 instructions (  290 byte)

	end
