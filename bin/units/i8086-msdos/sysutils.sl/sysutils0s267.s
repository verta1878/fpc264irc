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
	GLOBAL SYSUTILS_$$_DOENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME
SYSUTILS_$$_DOENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,8
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		lea	ax,[bp-8]
		push	ax
		call	SYSUTILS_$$_TRYENCODETIME$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
		test	al,al
		je	..@j9390
		jmp	..@j9391
..@j9390:
		wait fldz
		wait fstp	qword [bp-8]
		DB	09bh
..@j9391:
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSUTILS_$$_TRYENCODETIME$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
