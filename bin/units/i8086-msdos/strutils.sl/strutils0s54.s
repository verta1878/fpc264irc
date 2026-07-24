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
	GLOBAL STRUTILS$_$NATURALCOMPARETEXT$crc79D5E46B_$$_SIGN$SMALLINT$$SMALLINT
STRUTILS$_$NATURALCOMPARETEXT$crc79D5E46B_$$_SIGN$SMALLINT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+4],0
		jl	..@j1616
		jmp	..@j1617
..@j1616:
		mov	word [bp-2],-1
		jmp	..@j1620
..@j1617:
		cmp	word [bp+4],0
		jg	..@j1621
		jmp	..@j1622
..@j1621:
		mov	word [bp-2],1
		jmp	..@j1625
..@j1622:
		mov	word [bp-2],0
..@j1625:
..@j1620:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
