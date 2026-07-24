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
	GLOBAL STRUTILS_$$_RPOS$CHAR$ANSISTRING$$SMALLINT
STRUTILS_$$_RPOS$CHAR$ANSISTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j4281
		mov	bx,word [bx-2]
..@j4281:
		mov	word [bp-4],bx
		cmp	word [bp-4],0
		jne	..@j4282
		jmp	..@j4283
..@j4282:
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		lea	ax,[bx+si-1]
		mov	word [bp-6],ax
		mov	ax,word [bp+4]
		mov	word [bp-8],ax
		jmp	..@j4289
	ALIGN 2
..@j4288:
		dec	word [bp-6]
..@j4289:
		mov	ax,word [bp-8]
		cmp	ax,word [bp-6]
		jbe	..@j4291
		jmp	..@j4290
..@j4291:
		mov	bx,word [bp-6]
		mov	al,byte [bx]
		cmp	al,byte [bp+6]
		jne	..@j4288
		jmp	..@j4290
..@j4290:
		mov	ax,word [bp-6]
		mov	dx,word [bp-8]
		sub	ax,dx
		inc	ax
		mov	word [bp-4],ax
..@j4283:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
