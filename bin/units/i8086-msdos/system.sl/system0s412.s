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
	GLOBAL SYSTEM_$$_STRINGREFCOUNT$RAWBYTESTRING$$SMALLINT
SYSTEM_$$_STRINGREFCOUNT$RAWBYTESTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+4],0
		jne	..@j10662
		jmp	..@j10663
..@j10662:
		mov	bx,word [bp+4]
		mov	ax,word [bx-4]
		mov	word [bp-2],ax
		jmp	..@j10666
..@j10663:
		mov	word [bp-2],0
..@j10666:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
