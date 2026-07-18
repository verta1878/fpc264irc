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
	GLOBAL SYSTEM_$$_assign$CHAR$$OLEVARIANT
SYSTEM_$$_assign$CHAR$$OLEVARIANT:
		push	bp
		mov	bp,sp
		sub	sp,256
		mov	ax,word [bp+6]
		push	ax
		mov	al,byte [bp+4]
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		mov	dx,0
		or	ax,1
		mov	word [bp-256],ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,word [U_$SYSTEM_$$_VARIANTMANAGER+52]
		call	ax
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	U_$SYSTEM_$$_VARIANTMANAGER
