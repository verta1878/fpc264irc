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
	GLOBAL fpc_val_longword_ansistr
fpc_val_longword_ansistr:
	GLOBAL FPC_VAL_LONGWORD_ANSISTR
FPC_VAL_LONGWORD_ANSISTR:
		push	bp
		mov	bp,sp
		sub	sp,260
		mov	word [bp-4],0
		mov	word [bp-2],0
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j9945
		mov	bx,word [bx-2]
..@j9945:
		cmp	bx,255
		jg	..@j9943
		jmp	..@j9944
..@j9943:
		mov	bx,word [bp+4]
		mov	word [bx],256
		jmp	..@j9948
..@j9944:
		lea	ax,[bp-260]
		push	ax
		mov	ax,255
		push	ax
		push	word [bp+6]
		call	fpc_ansistr_to_shortstr
		lea	ax,[bp-260]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	fpc_val_longword_shortstr
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j9948:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_val_longword_shortstr
EXTERN	fpc_ansistr_to_shortstr
