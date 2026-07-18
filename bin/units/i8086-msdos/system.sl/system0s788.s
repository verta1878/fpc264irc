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
	GLOBAL SYSTEM_$$_POS$CHAR$VARIANT$$SMALLINT
SYSTEM_$$_POS$CHAR$VARIANT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,258
		mov	al,byte [bp+20]
		mov	ah,0
		push	ax
		lea	ax,[bp-258]
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
		lea	ax,[bp-258]
		push	ax
		call	SYSTEM_$$_POS$CHAR$SHORTSTRING$$SMALLINT
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	18
EXTERN	SYSTEM_$$_POS$CHAR$SHORTSTRING$$SMALLINT
EXTERN	U_$SYSTEM_$$_VARIANTMANAGER
