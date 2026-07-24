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
	GLOBAL TYPES$_$TSIZE_$__$$_equal$TSIZE$TSIZE$$BOOLEAN
TYPES$_$TSIZE_$__$$_equal$TSIZE$TSIZE$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		cmp	dx,word [si+2]
		jne	..@j60
		cmp	ax,word [si]
		jne	..@j60
		jmp	..@j61
		jmp	..@j60
..@j61:
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		mov	dx,word [si+4]
		mov	ax,word [si+6]
		cmp	ax,word [bx+6]
		jne	..@j60
		cmp	dx,word [bx+4]
		jne	..@j60
		jmp	..@j59
		jmp	..@j60
..@j59:
		mov	byte [bp-1],1
		jmp	..@j62
..@j60:
		mov	byte [bp-1],0
..@j62:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
