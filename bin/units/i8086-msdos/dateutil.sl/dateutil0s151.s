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
	GLOBAL DATEUTILS_$$_RECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
DATEUTILS_$$_RECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,8
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+18]
		cld
		mov	cx,4
		rep
		movsw
		push	word [bp+16]
		push	word [bp+14]
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		lea	ax,[bp-8]
		push	ax
		call	DATEUTILS_$$_TRYRECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
		test	al,al
		je	..@j2396
		jmp	..@j2397
..@j2396:
		push	word [bp+16]
		push	word [bp+14]
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+18]
		cld
		mov	cx,4
		rep
		movsw
		call	DATEUTILS_$$_INVALIDDATETIMEERROR$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME
..@j2397:
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	22
EXTERN	DATEUTILS_$$_INVALIDDATETIMEERROR$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME
EXTERN	DATEUTILS_$$_TRYRECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
