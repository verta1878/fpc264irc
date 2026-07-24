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
	GLOBAL DOORKIT86_$$_DOORANSIGOTOXY$BYTE$BYTE
DOORKIT86_$$_DOORANSIGOTOXY$BYTE$BYTE:
		push	bp
		mov	bp,sp
		sub	sp,778
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word _$DOORKIT86$_Ld2
		mov	word [bp-266],ax
		lea	ax,[bp-522]
		push	ax
		mov	ax,0
		mov	dl,byte [bp+4]
		mov	dh,0
		push	ax
		push	dx
		call	DOORKIT86_$$_INTTOSTR$LONGINT$$SHORTSTRING
		lea	ax,[bp-522]
		mov	word [bp-264],ax
		mov	ax,word _$DOORKIT86$_Ld8
		mov	word [bp-262],ax
		lea	ax,[bp-778]
		push	ax
		mov	ax,0
		mov	dl,byte [bp+6]
		mov	dh,0
		push	ax
		push	dx
		call	DOORKIT86_$$_INTTOSTR$LONGINT$$SHORTSTRING
		lea	ax,[bp-778]
		mov	word [bp-260],ax
		mov	ax,word _$DOORKIT86$_Ld9
		mov	word [bp-258],ax
		lea	ax,[bp-266]
		push	ax
		mov	ax,4
		push	ax
		call	fpc_shortstr_concat_multi
		lea	ax,[bp-256]
		push	ax
		call	DOORKIT86_$$_DOORWRITE$SHORTSTRING
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	DOORKIT86_$$_DOORWRITE$SHORTSTRING
EXTERN	fpc_shortstr_concat_multi
EXTERN	_$DOORKIT86$_Ld9
EXTERN	_$DOORKIT86$_Ld8
EXTERN	DOORKIT86_$$_INTTOSTR$LONGINT$$SHORTSTRING
EXTERN	_$DOORKIT86$_Ld2
