BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES_$$_HEXTOBIN$PCHAR$PCHAR$SMALLINT$$SMALLINT
CLASSES_$$_HEXTOBIN$PCHAR$PCHAR$SMALLINT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	ax,word [bp+4]
		mov	word [bp-4],ax
		jmp	..@j21
	ALIGN 2
..@j20:
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	ah,0
		sub	ax,65
		cmp	ax,6
		jb	..@j25
		sub	ax,32
		cmp	ax,6
		jb	..@j25
..@j25:
		jc	..@j23
		jmp	..@j24
..@j23:
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	ah,0
		add	ax,9
		and	ax,15
		mov	word [bp-8],ax
		jmp	..@j28
..@j24:
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	ah,0
		sub	ax,48
		cmp	ax,10
		jb	..@j31
..@j31:
		jc	..@j29
		jmp	..@j30
..@j29:
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	ah,0
		and	ax,15
		mov	word [bp-8],ax
		jmp	..@j34
..@j30:
		jmp	..@j22
..@j34:
..@j28:
		inc	word [bp+8]
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	ah,0
		sub	ax,65
		cmp	ax,6
		jb	..@j37
		sub	ax,32
		cmp	ax,6
		jb	..@j37
..@j37:
		jc	..@j35
		jmp	..@j36
..@j35:
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	ah,0
		add	ax,9
		and	ax,15
		mov	word [bp-10],ax
		jmp	..@j40
..@j36:
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	ah,0
		sub	ax,48
		cmp	ax,10
		jb	..@j43
..@j43:
		jc	..@j41
		jmp	..@j42
..@j41:
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	ah,0
		and	ax,15
		mov	word [bp-10],ax
		jmp	..@j46
..@j42:
		jmp	..@j22
..@j46:
..@j40:
		mov	ax,word [bp-8]
		mov	cl,4
		shl	ax,cl
		mov	dx,word [bp-10]
		add	dx,ax
		mov	word [bp-6],dx
		inc	word [bp+8]
		mov	bx,word [bp+6]
		mov	al,byte [bp-6]
		mov	byte [bx],al
		inc	word [bp+6]
		dec	word [bp-4]
..@j21:
		cmp	word [bp-4],0
		jg	..@j20
		jmp	..@j22
..@j22:
		mov	ax,word [bp+4]
		mov	dx,word [bp-4]
		sub	ax,dx
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
