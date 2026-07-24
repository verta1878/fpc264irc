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
	GLOBAL fpc_val_enum_unicodestr
fpc_val_enum_unicodestr:
		push	bp
		mov	bp,sp
		sub	sp,516
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j12484
		mov	bx,word [bx-2]
..@j12484:
		cmp	bx,255
		jg	..@j12482
		jmp	..@j12483
..@j12482:
		mov	bx,word [bp+4]
		mov	word [bx],256
		jmp	..@j12487
..@j12483:
		lea	ax,[bp-260]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-516]
		push	ax
		mov	ax,255
		push	ax
		push	word [bp+6]
		call	fpc_unicodestr_to_shortstr
		lea	ax,[bp-516]
		push	ax
		call	fpc_shortstr_to_shortstr
		lea	ax,[bp-260]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	fpc_val_longint_shortstr
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j12487:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_val_longint_shortstr
EXTERN	fpc_shortstr_to_shortstr
EXTERN	fpc_unicodestr_to_shortstr
