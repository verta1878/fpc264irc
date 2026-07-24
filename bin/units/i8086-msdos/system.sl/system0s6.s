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
	GLOBAL SYSTEM_$$_FILLDWORD$formal$SMALLINT$LONGWORD
SYSTEM_$$_FILLDWORD$formal$SMALLINT$LONGWORD:
		mov	bx,sp
		mov	cx,word [ss:bx+6]
		or	cx,cx
		jle	..@j52
		mov	di,word [ss:bx+8]
		mov	ax,ds
		mov	es,ax
		mov	ax,word [ss:bx+2]
		mov	bx,word [ss:bx+4]
		cld
		cmp	ax,bx
		jne	..@j53
		shl	cx,1
		rep
		stosw
		jmp	..@j52
..@j53:
		stosw
		xchg	ax,bx
		stosw
		xchg	ax,bx
		loop	..@j53
..@j52:
		ret	8
