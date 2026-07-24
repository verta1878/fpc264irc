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
	GLOBAL DOS_$$_GETENVSTR$SMALLINT$SHORTSTRING$$SMALLINT
DOS_$$_GETENVSTR$SMALLINT$SHORTSTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,264
		push	word [__fpc_PrefixSeg]
		mov	ax,44
		push	ax
		call	SYSTEM_$$_PTR$WORD$WORD$$FARPOINTER
		mov	bx,ax
		mov	es,dx
		mov	ax,word [es:bx]
		mov	word [bp-4],ax
		mov	word [bp-2],1
		mov	bx,word [bp+4]
		mov	byte [bx],0
		mov	word [bp-6],0
	ALIGN 2
..@j1864:
		push	word [bp-4]
		push	word [bp-6]
		call	SYSTEM_$$_PTR$WORD$WORD$$FARPOINTER
		mov	bx,ax
		mov	es,dx
		mov	al,byte [es:bx]
		mov	byte [bp-7],al
		push	word [bp-4]
		mov	ax,word [bp-6]
		inc	ax
		push	ax
		call	SYSTEM_$$_PTR$WORD$WORD$$FARPOINTER
		mov	bx,ax
		mov	es,dx
		mov	al,byte [es:bx]
		mov	byte [bp-8],al
		cmp	byte [bp-7],0
		je	..@j1881
		jmp	..@j1880
..@j1881:
		cmp	byte [bp-8],0
		je	..@j1879
		jmp	..@j1880
..@j1879:
		jmp	..@j1850
..@j1880:
		cmp	byte [bp-7],0
		je	..@j1882
		jmp	..@j1883
..@j1882:
		inc	word [bp-2]
..@j1883:
		cmp	byte [bp-7],0
		jne	..@j1886
		jmp	..@j1885
..@j1886:
		mov	ax,word [bp-2]
		cmp	ax,word [bp+6]
		je	..@j1884
		jmp	..@j1885
..@j1884:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word [bp+4]
		push	ax
		mov	al,byte [bp-7]
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		mov	dx,0
		or	ax,1
		mov	word [bp-264],ax
		lea	ax,[bp-264]
		push	ax
		call	fpc_shortstr_concat
..@j1885:
		inc	word [bp-6]
		cmp	word [bp-6],0
		je	..@j1895
		jmp	..@j1896
..@j1895:
		jmp	..@j1850
..@j1896:
		jmp	..@j1864
..@j1850:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_shortstr_concat
EXTERN	SYSTEM_$$_PTR$WORD$WORD$$FARPOINTER
EXTERN	__fpc_PrefixSeg
