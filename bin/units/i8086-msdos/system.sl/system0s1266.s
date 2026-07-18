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
	GLOBAL SYSTEM_$$_GETPROGRAMNAME$$SHORTSTRING
SYSTEM_$$_GETPROGRAMNAME$$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,262
		cmp	word [dos_version],768
		jb	..@j26507
		jmp	..@j26508
..@j26507:
		mov	bx,word [bp+4]
		mov	byte [bx],0
		jmp	..@j26505
..@j26508:
		push	word [__fpc_PrefixSeg]
		mov	ax,44
		push	ax
		call	SYSTEM_$$_PTR$WORD$WORD$$FARPOINTER
		mov	bx,ax
		mov	es,dx
		mov	ax,word [es:bx]
		mov	word [bp-2],ax
		mov	word [bp-4],1
	ALIGN 2
..@j26519:
		push	word [bp-2]
		mov	ax,word [bp-4]
		mov	dx,0
		sub	ax,1
		sbb	dx,0
		push	ax
		call	SYSTEM_$$_PTR$WORD$WORD$$FARPOINTER
		mov	bx,ax
		mov	es,dx
		mov	al,byte [es:bx]
		mov	byte [bp-5],al
		push	word [bp-2]
		push	word [bp-4]
		call	SYSTEM_$$_PTR$WORD$WORD$$FARPOINTER
		mov	bx,ax
		mov	es,dx
		mov	al,byte [es:bx]
		mov	byte [bp-6],al
		cmp	byte [bp-5],0
		je	..@j26536
		jmp	..@j26535
..@j26536:
		cmp	byte [bp-6],0
		je	..@j26534
		jmp	..@j26535
..@j26534:
		add	word [bp-4],3
		mov	bx,word [bp+4]
		mov	byte [bx],0
	ALIGN 2
..@j26539:
		push	word [bp-2]
		push	word [bp-4]
		call	SYSTEM_$$_PTR$WORD$WORD$$FARPOINTER
		mov	bx,ax
		mov	es,dx
		mov	al,byte [es:bx]
		mov	byte [bp-5],al
		cmp	byte [bp-5],0
		jne	..@j26548
		jmp	..@j26549
..@j26548:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word [bp+4]
		push	ax
		mov	al,byte [bp-5]
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		mov	dx,0
		or	ax,1
		mov	word [bp-262],ax
		lea	ax,[bp-262]
		push	ax
		call	fpc_shortstr_concat
..@j26549:
		inc	word [bp-4]
		cmp	word [bp-4],0
		je	..@j26558
		jmp	..@j26559
..@j26558:
		mov	bx,word [bp+4]
		mov	byte [bx],0
		jmp	..@j26505
..@j26559:
		cmp	byte [bp-5],0
		je	..@j26541
		jmp	..@j26539
..@j26541:
		jmp	..@j26505
..@j26535:
		inc	word [bp-4]
		cmp	word [bp-4],0
		je	..@j26562
		jmp	..@j26563
..@j26562:
		mov	bx,word [bp+4]
		mov	byte [bx],0
		jmp	..@j26505
..@j26563:
		jmp	..@j26519
..@j26505:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_shortstr_concat
EXTERN	SYSTEM_$$_PTR$WORD$WORD$$FARPOINTER
EXTERN	__fpc_PrefixSeg
EXTERN	dos_version
