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
	GLOBAL DATEUTILS$_$TRYRECODEDATETIME$crc28D83E09_$$_FV$WORD$WORD
DATEUTILS$_$TRYRECODEDATETIME$crc28D83E09_$$_FV$WORD$WORD:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],-1
		jne	..@j2512
		jmp	..@j2513
..@j2512:
		mov	bx,word [bp+6]
		mov	ax,word [bp+4]
		mov	word [bx],ax
..@j2513:
		mov	sp,bp
		pop	bp
		ret	6
