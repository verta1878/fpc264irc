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
	GLOBAL DATEUTILS_$$_INCYEAR$TDATETIME$SMALLINT$$TDATETIME
DATEUTILS_$$_INCYEAR$TDATETIME$SMALLINT$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,22
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+6]
		cld
		mov	cx,4
		rep
		movsw
		lea	ax,[bp-10]
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-18]
		push	ax
		lea	ax,[bp-20]
		push	ax
		lea	ax,[bp-22]
		push	ax
		call	DATEUTILS_$$_DECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD
		mov	bx,word [bp-10]
		mov	cx,0
		mov	ax,word [bp+4]
		cwd
		add	ax,bx
		adc	dx,cx
		mov	word [bp-10],ax
		cmp	word [bp-12],2
		je	..@j1578
		jmp	..@j1576
..@j1578:
		cmp	word [bp-14],29
		je	..@j1577
		jmp	..@j1576
..@j1577:
		push	word [bp-10]
		call	SYSUTILS_$$_ISLEAPYEAR$WORD$$BOOLEAN
		test	al,al
		je	..@j1575
		jmp	..@j1576
..@j1575:
		mov	word [bp-14],28
..@j1576:
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-18]
		push	word [bp-20]
		push	word [bp-22]
		call	DATEUTILS_$$_ENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	DATEUTILS_$$_ENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
EXTERN	SYSUTILS_$$_ISLEAPYEAR$WORD$$BOOLEAN
EXTERN	DATEUTILS_$$_DECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD
