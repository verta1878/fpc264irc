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
	GLOBAL MACPAS_$$_BTST$LONGINT$LONGWORD$$BOOLEAN
MACPAS_$$_BTST$LONGINT$LONGWORD$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		mov	cx,word [bp+4]
		and	cx,31
		jz	..@j139
..@j140:
		shr	dx,1
		rcr	ax,1
		loop	..@j140
..@j139:
		and	ax,1
		mov	dx,0
		cmp	dx,0
		jne	..@j137
		cmp	ax,0
		jne	..@j137
		jmp	..@j138
..@j137:
		mov	byte [bp-1],1
		jmp	..@j141
..@j138:
		mov	byte [bp-1],0
..@j141:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	8
