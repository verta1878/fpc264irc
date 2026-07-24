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
	GLOBAL DATEUTILS_$$_DECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD
DATEUTILS_$$_DECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD:
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
		mov	ax,word [bp+10]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	SYSUTILS_$$_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
		mov	bx,word [bp+10]
		cmp	word [bx],24
		je	..@j1789
		jmp	..@j1790
..@j1789:
		mov	bx,word [bp+10]
		mov	word [bx],0
		wait fld	qword [bp+18]
		wait fistp	qword [bp-8]
		DB	09bh
		wait fild	qword [bp-8]
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		mov	ax,word [bp+16]
		push	ax
		mov	ax,word [bp+14]
		push	ax
		mov	ax,word [bp+12]
		push	ax
		call	SYSUTILS_$$_DECODEDATE$TDATETIME$WORD$WORD$WORD
		jmp	..@j1801
..@j1790:
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+18]
		cld
		mov	cx,4
		rep
		movsw
		mov	ax,word [bp+16]
		push	ax
		mov	ax,word [bp+14]
		push	ax
		mov	ax,word [bp+12]
		push	ax
		call	SYSUTILS_$$_DECODEDATE$TDATETIME$WORD$WORD$WORD
..@j1801:
		mov	sp,bp
		pop	bp
		ret	22
EXTERN	SYSUTILS_$$_DECODEDATE$TDATETIME$WORD$WORD$WORD
EXTERN	SYSUTILS_$$_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
