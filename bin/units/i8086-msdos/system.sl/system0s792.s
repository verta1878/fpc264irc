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
	GLOBAL SYSTEM_$$_POS$VARIANT$CHAR$$SMALLINT
SYSTEM_$$_POS$VARIANT$CHAR$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,258
		lea	ax,[bp-258]
		push	ax
		sub	sp,16
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+6]
		cld
		mov	cx,8
		rep
		movsw
		mov	ax,word [U_$SYSTEM_$$_VARIANTMANAGER+14]
		call	ax
		lea	ax,[bp-258]
		push	ax
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_POS$SHORTSTRING$CHAR$$SMALLINT
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	18
EXTERN	SYSTEM_$$_POS$SHORTSTRING$CHAR$$SMALLINT
EXTERN	U_$SYSTEM_$$_VARIANTMANAGER
