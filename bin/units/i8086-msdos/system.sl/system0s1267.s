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
	GLOBAL SYSTEM_$$_GETCOMMANDLINE$$SHORTSTRING
SYSTEM_$$_GETCOMMANDLINE$$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,10
		push	word [__fpc_PrefixSeg]
		mov	ax,128
		push	ax
		call	SYSTEM_$$_PTR$WORD$WORD$$FARPOINTER
		mov	bx,ax
		mov	es,dx
		mov	al,byte [es:bx]
		mov	ah,0
		mov	word [bp-2],ax
		mov	ax,word [bp+4]
		push	ax
		mov	ax,255
		push	ax
		push	word [bp-2]
		call	fpc_shortstr_setlength
		mov	ax,word [bp-2]
		mov	word [bp-8],ax
		mov	word [bp-4],1
		mov	ax,word [bp-8]
		cmp	ax,word [bp-4]
		jl	..@j26583
		dec	word [bp-4]
	ALIGN 2
..@j26584:
		inc	word [bp-4]
		push	word [__fpc_PrefixSeg]
		mov	ax,word [bp-4]
		add	ax,128
		push	ax
		call	SYSTEM_$$_PTR$WORD$WORD$$FARPOINTER
		mov	bx,ax
		mov	ax,word [bp+4]
		mov	word [bp-10],ax
		mov	al,byte [bp-4]
		mov	byte [bp-6],al
		mov	byte [bp-5],0
		mov	es,dx
		mov	al,byte [es:bx]
		mov	si,word [bp-6]
		mov	bx,word [bp-10]
		mov	byte [bx+si],al
		mov	ax,word [bp-8]
		cmp	ax,word [bp-4]
		jg	..@j26584
..@j26583:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_shortstr_setlength
EXTERN	SYSTEM_$$_PTR$WORD$WORD$$FARPOINTER
EXTERN	__fpc_PrefixSeg
