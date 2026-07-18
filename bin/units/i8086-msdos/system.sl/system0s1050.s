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
	GLOBAL SYSTEM_$$_SETTEXTCODEPAGE$TEXT$WORD
SYSTEM_$$_SETTEXTCODEPAGE$TEXT$WORD:
		push	bp
		mov	bp,sp
		mov	dx,word [bp+4]
		mov	ax,word [bp+4]
		sub	ax,1
		jbe	..@j21643
		jmp	..@j21642
..@j21643:
		mov	dx,word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		jmp	..@j21641
..@j21642:
..@j21641:
		mov	bx,word [bp+6]
		mov	word [bx+828],dx
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE
