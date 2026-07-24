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
	GLOBAL SYSTEM_$$_DEFAULTCODEPOINTLENGTH$PCHAR$SMALLINT$$SMALLINT
SYSTEM_$$_DEFAULTCODEPOINTLENGTH$PCHAR$SMALLINT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+6]
		cmp	byte [bx],0
		jne	..@j10799
		jmp	..@j10800
..@j10799:
		mov	word [bp-2],1
		jmp	..@j10803
..@j10800:
		mov	word [bp-2],0
..@j10803:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
