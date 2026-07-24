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
	GLOBAL SYSTEM_$$_STRINGREFCOUNT$UNICODESTRING$$SMALLINT
SYSTEM_$$_STRINGREFCOUNT$UNICODESTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+4],0
		jne	..@j13685
		jmp	..@j13686
..@j13685:
		mov	bx,word [bp+4]
		mov	ax,word [bx-4]
		mov	word [bp-2],ax
		jmp	..@j13689
..@j13686:
		mov	word [bp-2],0
..@j13689:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
