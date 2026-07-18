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
	GLOBAL SYSTEM_$$_DECLOCKED$INT64$$BOOLEAN
SYSTEM_$$_DECLOCKED$INT64$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		sub	word [bx],1
		sbb	word [bx+2],0
		sbb	word [bx+4],0
		sbb	word [bx+6],0
		mov	bx,word [bp+4]
		mov	dx,word [bx]
		mov	si,word [bx+2]
		mov	cx,word [bx+4]
		mov	ax,word [bx+6]
		cmp	ax,0
		jne	..@j1716
		cmp	cx,0
		jne	..@j1716
		cmp	si,0
		jne	..@j1716
		cmp	dx,0
		jne	..@j1716
		jmp	..@j1715
..@j1715:
		mov	byte [bp-1],1
		jmp	..@j1717
..@j1716:
		mov	byte [bp-1],0
..@j1717:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
