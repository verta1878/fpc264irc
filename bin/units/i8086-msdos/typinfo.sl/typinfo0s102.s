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
	GLOBAL TYPINFO$_$TPROCEDURESIGNATURE_$__$$_GETPARAM$SMALLINT$$PPROCEDUREPARAM
TYPINFO$_$TPROCEDURESIGNATURE_$__$$_GETPARAM$SMALLINT$$PPROCEDUREPARAM:
		push	bp
		mov	bp,sp
		sub	sp,4
		cmp	word [bp+4],0
		jl	..@j2607
		jmp	..@j2609
..@j2609:
		mov	bx,word [bp+6]
		mov	al,byte [bx+4]
		mov	ah,0
		cmp	ax,word [bp+4]
		jle	..@j2607
		jmp	..@j2608
..@j2607:
		mov	word [bp-2],0
		jmp	..@j2605
..@j2608:
		mov	ax,word [bp+6]
		add	ax,5
		mov	word [bp-2],ax
		jmp	..@j2615
	ALIGN 2
..@j2614:
		mov	bx,word [bp-2]
		mov	al,byte [bx+3]
		mov	ah,0
		inc	ax
		mov	bx,word [bp-2]
		lea	dx,[bx+3]
		add	dx,ax
		mov	word [bp-4],dx
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		dec	word [bp+4]
..@j2615:
		cmp	word [bp+4],0
		jg	..@j2614
		jmp	..@j2616
..@j2616:
..@j2605:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
