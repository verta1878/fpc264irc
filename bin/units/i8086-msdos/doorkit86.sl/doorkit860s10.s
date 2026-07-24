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
	GLOBAL DOORKIT86_$$_DOORWRITE$SHORTSTRING
DOORKIT86_$$_DOORWRITE$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,262
		mov	dx,word [bp+4]
		lea	ax,[bp-257]
		push	ax
		mov	ax,255
		push	ax
		push	dx
		call	fpc_shortstr_to_shortstr
		call	fpc_get_output
		mov	dx,0
		push	dx
		mov	dx,0
		push	dx
		mov	word [bp-262],ax
		push	word [bp-262]
		lea	ax,[bp-257]
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,word [bp-262]
		mov	word [bp-260],ax
		push	word [bp-260]
		call	fpc_write_end
		call	FPC_IOCHECK
		cmp	byte [U_$DOORKIT86_$$_DOORFOSSIL],0
		jne	..@j108
		jmp	..@j107
..@j108:
		cmp	byte [U_$DOORKIT86_$$_DOORLOCALMODE],0
		je	..@j106
		jmp	..@j107
..@j106:
		push	word [U_$DOORKIT86_$$_DOORCOMPORT]
		lea	ax,[bp-257]
		push	ax
		call	DOORKIT86_$$_FOSSILWRITESTR$WORD$SHORTSTRING
..@j107:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	DOORKIT86_$$_FOSSILWRITESTR$WORD$SHORTSTRING
EXTERN	U_$DOORKIT86_$$_DOORCOMPORT
EXTERN	U_$DOORKIT86_$$_DOORLOCALMODE
EXTERN	U_$DOORKIT86_$$_DOORFOSSIL
EXTERN	fpc_write_end
EXTERN	FPC_IOCHECK
EXTERN	fpc_write_text_shortstr
EXTERN	fpc_get_output
EXTERN	fpc_shortstr_to_shortstr
