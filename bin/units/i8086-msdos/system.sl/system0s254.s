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
	GLOBAL fpc_shortstr_setlength
fpc_shortstr_setlength:
	GLOBAL FPC_SHORTSTR_SETLENGTH
FPC_SHORTSTR_SETLENGTH:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],255
		jg	..@j3665
		jmp	..@j3666
..@j3665:
		mov	word [bp+4],255
..@j3666:
		mov	bx,word [bp+8]
		mov	al,byte [bp+4]
		mov	byte [bx],al
		mov	sp,bp
		pop	bp
		ret	6
