opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 6 "C:\Users\XENO_NEMSIS\Desktop\todo1\key.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "C:\Users\XENO_NEMSIS\Desktop\todo1\key.c"
	dw 0xFFFF & 0xFFFB & 0xFF7F & 0xFFFE & 0xFFFF ;#
	FNCALL	_main,_DelayMs
	FNCALL	_main,_lcd_init
	FNCALL	_main,_lcd_clear
	FNCALL	_main,_getkey
	FNCALL	_main,_putchar
	FNCALL	_putchar,_lcd_clear
	FNCALL	_putchar,_lcd_putch
	FNCALL	_getkey,_DelayMs
	FNCALL	_getkey,___awdiv
	FNCALL	_lcd_clear,_lcd_write
	FNCALL	_lcd_clear,_DelayMs
	FNCALL	_lcd_init,_DelayMs
	FNCALL	_lcd_init,_lcd_write
	FNROOT	_main
	global	_col
	global	_digit1
	global	_digit2
	global	_motor_direction
	global	_motor_speed
	global	_pressed_key
	global	_row
	global	_Chkey
	global	_PORTB
psect	text253,local,class=CODE,delta=2
global __ptext253
__ptext253:
_PORTB	set	6
	global	_PORTD
_PORTD	set	8
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RC0
_RC0	set	56
	global	_RC6
_RC6	set	62
	global	_RC7
_RC7	set	63
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_RE2
_RE2	set	74
	global	_ADCON1
_ADCON1	set	159
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_nRBPU
_nRBPU	set	1039
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
	file	"todo1.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_col:
       ds      2

_digit1:
       ds      2

_digit2:
       ds      2

_motor_direction:
       ds      2

_motor_speed:
       ds      2

_pressed_key:
       ds      2

_row:
       ds      2

_Chkey:
       ds      1

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
	clrf	((__pbssBANK0)+10)&07Fh
	clrf	((__pbssBANK0)+11)&07Fh
	clrf	((__pbssBANK0)+12)&07Fh
	clrf	((__pbssBANK0)+13)&07Fh
	clrf	((__pbssBANK0)+14)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_lcd_clear
?_lcd_clear:	; 0 bytes @ 0x0
	global	?_getkey
?_getkey:	; 0 bytes @ 0x0
	global	?_putchar
?_putchar:	; 0 bytes @ 0x0
	global	?_lcd_putch
?_lcd_putch:	; 0 bytes @ 0x0
	global	??_lcd_putch
??_lcd_putch:	; 0 bytes @ 0x0
	global	?_DelayMs
?_DelayMs:	; 0 bytes @ 0x0
	global	??_DelayMs
??_DelayMs:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_lcd_write
?_lcd_write:	; 0 bytes @ 0x0
	global	??_lcd_write
??_lcd_write:	; 0 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	ds	1
	global	DelayMs@cnt
DelayMs@cnt:	; 1 bytes @ 0x1
	global	lcd_write@_dcnt
lcd_write@_dcnt:	; 1 bytes @ 0x1
	global	lcd_putch@_dcnt
lcd_putch@_dcnt:	; 1 bytes @ 0x1
	ds	1
	global	DelayMs@i
DelayMs@i:	; 1 bytes @ 0x2
	global	lcd_write@c
lcd_write@c:	; 1 bytes @ 0x2
	global	lcd_putch@c
lcd_putch@c:	; 1 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	DelayMs@_dcnt
DelayMs@_dcnt:	; 1 bytes @ 0x3
	ds	1
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x4
	global	??_lcd_clear
??_lcd_clear:	; 0 bytes @ 0x4
	global	??_putchar
??_putchar:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	putchar@ch
putchar@ch:	; 1 bytes @ 0x4
	ds	1
	global	lcd_init@_dcnt
lcd_init@_dcnt:	; 1 bytes @ 0x5
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	ds	1
	global	lcd_init@_dcnt_2109
lcd_init@_dcnt_2109:	; 1 bytes @ 0x6
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
	global	??_getkey
??_getkey:	; 0 bytes @ 0x9
	ds	3
	global	??_main
??_main:	; 0 bytes @ 0xC
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	getkey@flag
getkey@flag:	; 2 bytes @ 0x0
	ds	2
	global	getkey@colVar
getkey@colVar:	; 1 bytes @ 0x2
	ds	1
	global	getkey@rowVar
getkey@rowVar:	; 1 bytes @ 0x3
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 15, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      13
;; BANK0           80      4      19
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awdiv	int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_getkey
;;   _getkey->___awdiv
;;   _lcd_clear->_DelayMs
;;   _lcd_init->_DelayMs
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_getkey
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 1     1      0    1494
;;                                             12 COMMON     1     1      0
;;                            _DelayMs
;;                           _lcd_init
;;                          _lcd_clear
;;                             _getkey
;;                            _putchar
;; ---------------------------------------------------------------------------------
;; (1) _putchar                                              1     1      0     576
;;                                              4 COMMON     1     1      0
;;                          _lcd_clear
;;                          _lcd_putch
;; ---------------------------------------------------------------------------------
;; (1) _getkey                                               7     7      0     534
;;                                              9 COMMON     3     3      0
;;                                              0 BANK0      4     4      0
;;                            _DelayMs
;;                            ___awdiv
;; ---------------------------------------------------------------------------------
;; (2) _lcd_clear                                            0     0      0     135
;;                          _lcd_write
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             3     3      0     181
;;                                              4 COMMON     3     3      0
;;                            _DelayMs
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (3) _lcd_write                                            3     3      0      67
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (2) _lcd_putch                                            3     3      0      67
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (3) _DelayMs                                              4     4      0      68
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _DelayMs
;;   _lcd_init
;;     _DelayMs
;;     _lcd_write
;;   _lcd_clear
;;     _lcd_write
;;     _DelayMs
;;   _getkey
;;     _DelayMs
;;     ___awdiv
;;   _putchar
;;     _lcd_clear
;;       _lcd_write
;;       _DelayMs
;;     _lcd_putch
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      D       D       1       92.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0      20       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      4      13       5       23.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      23      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 19 in file "C:\Users\XENO_NEMSIS\Desktop\todo1\key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_DelayMs
;;		_lcd_init
;;		_lcd_clear
;;		_getkey
;;		_putchar
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\XENO_NEMSIS\Desktop\todo1\key.c"
	line	19
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	21
	
l3976:	
;key.c: 21: nRBPU = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1039/8)^080h,(1039)&7
	line	22
	
l3978:	
;key.c: 22: TRISE = 0;
	clrf	(137)^080h	;volatile
	line	23
;key.c: 23: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	24
;key.c: 24: TRISD = 0;
	clrf	(136)^080h	;volatile
	line	25
	
l3980:	
;key.c: 25: ADCON1 = 7;
	movlw	(07h)
	movwf	(159)^080h	;volatile
	line	26
	
l3982:	
;key.c: 26: RE2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
	line	27
	
l3984:	
;key.c: 27: RC0=0;
	bcf	(56/8),(56)&7
	line	28
	
l3986:	
;key.c: 28: DelayMs(100);
	movlw	(064h)
	fcall	_DelayMs
	line	29
	
l3988:	
;key.c: 29: lcd_init();
	fcall	_lcd_init
	line	30
	
l3990:	
;key.c: 30: lcd_clear();
	fcall	_lcd_clear
	goto	l3992
	line	33
;key.c: 33: while(1)
	
l723:	
	line	35
	
l3992:	
;key.c: 34: {
;key.c: 35: getkey();
	fcall	_getkey
	line	36
	
l3994:	
;key.c: 36: Chkey = (char) pressed_key;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_pressed_key),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_Chkey)
	line	37
	
l3996:	
;key.c: 37: Chkey += 48;
	movlw	(030h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_Chkey),f
	line	38
	
l3998:	
;key.c: 38: putchar((char)Chkey);
	movf	(_Chkey),w
	fcall	_putchar
	goto	l3992
	line	39
	
l724:	
	line	33
	goto	l3992
	
l725:	
	line	41
	
l726:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_putchar
psect	text254,local,class=CODE,delta=2
global __ptext254
__ptext254:

;; *************** function _putchar *****************
;; Defined at:
;;		line 125 in file "C:\Users\XENO_NEMSIS\Desktop\todo1\key.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_clear
;;		_lcd_putch
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text254
	file	"C:\Users\XENO_NEMSIS\Desktop\todo1\key.c"
	line	125
	global	__size_of_putchar
	__size_of_putchar	equ	__end_of_putchar-_putchar
	
_putchar:	
	opt	stack 5
; Regs used in _putchar: [wreg+status,2+status,0+pclath+cstack]
;putchar@ch stored from wreg
	line	127
	movwf	(putchar@ch)
	
l3908:	
;key.c: 127: if(ch=='1')
	movf	(putchar@ch),w
	xorlw	031h
	skipz
	goto	u2981
	goto	u2980
u2981:
	goto	l3912
u2980:
	line	130
	
l3910:	
;key.c: 128: {
;key.c: 130: lcd_clear();
	fcall	_lcd_clear
	line	131
;key.c: 131: }
	goto	l787
	line	132
	
l755:	
	
l3912:	
;key.c: 132: else if(ch=='2')
	movf	(putchar@ch),w
	xorlw	032h
	skipz
	goto	u2991
	goto	u2990
u2991:
	goto	l3918
u2990:
	line	134
	
l3914:	
;key.c: 133: {
;key.c: 134: RC0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	line	135
;key.c: 135: RC6=0;
	bcf	(62/8),(62)&7
	line	136
;key.c: 136: RC7=1;
	bsf	(63/8),(63)&7
	line	138
	
l3916:	
;key.c: 138: lcd_putch('1');
	movlw	(031h)
	fcall	_lcd_putch
	line	139
;key.c: 139: }
	goto	l787
	line	140
	
l757:	
	
l3918:	
;key.c: 140: else if(ch=='3')
	movf	(putchar@ch),w
	xorlw	033h
	skipz
	goto	u3001
	goto	u3000
u3001:
	goto	l3922
u3000:
	line	143
	
l3920:	
;key.c: 141: {
;key.c: 143: lcd_putch('4');
	movlw	(034h)
	fcall	_lcd_putch
	line	144
;key.c: 144: }
	goto	l787
	line	145
	
l759:	
	
l3922:	
;key.c: 145: else if(ch=='4')
	movf	(putchar@ch),w
	xorlw	034h
	skipz
	goto	u3011
	goto	u3010
u3011:
	goto	l3926
u3010:
	line	147
	
l3924:	
;key.c: 146: {
;key.c: 147: lcd_putch('7');
	movlw	(037h)
	fcall	_lcd_putch
	line	148
;key.c: 148: }
	goto	l787
	line	149
	
l761:	
	
l3926:	
;key.c: 149: else if(ch=='5')
	movf	(putchar@ch),w
	xorlw	035h
	skipz
	goto	u3021
	goto	u3020
u3021:
	goto	l3930
u3020:
	line	151
	
l3928:	
;key.c: 150: {
;key.c: 151: lcd_putch('0');
	movlw	(030h)
	fcall	_lcd_putch
	line	152
;key.c: 152: }
	goto	l787
	line	153
	
l763:	
	
l3930:	
;key.c: 153: else if(ch=='6')
	movf	(putchar@ch),w
	xorlw	036h
	skipz
	goto	u3031
	goto	u3030
u3031:
	goto	l3934
u3030:
	line	155
	
l3932:	
;key.c: 154: {
;key.c: 155: lcd_putch('2');
	movlw	(032h)
	fcall	_lcd_putch
	line	156
;key.c: 156: }
	goto	l787
	line	157
	
l765:	
	
l3934:	
;key.c: 157: else if(ch=='7')
	movf	(putchar@ch),w
	xorlw	037h
	skipz
	goto	u3041
	goto	u3040
u3041:
	goto	l3938
u3040:
	line	159
	
l3936:	
;key.c: 158: {
;key.c: 159: lcd_putch('5');
	movlw	(035h)
	fcall	_lcd_putch
	line	160
;key.c: 160: }
	goto	l787
	line	161
	
l767:	
	
l3938:	
;key.c: 161: else if(ch=='8')
	movf	(putchar@ch),w
	xorlw	038h
	skipz
	goto	u3051
	goto	u3050
u3051:
	goto	l3942
u3050:
	line	163
	
l3940:	
;key.c: 162: {
;key.c: 163: lcd_putch('8');
	movlw	(038h)
	fcall	_lcd_putch
	line	164
;key.c: 164: }
	goto	l787
	line	165
	
l769:	
	
l3942:	
;key.c: 165: else if(ch=='9')
	movf	(putchar@ch),w
	xorlw	039h
	skipz
	goto	u3061
	goto	u3060
u3061:
	goto	l3946
u3060:
	line	167
	
l3944:	
;key.c: 166: {
;key.c: 167: lcd_putch('=');
	movlw	(03Dh)
	fcall	_lcd_putch
	line	168
;key.c: 168: }
	goto	l787
	line	169
	
l771:	
	
l3946:	
;key.c: 169: else if(ch==':')
	movf	(putchar@ch),w
	xorlw	03Ah
	skipz
	goto	u3071
	goto	u3070
u3071:
	goto	l3950
u3070:
	line	171
	
l3948:	
;key.c: 170: {
;key.c: 171: lcd_putch('3');
	movlw	(033h)
	fcall	_lcd_putch
	line	172
;key.c: 172: }
	goto	l787
	line	173
	
l773:	
	
l3950:	
;key.c: 173: else if(ch==';')
	movf	(putchar@ch),w
	xorlw	03Bh
	skipz
	goto	u3081
	goto	u3080
u3081:
	goto	l3954
u3080:
	line	175
	
l3952:	
;key.c: 174: {
;key.c: 175: lcd_putch('6');
	movlw	(036h)
	fcall	_lcd_putch
	line	176
;key.c: 176: }
	goto	l787
	line	177
	
l775:	
	
l3954:	
;key.c: 177: else if(ch=='<')
	movf	(putchar@ch),w
	xorlw	03Ch
	skipz
	goto	u3091
	goto	u3090
u3091:
	goto	l3958
u3090:
	line	179
	
l3956:	
;key.c: 178: {
;key.c: 179: lcd_putch('9');
	movlw	(039h)
	fcall	_lcd_putch
	line	180
;key.c: 180: }
	goto	l787
	line	181
	
l777:	
	
l3958:	
;key.c: 181: else if(ch=='=')
	movf	(putchar@ch),w
	xorlw	03Dh
	skipz
	goto	u3101
	goto	u3100
u3101:
	goto	l3962
u3100:
	line	183
	
l3960:	
;key.c: 182: {
;key.c: 183: lcd_putch('+');
	movlw	(02Bh)
	fcall	_lcd_putch
	line	184
;key.c: 184: }
	goto	l787
	line	185
	
l779:	
	
l3962:	
;key.c: 185: else if(ch=='>')
	movf	(putchar@ch),w
	xorlw	03Eh
	skipz
	goto	u3111
	goto	u3110
u3111:
	goto	l3966
u3110:
	line	187
	
l3964:	
;key.c: 186: {
;key.c: 187: lcd_putch('-');
	movlw	(02Dh)
	fcall	_lcd_putch
	line	188
;key.c: 188: }
	goto	l787
	line	189
	
l781:	
	
l3966:	
;key.c: 189: else if(ch=='?')
	movf	(putchar@ch),w
	xorlw	03Fh
	skipz
	goto	u3121
	goto	u3120
u3121:
	goto	l3970
u3120:
	line	191
	
l3968:	
;key.c: 190: {
;key.c: 191: lcd_putch('x');
	movlw	(078h)
	fcall	_lcd_putch
	line	192
;key.c: 192: }
	goto	l787
	line	193
	
l783:	
	
l3970:	
;key.c: 193: else if(ch=='@')
	movf	(putchar@ch),w
	xorlw	040h
	skipz
	goto	u3131
	goto	u3130
u3131:
	goto	l3974
u3130:
	line	195
	
l3972:	
;key.c: 194: {
;key.c: 195: lcd_putch('/');
	movlw	(02Fh)
	fcall	_lcd_putch
	line	196
;key.c: 196: }
	goto	l787
	line	197
	
l785:	
	line	198
	
l3974:	
;key.c: 197: else
;key.c: 198: lcd_putch(ch);
	movf	(putchar@ch),w
	fcall	_lcd_putch
	goto	l787
	
l786:	
	goto	l787
	
l784:	
	goto	l787
	
l782:	
	goto	l787
	
l780:	
	goto	l787
	
l778:	
	goto	l787
	
l776:	
	goto	l787
	
l774:	
	goto	l787
	
l772:	
	goto	l787
	
l770:	
	goto	l787
	
l768:	
	goto	l787
	
l766:	
	goto	l787
	
l764:	
	goto	l787
	
l762:	
	goto	l787
	
l760:	
	goto	l787
	
l758:	
	goto	l787
	
l756:	
	line	199
	
l787:	
	return
	opt stack 0
GLOBAL	__end_of_putchar
	__end_of_putchar:
;; =============== function _putchar ends ============

	signat	_putchar,4216
	global	_getkey
psect	text255,local,class=CODE,delta=2
global __ptext255
__ptext255:

;; *************** function _getkey *****************
;; Defined at:
;;		line 44 in file "C:\Users\XENO_NEMSIS\Desktop\todo1\key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  flag            2    0[BANK0 ] int 
;;  rowVar          1    3[BANK0 ] unsigned char 
;;  colVar          1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       4       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_DelayMs
;;		___awdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text255
	file	"C:\Users\XENO_NEMSIS\Desktop\todo1\key.c"
	line	44
	global	__size_of_getkey
	__size_of_getkey	equ	__end_of_getkey-_getkey
	
_getkey:	
	opt	stack 6
; Regs used in _getkey: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	46
	
l3838:	
;key.c: 45: char colVar, rowVar;
;key.c: 46: int flag=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(getkey@flag)
	clrf	(getkey@flag+1)
	line	47
	
l3840:	
;key.c: 47: DelayMs(50);
	movlw	(032h)
	fcall	_DelayMs
	goto	l3842
	line	50
;key.c: 50: do {
	
l729:	
	line	51
	
l3842:	
;key.c: 51: PORTB = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	52
	
l3844:	
;key.c: 52: TRISB = 0xf0;
	movlw	(0F0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	53
	
l3846:	
;key.c: 53: } while ( (PORTB >> 4) != 0xf );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_getkey+0)+0
	movlw	04h
u2835:
	clrc
	rrf	(??_getkey+0)+0,f
	addlw	-1
	skipz
	goto	u2835
	movf	0+(??_getkey+0)+0,w
	xorlw	0Fh
	skipz
	goto	u2841
	goto	u2840
u2841:
	goto	l3842
u2840:
	goto	l3848
	
l730:	
	line	55
	
l3848:	
;key.c: 55: DelayMs(50);
	movlw	(032h)
	fcall	_DelayMs
	goto	l3850
	line	58
;key.c: 58: while (1)
	
l731:	
	line	60
	
l3850:	
;key.c: 59: {
;key.c: 60: if ( flag == 1 ){
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(getkey@flag),w
	iorwf	(getkey@flag+1),w
	skipz
	goto	u2851
	goto	u2850
u2851:
	goto	l3854
u2850:
	goto	l3888
	line	61
	
l3852:	
;key.c: 61: break;
	goto	l3888
	line	62
	
l732:	
	line	65
	
l3854:	
;key.c: 62: }
;key.c: 65: for ( col = 0; col < 4; col++ ) {
	clrf	(_col)
	clrf	(_col+1)
	
l3856:	
	movf	(_col+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2865
	movlw	low(04h)
	subwf	(_col),w
u2865:

	skipc
	goto	u2861
	goto	u2860
u2861:
	goto	l3860
u2860:
	goto	l3850
	
l3858:	
	goto	l3850
	
l734:	
	line	66
	
l3860:	
;key.c: 66: PORTB = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	72
	
l3862:	
;key.c: 72: if ( col == 0 ){
	movf	((_col+1)),w
	iorwf	((_col)),w
	skipz
	goto	u2871
	goto	u2870
u2871:
	goto	l3866
u2870:
	line	73
	
l3864:	
;key.c: 73: colVar = 1;
	clrf	(getkey@colVar)
	bsf	status,0
	rlf	(getkey@colVar),f
	line	74
;key.c: 74: }
	goto	l3876
	line	75
	
l736:	
	
l3866:	
;key.c: 75: else if ( col == 1 ){
	movlw	01h
	xorwf	(_col),w
	iorwf	(_col+1),w
	skipz
	goto	u2881
	goto	u2880
u2881:
	goto	l3870
u2880:
	line	76
	
l3868:	
;key.c: 76: colVar = 2;
	movlw	(02h)
	movwf	(??_getkey+0)+0
	movf	(??_getkey+0)+0,w
	movwf	(getkey@colVar)
	line	77
;key.c: 77: }
	goto	l3876
	line	78
	
l738:	
	
l3870:	
;key.c: 78: else if ( col == 2 ){
	movlw	02h
	xorwf	(_col),w
	iorwf	(_col+1),w
	skipz
	goto	u2891
	goto	u2890
u2891:
	goto	l3874
u2890:
	line	79
	
l3872:	
;key.c: 79: colVar = 4;
	movlw	(04h)
	movwf	(??_getkey+0)+0
	movf	(??_getkey+0)+0,w
	movwf	(getkey@colVar)
	line	80
;key.c: 80: }
	goto	l3876
	line	81
	
l740:	
	line	82
	
l3874:	
;key.c: 81: else{
;key.c: 82: colVar = 8;
	movlw	(08h)
	movwf	(??_getkey+0)+0
	movf	(??_getkey+0)+0,w
	movwf	(getkey@colVar)
	goto	l3876
	line	83
	
l741:	
	goto	l3876
	
l739:	
	goto	l3876
	
l737:	
	line	86
	
l3876:	
;key.c: 83: }
;key.c: 86: TRISB = colVar ^ 0xff;
	comf	(getkey@colVar),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	89
	
l3878:	
;key.c: 89: row = PORTB >> 4;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_getkey+0)+0
	movlw	04h
u2905:
	clrc
	rrf	(??_getkey+0)+0,f
	addlw	-1
	skipz
	goto	u2905
	movf	0+(??_getkey+0)+0,w
	movwf	(??_getkey+1)+0
	clrf	(??_getkey+1)+0+1
	movf	0+(??_getkey+1)+0,w
	movwf	(_row)
	movf	1+(??_getkey+1)+0,w
	movwf	(_row+1)
	line	92
	
l3880:	
;key.c: 92: if ( row != 0xf ) {
	movlw	0Fh
	xorwf	(_row),w
	iorwf	(_row+1),w
	skipnz
	goto	u2911
	goto	u2910
u2911:
	goto	l3884
u2910:
	line	93
	
l3882:	
;key.c: 93: flag = 1;
	movlw	low(01h)
	movwf	(getkey@flag)
	movlw	high(01h)
	movwf	((getkey@flag))+1
	line	94
;key.c: 94: break;
	goto	l3850
	line	95
	
l742:	
	line	65
	
l3884:	
	movlw	low(01h)
	addwf	(_col),f
	skipnc
	incf	(_col+1),f
	movlw	high(01h)
	addwf	(_col+1),f
	
l3886:	
	movf	(_col+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2925
	movlw	low(04h)
	subwf	(_col),w
u2925:

	skipc
	goto	u2921
	goto	u2920
u2921:
	goto	l3860
u2920:
	goto	l3850
	
l735:	
	goto	l3850
	line	97
	
l743:	
	line	58
	goto	l3850
	
l733:	
	line	101
	
l3888:	
;key.c: 95: }
;key.c: 96: }
;key.c: 97: }
;key.c: 101: rowVar = row ^ 0xf;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_row),w
	xorlw	0Fh
	movwf	(??_getkey+0)+0
	movf	(??_getkey+0)+0,w
	movwf	(getkey@rowVar)
	line	103
	
l3890:	
;key.c: 103: if ( (rowVar / 8) == 1 ){
	movlw	low(08h)
	movwf	(?___awdiv)
	movlw	high(08h)
	movwf	((?___awdiv))+1
	movf	(getkey@rowVar),w
	movwf	(??_getkey+0)+0
	clrf	(??_getkey+0)+0+1
	movf	0+(??_getkey+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_getkey+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movlw	01h
	xorwf	(0+(?___awdiv)),w
	iorwf	(1+(?___awdiv)),w
	skipz
	goto	u2931
	goto	u2930
u2931:
	goto	l3894
u2930:
	line	104
	
l3892:	
;key.c: 104: rowVar = 4;
	movlw	(04h)
	movwf	(??_getkey+0)+0
	movf	(??_getkey+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(getkey@rowVar)
	line	105
;key.c: 105: }
	goto	l3906
	line	106
	
l744:	
	
l3894:	
;key.c: 106: else if ( (rowVar / 4) == 1 ){
	movlw	low(04h)
	movwf	(?___awdiv)
	movlw	high(04h)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(getkey@rowVar),w
	movwf	(??_getkey+0)+0
	clrf	(??_getkey+0)+0+1
	movf	0+(??_getkey+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_getkey+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movlw	01h
	xorwf	(0+(?___awdiv)),w
	iorwf	(1+(?___awdiv)),w
	skipz
	goto	u2941
	goto	u2940
u2941:
	goto	l3898
u2940:
	line	107
	
l3896:	
;key.c: 107: rowVar = 3;
	movlw	(03h)
	movwf	(??_getkey+0)+0
	movf	(??_getkey+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(getkey@rowVar)
	line	108
;key.c: 108: }
	goto	l3906
	line	109
	
l746:	
	
l3898:	
;key.c: 109: else if ( (rowVar / 2) == 1 ){
	movlw	low(02h)
	movwf	(?___awdiv)
	movlw	high(02h)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(getkey@rowVar),w
	movwf	(??_getkey+0)+0
	clrf	(??_getkey+0)+0+1
	movf	0+(??_getkey+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_getkey+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movlw	01h
	xorwf	(0+(?___awdiv)),w
	iorwf	(1+(?___awdiv)),w
	skipz
	goto	u2951
	goto	u2950
u2951:
	goto	l3902
u2950:
	line	110
	
l3900:	
;key.c: 110: rowVar = 2;
	movlw	(02h)
	movwf	(??_getkey+0)+0
	movf	(??_getkey+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(getkey@rowVar)
	line	111
;key.c: 111: }
	goto	l3906
	line	112
	
l748:	
	
l3902:	
;key.c: 112: else if ( rowVar == 1 ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(getkey@rowVar),w
	xorlw	01h
	skipz
	goto	u2961
	goto	u2960
u2961:
	goto	l750
u2960:
	line	113
	
l3904:	
;key.c: 113: rowVar = 1;
	clrf	(getkey@rowVar)
	bsf	status,0
	rlf	(getkey@rowVar),f
	line	114
;key.c: 114: }
	goto	l3906
	line	115
	
l750:	
	line	116
;key.c: 115: else{
;key.c: 116: rowVar = 0;
	clrf	(getkey@rowVar)
	goto	l3906
	line	117
	
l751:	
	goto	l3906
	
l749:	
	goto	l3906
	
l747:	
	goto	l3906
	
l745:	
	line	120
	
l3906:	
;key.c: 117: }
;key.c: 120: pressed_key = (col * 4) + rowVar;
	movf	(_col+1),w
	movwf	(??_getkey+0)+0+1
	movf	(_col),w
	movwf	(??_getkey+0)+0
	movlw	02h
	movwf	btemp+1
u2975:
	clrc
	rlf	(??_getkey+0)+0,f
	rlf	(??_getkey+0)+1,f
	decfsz	btemp+1,f
	goto	u2975
	movf	(getkey@rowVar),w
	addwf	0+(??_getkey+0)+0,w
	movwf	(_pressed_key)
	movlw	0
	skipnc
	movlw	1
	addwf	1+(??_getkey+0)+0,w
	movwf	1+(_pressed_key)
	line	121
	
l752:	
	return
	opt stack 0
GLOBAL	__end_of_getkey
	__end_of_getkey:
;; =============== function _getkey ends ============

	signat	_getkey,88
	global	_lcd_clear
psect	text256,local,class=CODE,delta=2
global __ptext256
__ptext256:

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 31 in file "C:\Users\XENO_NEMSIS\Desktop\todo1\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_lcd_write
;;		_DelayMs
;; This function is called by:
;;		_main
;;		_putchar
;; This function uses a non-reentrant model
;;
psect	text256
	file	"C:\Users\XENO_NEMSIS\Desktop\todo1\lcd.c"
	line	31
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 5
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	32
	
l3834:	
;lcd.c: 32: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	33
	
l3836:	
;lcd.c: 33: lcd_write(0x1);
	movlw	(01h)
	fcall	_lcd_write
	line	34
;lcd.c: 34: DelayMs(2);
	movlw	(02h)
	fcall	_DelayMs
	line	35
	
l1483:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
;; =============== function _lcd_clear ends ============

	signat	_lcd_clear,88
	global	_lcd_init
psect	text257,local,class=CODE,delta=2
global __ptext257
__ptext257:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 57 in file "C:\Users\XENO_NEMSIS\Desktop\todo1\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  _dcnt           1    6[COMMON] unsigned char 
;;  _dcnt           1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_DelayMs
;;		_lcd_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text257
	file	"C:\Users\XENO_NEMSIS\Desktop\todo1\lcd.c"
	line	57
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 6
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	58
	
l3802:	
;lcd.c: 58: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	59
	
l3804:	
;lcd.c: 59: DelayMs(15);
	movlw	(0Fh)
	fcall	_DelayMs
	line	60
	
l3806:	
;lcd.c: 60: PORTD = (0x3 << 4);
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	61
	
l3808:	
;lcd.c: 61: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l3810:	
	bcf	(73/8),(73)&7
	line	62
	
l3812:	
;lcd.c: 62: DelayMs(5);
	movlw	(05h)
	fcall	_DelayMs
	line	63
	
l3814:	
;lcd.c: 63: ((RE1 = 1),(RE1=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	
l3816:	
	bcf	(73/8),(73)&7
	line	64
;lcd.c: 64: { unsigned char _dcnt; _dcnt = (100)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(021h)
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(lcd_init@_dcnt)
	goto	l3818
	
l1502:	
	goto	l3818
	
l1501:	
	
l3818:	
	movlw	low(01h)
	subwf	(lcd_init@_dcnt),f
	btfss	status,2
	goto	u2811
	goto	u2810
u2811:
	goto	l3818
u2810:
	
l1503:	
	line	65
;lcd.c: 65: ((RE1 = 1),(RE1=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	bcf	(73/8),(73)&7
	line	66
	
l3820:	
;lcd.c: 66: DelayMs(5);
	movlw	(05h)
	fcall	_DelayMs
	line	67
	
l3822:	
;lcd.c: 67: PORTD = (0x2 << 4);
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	68
	
l3824:	
;lcd.c: 68: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l3826:	
	bcf	(73/8),(73)&7
	line	69
	
l3828:	
;lcd.c: 69: { unsigned char _dcnt; _dcnt = (40)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(0Dh)
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(lcd_init@_dcnt_2109)
	goto	l3830
	
l1505:	
	goto	l3830
	
l1504:	
	
l3830:	
	movlw	low(01h)
	subwf	(lcd_init@_dcnt_2109),f
	btfss	status,2
	goto	u2821
	goto	u2820
u2821:
	goto	l3830
u2820:
	goto	l3832
	
l1506:	
	line	70
	
l3832:	
;lcd.c: 70: lcd_write(0x28);
	movlw	(028h)
	fcall	_lcd_write
	line	71
;lcd.c: 71: lcd_write(0x08);
	movlw	(08h)
	fcall	_lcd_write
	line	72
;lcd.c: 72: lcd_write(0x0F);
	movlw	(0Fh)
	fcall	_lcd_write
	line	73
;lcd.c: 73: lcd_write(0x06);
	movlw	(06h)
	fcall	_lcd_write
	line	74
	
l1507:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	___awdiv
psect	text258,local,class=CODE,delta=2
global __ptext258
__ptext258:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_getkey
;; This function uses a non-reentrant model
;;
psect	text258
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l3762:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u2711
	goto	u2710
u2711:
	goto	l3766
u2710:
	line	11
	
l3764:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l3766
	line	13
	
l2330:	
	line	14
	
l3766:	
	btfss	(___awdiv@dividend+1),7
	goto	u2721
	goto	u2720
u2721:
	goto	l3772
u2720:
	line	15
	
l3768:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l3770:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l3772
	line	17
	
l2331:	
	line	18
	
l3772:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l3774:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2731
	goto	u2730
u2731:
	goto	l3794
u2730:
	line	20
	
l3776:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l3782
	
l2334:	
	line	22
	
l3778:	
	movlw	01h
	
u2745:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2745
	line	23
	
l3780:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l3782
	line	24
	
l2333:	
	line	21
	
l3782:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2751
	goto	u2750
u2751:
	goto	l3778
u2750:
	goto	l3784
	
l2335:	
	goto	l3784
	line	25
	
l2336:	
	line	26
	
l3784:	
	movlw	01h
	
u2765:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2765
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2775
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2775:
	skipc
	goto	u2771
	goto	u2770
u2771:
	goto	l3790
u2770:
	line	28
	
l3786:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l3788:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l3790
	line	30
	
l2337:	
	line	31
	
l3790:	
	movlw	01h
	
u2785:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2785
	line	32
	
l3792:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2791
	goto	u2790
u2791:
	goto	l3784
u2790:
	goto	l3794
	
l2338:	
	goto	l3794
	line	33
	
l2332:	
	line	34
	
l3794:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2800
	goto	l3798
u2800:
	line	35
	
l3796:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l3798
	
l2339:	
	line	36
	
l3798:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l2340
	
l3800:	
	line	37
	
l2340:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	_lcd_write
psect	text259,local,class=CODE,delta=2
global __ptext259
__ptext259:

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 23 in file "C:\Users\XENO_NEMSIS\Desktop\todo1\lcd.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    2[COMMON] unsigned char 
;;  _dcnt           1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_clear
;;		_lcd_init
;;		_lcd_puts
;;		_lcd_goto
;; This function uses a non-reentrant model
;;
psect	text259
	file	"C:\Users\XENO_NEMSIS\Desktop\todo1\lcd.c"
	line	23
	global	__size_of_lcd_write
	__size_of_lcd_write	equ	__end_of_lcd_write-_lcd_write
	
_lcd_write:	
	opt	stack 5
; Regs used in _lcd_write: [wreg+status,2+status,0]
;lcd_write@c stored from wreg
	movwf	(lcd_write@c)
	line	24
	
l3736:	
;lcd.c: 24: PORTD = (PORTD & 0x0F) | (c);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w
	andlw	0Fh
	iorwf	(lcd_write@c),w
	movwf	(8)	;volatile
	line	25
	
l3738:	
;lcd.c: 25: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l3740:	
	bcf	(73/8),(73)&7
	line	26
;lcd.c: 26: PORTD = (PORTD & 0x0F) | (c << 4);
	movf	(lcd_write@c),w
	movwf	(??_lcd_write+0)+0
	movlw	04h
u2685:
	clrc
	rlf	(??_lcd_write+0)+0,f
	addlw	-1
	skipz
	goto	u2685
	movf	(8),w
	andlw	0Fh
	iorwf	0+(??_lcd_write+0)+0,w
	movwf	(8)	;volatile
	line	27
	
l3742:	
;lcd.c: 27: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l3744:	
	bcf	(73/8),(73)&7
	line	28
	
l3746:	
;lcd.c: 28: { unsigned char _dcnt; _dcnt = (40)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(0Dh)
	movwf	(??_lcd_write+0)+0
	movf	(??_lcd_write+0)+0,w
	movwf	(lcd_write@_dcnt)
	goto	l3748
	
l1478:	
	goto	l3748
	
l1477:	
	
l3748:	
	movlw	low(01h)
	subwf	(lcd_write@_dcnt),f
	btfss	status,2
	goto	u2691
	goto	u2690
u2691:
	goto	l3748
u2690:
	goto	l1480
	
l1479:	
	line	29
	
l1480:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
;; =============== function _lcd_write ends ============

	signat	_lcd_write,4216
	global	_lcd_putch
psect	text260,local,class=CODE,delta=2
global __ptext260
__ptext260:

;; *************** function _lcd_putch *****************
;; Defined at:
;;		line 43 in file "C:\Users\XENO_NEMSIS\Desktop\todo1\lcd.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    2[COMMON] unsigned char 
;;  _dcnt           1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_putchar
;; This function uses a non-reentrant model
;;
psect	text260
	file	"C:\Users\XENO_NEMSIS\Desktop\todo1\lcd.c"
	line	43
	global	__size_of_lcd_putch
	__size_of_lcd_putch	equ	__end_of_lcd_putch-_lcd_putch
	
_lcd_putch:	
	opt	stack 6
; Regs used in _lcd_putch: [wreg+status,2+status,0]
;lcd_putch@c stored from wreg
	movwf	(lcd_putch@c)
	line	44
	
l3720:	
;lcd.c: 44: RE0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	line	45
	
l3722:	
;lcd.c: 45: PORTD = (PORTD & 0x0F) | (c);
	movf	(8),w
	andlw	0Fh
	iorwf	(lcd_putch@c),w
	movwf	(8)	;volatile
	line	46
	
l3724:	
;lcd.c: 46: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l3726:	
	bcf	(73/8),(73)&7
	line	47
;lcd.c: 47: PORTD = (PORTD & 0x0F) | (c << 4);
	movf	(lcd_putch@c),w
	movwf	(??_lcd_putch+0)+0
	movlw	04h
u2665:
	clrc
	rlf	(??_lcd_putch+0)+0,f
	addlw	-1
	skipz
	goto	u2665
	movf	(8),w
	andlw	0Fh
	iorwf	0+(??_lcd_putch+0)+0,w
	movwf	(8)	;volatile
	line	48
	
l3728:	
;lcd.c: 48: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l3730:	
	bcf	(73/8),(73)&7
	line	49
	
l3732:	
;lcd.c: 49: { unsigned char _dcnt; _dcnt = (40)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(0Dh)
	movwf	(??_lcd_putch+0)+0
	movf	(??_lcd_putch+0)+0,w
	movwf	(lcd_putch@_dcnt)
	goto	l3734
	
l1493:	
	goto	l3734
	
l1492:	
	
l3734:	
	movlw	low(01h)
	subwf	(lcd_putch@_dcnt),f
	btfss	status,2
	goto	u2671
	goto	u2670
u2671:
	goto	l3734
u2670:
	goto	l1495
	
l1494:	
	line	50
	
l1495:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putch
	__end_of_lcd_putch:
;; =============== function _lcd_putch ends ============

	signat	_lcd_putch,4216
	global	_DelayMs
psect	text261,local,class=CODE,delta=2
global __ptext261
__ptext261:

;; *************** function _DelayMs *****************
;; Defined at:
;;		line 11 in file "C:\Users\XENO_NEMSIS\Desktop\todo1\delay.c"
;; Parameters:    Size  Location     Type
;;  cnt             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cnt             1    1[COMMON] unsigned char 
;;  _dcnt           1    3[COMMON] unsigned char 
;;  i               1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_getkey
;;		_lcd_clear
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text261
	file	"C:\Users\XENO_NEMSIS\Desktop\todo1\delay.c"
	line	11
	global	__size_of_DelayMs
	__size_of_DelayMs	equ	__end_of_DelayMs-_DelayMs
	
_DelayMs:	
	opt	stack 5
; Regs used in _DelayMs: [wreg+status,2+status,0]
;DelayMs@cnt stored from wreg
	movwf	(DelayMs@cnt)
	line	20
;delay.c: 19: unsigned char i;
;delay.c: 20: do {
	
l3:	
	line	21
	
l3712:	
;delay.c: 21: i = 4;
	movlw	(04h)
	movwf	(??_DelayMs+0)+0
	movf	(??_DelayMs+0)+0,w
	movwf	(DelayMs@i)
	line	22
;delay.c: 22: do {
	
l4:	
	line	23
;delay.c: 23: { unsigned char _dcnt; _dcnt = (250)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(053h)
	movwf	(??_DelayMs+0)+0
	movf	(??_DelayMs+0)+0,w
	movwf	(DelayMs@_dcnt)
	goto	l3714
	
l6:	
	goto	l3714
	
l5:	
	
l3714:	
	movlw	low(01h)
	subwf	(DelayMs@_dcnt),f
	btfss	status,2
	goto	u2631
	goto	u2630
u2631:
	goto	l3714
u2630:
	goto	l3716
	
l7:	
	line	24
	
l3716:	
;delay.c: 24: } while(--i);
	movlw	low(01h)
	subwf	(DelayMs@i),f
	btfss	status,2
	goto	u2641
	goto	u2640
u2641:
	goto	l4
u2640:
	goto	l3718
	
l8:	
	line	25
	
l3718:	
;delay.c: 25: } while(--cnt);
	movlw	low(01h)
	subwf	(DelayMs@cnt),f
	btfss	status,2
	goto	u2651
	goto	u2650
u2651:
	goto	l3
u2650:
	goto	l10
	
l9:	
	line	27
	
l10:	
	return
	opt stack 0
GLOBAL	__end_of_DelayMs
	__end_of_DelayMs:
;; =============== function _DelayMs ends ============

	signat	_DelayMs,4216
psect	text262,local,class=CODE,delta=2
global __ptext262
__ptext262:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
