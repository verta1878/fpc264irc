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
	GLOBAL fpc_val_longint_unicodestr
fpc_val_longint_unicodestr:
	GLOBAL FPC_VAL_LONGINT_UNICODESTR
FPC_VAL_LONGINT_UNICODESTR:
		push	bp
		mov	bp,sp
		sub	sp,516
		mov	word [bp-4],0
		mov	word [bp-2],0
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j12682
		mov	bx,word [bx-2]
..@j12682:
		cmp	bx,255
		jg	..@j12680
		jmp	..@j12681
..@j12680:
		mov	bx,word [bp+4]
		mov	word [bx],256
		jmp	..@j12685
..@j12681:
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
..@j12685:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_val_longint_shortstr
EXTERN	fpc_shortstr_to_shortstr
EXTERN	fpc_unicodestr_to_shortstr
