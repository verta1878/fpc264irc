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
	GLOBAL DATEUTILS_$$_TRYENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
DATEUTILS_$$_TRYENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,10
		push	word [bp+18]
		push	word [bp+16]
		push	word [bp+14]
		mov	ax,word [bp+4]
		push	ax
		call	SYSUTILS_$$_TRYENCODEDATE$WORD$WORD$WORD$TDATETIME$$BOOLEAN
		mov	byte [bp-1],al
		cmp	byte [bp-1],0
		jne	..@j1824
		jmp	..@j1823
..@j1824:
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		lea	ax,[bp-10]
		push	ax
		call	SYSUTILS_$$_TRYENCODETIME$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
		test	al,al
		jne	..@j1822
		jmp	..@j1823
..@j1822:
		mov	byte [bp-1],1
		jmp	..@j1835
..@j1823:
		mov	byte [bp-1],0
..@j1835:
		cmp	byte [bp-1],0
		jne	..@j1836
		jmp	..@j1837
..@j1836:
		mov	si,word [bp+4]
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp-10]
		cld
		mov	cx,4
		rep
		movsw
		call	SYSUTILS_$$_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME
		mov	bx,word [bp+4]
		wait fstp	qword [bx]
		DB	09bh
..@j1837:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	SYSUTILS_$$_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME
EXTERN	SYSUTILS_$$_TRYENCODETIME$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
EXTERN	SYSUTILS_$$_TRYENCODEDATE$WORD$WORD$WORD$TDATETIME$$BOOLEAN
