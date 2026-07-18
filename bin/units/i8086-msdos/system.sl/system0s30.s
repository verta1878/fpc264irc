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
	GLOBAL SYSTEM_$$_HEXSTR$FARPOINTER$$SHORTSTRING
SYSTEM_$$_HEXSTR$FARPOINTER$$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,518
		mov	ax,word [bp+8]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-262]
		push	ax
		mov	ax,word [bp+6]
		mov	dx,0
		push	dx
		push	ax
		mov	ax,4
		push	ax
		call	SYSTEM_$$_HEXSTR$LONGINT$BYTE$$SHORTSTRING
		lea	ax,[bp-262]
		mov	word [bp-6],ax
		mov	ax,word _$SYSTEM$_Ld1
		mov	word [bp-4],ax
		lea	ax,[bp-518]
		push	ax
		mov	ax,word [bp+4]
		mov	dx,0
		push	dx
		push	ax
		mov	ax,4
		push	ax
		call	SYSTEM_$$_HEXSTR$LONGINT$BYTE$$SHORTSTRING
		lea	ax,[bp-518]
		mov	word [bp-2],ax
		lea	ax,[bp-6]
		push	ax
		mov	ax,2
		push	ax
		call	fpc_shortstr_concat_multi
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_shortstr_concat_multi
EXTERN	_$SYSTEM$_Ld1
EXTERN	SYSTEM_$$_HEXSTR$LONGINT$BYTE$$SHORTSTRING
