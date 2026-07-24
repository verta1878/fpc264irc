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
	GLOBAL ISO7185_$$_DOASSIGN$TEXT
ISO7185_$$_DOASSIGN$TEXT:
		push	bp
		mov	bp,sp
		sub	sp,518
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word _$ISO7185$_Ld1
		mov	word [bp-262],ax
		lea	ax,[bp-518]
		push	ax
		mov	ax,15258
		push	ax
		mov	ax,-13824
		push	ax
		call	SYSTEM_$$_RANDOM$LONGINT$$LONGINT
		push	dx
		push	ax
		mov	ax,8
		push	ax
		call	SYSTEM_$$_HEXSTR$LONGINT$BYTE$$SHORTSTRING
		lea	ax,[bp-518]
		mov	word [bp-260],ax
		mov	ax,word _$ISO7185$_Ld2
		mov	word [bp-258],ax
		lea	ax,[bp-262]
		push	ax
		mov	ax,2
		push	ax
		call	fpc_shortstr_concat_multi
		lea	ax,[bp-256]
		push	ax
		call	SYSTEM_$$_ASSIGN$TEXT$SHORTSTRING
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_ASSIGN$TEXT$SHORTSTRING
EXTERN	fpc_shortstr_concat_multi
EXTERN	_$ISO7185$_Ld2
EXTERN	SYSTEM_$$_HEXSTR$LONGINT$BYTE$$SHORTSTRING
EXTERN	SYSTEM_$$_RANDOM$LONGINT$$LONGINT
EXTERN	_$ISO7185$_Ld1
