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
	GLOBAL KEYBOARD_$$_GETKEYEVENTUNICODE$LONGWORD$$WORD
KEYBOARD_$$_GETKEYEVENTUNICODE$LONGWORD$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	ax,0
		and	dx,768
		cmp	dx,256
		jne	..@j23
		cmp	ax,0
		jne	..@j23
		jmp	..@j22
..@j22:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	dx,0
		mov	word [bp-2],ax
		jmp	..@j26
..@j23:
		mov	word [bp-2],0
..@j26:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
