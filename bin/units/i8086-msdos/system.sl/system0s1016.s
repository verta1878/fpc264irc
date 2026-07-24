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
	GLOBAL SYSTEM_$$_MIN$SMALLINT$SMALLINT$$SMALLINT
SYSTEM_$$_MIN$SMALLINT$SMALLINT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+6]
		cmp	ax,word [bp+4]
		jl	..@j20869
		jmp	..@j20870
..@j20869:
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
		jmp	..@j20873
..@j20870:
		mov	ax,word [bp+4]
		mov	word [bp-2],ax
..@j20873:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
