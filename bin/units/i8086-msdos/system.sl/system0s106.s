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
	GLOBAL SYSTEM_$$_DECLOCKED$LONGINT$$BOOLEAN
SYSTEM_$$_DECLOCKED$LONGINT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		sub	word [bx],1
		sbb	word [bx+2],0
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		cmp	dx,0
		jne	..@j1711
		cmp	ax,0
		jne	..@j1711
		jmp	..@j1710
..@j1710:
		mov	byte [bp-1],1
		jmp	..@j1712
..@j1711:
		mov	byte [bp-1],0
..@j1712:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
