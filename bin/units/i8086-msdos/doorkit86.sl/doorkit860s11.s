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
	GLOBAL DOORKIT86_$$_DOORWRITELN$SHORTSTRING
DOORKIT86_$$_DOORWRITELN$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,512
		mov	dx,word [bp+4]
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		push	dx
		call	fpc_shortstr_to_shortstr
		lea	ax,[bp-512]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,word _$DOORKIT86$_Ld1
		push	ax
		call	fpc_shortstr_concat
		lea	ax,[bp-512]
		push	ax
		call	DOORKIT86_$$_DOORWRITE$SHORTSTRING
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	DOORKIT86_$$_DOORWRITE$SHORTSTRING
EXTERN	fpc_shortstr_concat
EXTERN	_$DOORKIT86$_Ld1
EXTERN	fpc_shortstr_to_shortstr
