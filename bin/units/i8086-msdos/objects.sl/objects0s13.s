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
	GLOBAL OBJECTS$_$TRECT_$__$$_EQUALS$TRECT$$BOOLEAN
OBJECTS$_$TRECT_$__$$_EQUALS$TRECT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,18
		mov	ax,word [bp+4]
		lea	di,[bp-18]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,8
		rep
		movsw
		mov	bx,word [bp+6]
		mov	dx,word [bx]
		mov	ax,word [bx+2]
		cmp	ax,word [bp-16]
		jne	..@j89
		cmp	dx,word [bp-18]
		jne	..@j89
		jmp	..@j92
		jmp	..@j89
..@j92:
		mov	bx,word [bp+6]
		mov	dx,word [bx+4]
		mov	ax,word [bx+6]
		cmp	ax,word [bp-12]
		jne	..@j89
		cmp	dx,word [bp-14]
		jne	..@j89
		jmp	..@j91
		jmp	..@j89
..@j91:
		mov	bx,word [bp+6]
		mov	ax,word [bx+8]
		mov	dx,word [bx+10]
		cmp	dx,word [bp-8]
		jne	..@j89
		cmp	ax,word [bp-10]
		jne	..@j89
		jmp	..@j90
		jmp	..@j89
..@j90:
		mov	bx,word [bp+6]
		mov	dx,word [bx+12]
		mov	ax,word [bx+14]
		cmp	ax,word [bp-4]
		jne	..@j89
		cmp	dx,word [bp-6]
		jne	..@j89
		jmp	..@j88
		jmp	..@j89
..@j88:
		mov	byte [bp-1],1
		jmp	..@j93
..@j89:
		mov	byte [bp-1],0
..@j93:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
