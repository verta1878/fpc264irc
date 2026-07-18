BITS 16
CPU 8086
SECTION text use16 class=code
SECTION rodata class=data
SECTION data class=data
SECTION fpc class=data
SECTION bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION text

SECTION text
	ALIGN 2
	GLOBAL DATEUTILS_$$_INVALIDDATETIMEERROR$WORD$WORD$WORD$WORD$WORD$WORD$WORD
DATEUTILS_$$_INVALIDDATETIMEERROR$WORD$WORD$WORD$WORD$WORD$WORD$WORD:
		push	bp
		mov	bp,sp
		push	word [bp+16]
		push	word [bp+14]
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		wait fldz
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		call	DATEUTILS_$$_INVALIDDATETIMEERROR$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME
		mov	sp,bp
		pop	bp
		ret	14
EXTERN	DATEUTILS_$$_INVALIDDATETIMEERROR$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME
