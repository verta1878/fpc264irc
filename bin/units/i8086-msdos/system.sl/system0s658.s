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
	GLOBAL fpc_variant_to_idispatch
fpc_variant_to_idispatch:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+20]
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
		mov	ax,word [U_$SYSTEM_$$_VARIANTMANAGER+22]
		call	ax
		mov	sp,bp
		pop	bp
		ret	18
EXTERN	U_$SYSTEM_$$_VARIANTMANAGER
