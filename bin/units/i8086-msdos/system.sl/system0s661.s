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
	GLOBAL SYSTEM_$$_assign$BYTE$$VARIANT
SYSTEM_$$_assign$BYTE$$VARIANT:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+6]
		push	ax
		mov	ax,0
		mov	dl,byte [bp+4]
		mov	dh,0
		push	ax
		push	dx
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		mov	ax,word [U_$SYSTEM_$$_VARIANTMANAGER+28]
		call	ax
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	U_$SYSTEM_$$_VARIANTMANAGER
