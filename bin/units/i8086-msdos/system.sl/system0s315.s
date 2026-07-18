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
	GLOBAL fpc_shortstr_bool
fpc_shortstr_bool:
	GLOBAL FPC_SHORTSTR_BOOL
FPC_SHORTSTR_BOOL:
		push	bp
		mov	bp,sp
		sub	sp,512
		cmp	byte [bp+10],0
		jne	..@j6708
		jmp	..@j6709
..@j6708:
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		mov	ax,word _$SYSTEM$_Ld18
		push	ax
		call	fpc_shortstr_to_shortstr
		jmp	..@j6716
..@j6709:
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		mov	ax,word _$SYSTEM$_Ld19
		push	ax
		call	fpc_shortstr_to_shortstr
..@j6716:
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		cmp	ax,word [bp+8]
		jl	..@j6723
		jmp	..@j6724
..@j6723:
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-512]
		push	ax
		mov	bx,word [bp+6]
		mov	dl,byte [bx]
		mov	dh,0
		mov	ax,word [bp+8]
		sub	ax,dx
		push	ax
		call	SYSTEM_$$_SPACE$BYTE$$SHORTSTRING
		lea	ax,[bp-512]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		call	fpc_shortstr_concat
		lea	ax,[bp-256]
		push	ax
		call	fpc_shortstr_to_shortstr
..@j6724:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_shortstr_concat
EXTERN	SYSTEM_$$_SPACE$BYTE$$SHORTSTRING
EXTERN	_$SYSTEM$_Ld19
EXTERN	fpc_shortstr_to_shortstr
EXTERN	_$SYSTEM$_Ld18
