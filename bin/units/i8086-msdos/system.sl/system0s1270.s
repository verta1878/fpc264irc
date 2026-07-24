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
	GLOBAL SYSTEM_$$_PARAMSTR$LONGINT$$SHORTSTRING
SYSTEM_$$_PARAMSTR$LONGINT$$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,256
		mov	dx,word [bp+4]
		mov	ax,word [bp+6]
		cmp	ax,0
		jne	..@j26648
		cmp	dx,0
		jne	..@j26648
		jmp	..@j26647
..@j26647:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-256]
		push	ax
		call	SYSTEM_$$_GETPROGRAMNAME$$SHORTSTRING
		lea	ax,[bp-256]
		push	ax
		call	fpc_shortstr_to_shortstr
		jmp	..@j26657
..@j26648:
		push	word [bp+4]
		mov	ax,word [bp+8]
		push	ax
		mov	ax,255
		push	ax
		call	SYSTEM_$$_GETARG$SMALLINT$OPENSTRING$$SMALLINT
..@j26657:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_GETARG$SMALLINT$OPENSTRING$$SMALLINT
EXTERN	fpc_shortstr_to_shortstr
EXTERN	SYSTEM_$$_GETPROGRAMNAME$$SHORTSTRING
