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
	GLOBAL SYSTEM_$$_VARARRAYGET$VARIANT$array_of_LONGINT$$VARIANT
SYSTEM_$$_VARARRAYGET$VARIANT$array_of_LONGINT$$VARIANT:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+4]
		inc	ax
		cmp	ax,0
		jg	..@j16535
		jmp	..@j16536
..@j16535:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+4]
		inc	ax
		push	ax
		sub	sp,16
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+8]
		cld
		mov	cx,8
		rep
		movsw
		mov	ax,word [bp+24]
		push	ax
		call	[U_$SYSTEM_$$_VARIANTMANAGER+84]
		add	sp,20
		jmp	..@j16545
..@j16536:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		sub	sp,16
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+8]
		cld
		mov	cx,8
		rep
		movsw
		mov	ax,word [bp+24]
		push	ax
		call	[U_$SYSTEM_$$_VARIANTMANAGER+84]
		add	sp,20
..@j16545:
		mov	sp,bp
		pop	bp
		ret	22
EXTERN	U_$SYSTEM_$$_VARIANTMANAGER
