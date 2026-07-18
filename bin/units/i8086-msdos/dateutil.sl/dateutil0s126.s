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
	GLOBAL DATEUTILS_$$_ENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
DATEUTILS_$$_ENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,8
		push	word [bp+16]
		push	word [bp+14]
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		lea	ax,[bp-8]
		push	ax
		call	DATEUTILS_$$_TRYENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
		test	al,al
		je	..@j1745
		jmp	..@j1746
..@j1745:
		push	word [bp+16]
		push	word [bp+14]
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		call	DATEUTILS_$$_INVALIDDATETIMEERROR$WORD$WORD$WORD$WORD$WORD$WORD$WORD
..@j1746:
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	14
EXTERN	DATEUTILS_$$_INVALIDDATETIMEERROR$WORD$WORD$WORD$WORD$WORD$WORD$WORD
EXTERN	DATEUTILS_$$_TRYENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
