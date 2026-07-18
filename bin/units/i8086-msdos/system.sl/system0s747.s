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
	GLOBAL SYSTEM_$$_assign$OLEVARIANT$$CHAR
SYSTEM_$$_assign$OLEVARIANT$$CHAR:
		push	bp
		mov	bp,sp
		sub	sp,258
		lea	ax,[bp-257]
		push	ax
		sub	sp,16
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,8
		rep
		movsw
		mov	ax,word [U_$SYSTEM_$$_VARIANTMANAGER+14]
		call	ax
		cmp	byte [bp-257],0
		ja	..@j16640
		jmp	..@j16641
..@j16640:
		mov	al,byte [bp-256]
		mov	byte [bp-1],al
		jmp	..@j16644
..@j16641:
		mov	byte [bp-1],0
..@j16644:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	U_$SYSTEM_$$_VARIANTMANAGER
