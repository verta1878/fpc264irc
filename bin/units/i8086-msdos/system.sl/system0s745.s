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
	GLOBAL SYSTEM_$$_assign$OLEVARIANT$$WORDBOOL
SYSTEM_$$_assign$OLEVARIANT$$WORDBOOL:
		push	bp
		mov	bp,sp
		sub	sp,2
		sub	sp,16
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,8
		rep
		movsw
		mov	ax,word [U_$SYSTEM_$$_VARIANTMANAGER+6]
		call	ax
		or	al,al
		mov	ax,0
		je	..@j16624
		inc	ax
..@j16624:
		neg	ax
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	U_$SYSTEM_$$_VARIANTMANAGER
