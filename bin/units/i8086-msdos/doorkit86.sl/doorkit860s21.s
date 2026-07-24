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
	GLOBAL DOORKIT86_$$_PADRIGHT$SHORTSTRING$BYTE$$SHORTSTRING
DOORKIT86_$$_PADRIGHT$SHORTSTRING$BYTE$$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,256
		mov	dx,word [bp+6]
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		push	dx
		call	fpc_shortstr_to_shortstr
		jmp	..@j408
	ALIGN 2
..@j407:
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,word _$DOORKIT86$_Ld15
		push	ax
		call	fpc_shortstr_concat
..@j408:
		mov	al,byte [bp-256]
		cmp	al,byte [bp+4]
		jb	..@j407
		jmp	..@j409
..@j409:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-256]
		push	ax
		call	fpc_shortstr_to_shortstr
		mov	sp,bp
		pop	bp
		ret	6
; End asmlist al_procedures
; Begin asmlist al_globals
EXTERN	fpc_shortstr_concat
EXTERN	_$DOORKIT86$_Ld15
EXTERN	fpc_shortstr_to_shortstr
