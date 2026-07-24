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
	GLOBAL fpc_longjmp
fpc_longjmp:
	GLOBAL FPC_LONGJMP
FPC_LONGJMP:
		mov	si,sp
		mov	bx,word [ss:si+4]
		mov	ax,word [ss:si+2]
		test	ax,ax
		jnz	..@j18375
		inc	ax
..@j18375:
		mov	bp,word [bx]
		mov	sp,word [bx+2]
		jmp	[bx+4]
		ret	4
