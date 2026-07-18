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
	GLOBAL SYSTEM_$$_minus$VARIANT$VARIANT$$VARIANT
SYSTEM_$$_minus$VARIANT$VARIANT$$VARIANT:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+36]
		push	ax
		lea	ax,[bp+20]
		push	ax
		call	fpc_variant_copy
		mov	ax,word [bp+36]
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
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		mov	ax,word [U_$SYSTEM_$$_VARIANTMANAGER+60]
		call	ax
		mov	sp,bp
		pop	bp
		ret	34
EXTERN	U_$SYSTEM_$$_VARIANTMANAGER
EXTERN	fpc_variant_copy
