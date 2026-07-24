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
	GLOBAL KEYBOARD_$$_ISFUNCTIONKEY$LONGWORD$$BOOLEAN
KEYBOARD_$$_ISFUNCTIONKEY$LONGWORD$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	ax,0
		and	dx,768
		cmp	dx,512
		jne	..@j40
		cmp	ax,0
		jne	..@j40
		jmp	..@j39
..@j39:
		mov	byte [bp-1],1
		jmp	..@j41
..@j40:
		mov	byte [bp-1],0
..@j41:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
