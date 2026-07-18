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
	GLOBAL MACPAS_$$_BTST$LONGWORD$LONGWORD$$BOOLEAN
MACPAS_$$_BTST$LONGWORD$LONGWORD$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		mov	cx,word [bp+4]
		and	cx,31
		jz	..@j146
..@j147:
		shr	dx,1
		rcr	ax,1
		loop	..@j147
..@j146:
		and	ax,1
		mov	dx,0
		cmp	dx,0
		jne	..@j144
		cmp	ax,0
		jne	..@j144
		jmp	..@j145
..@j144:
		mov	byte [bp-1],1
		jmp	..@j148
..@j145:
		mov	byte [bp-1],0
..@j148:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	8
