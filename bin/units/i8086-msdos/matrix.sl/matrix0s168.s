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
	GLOBAL MATRIX$_$TVECTOR4_DOUBLE_$__$$_INIT$DOUBLE$DOUBLE$DOUBLE$DOUBLE$$LONGBOOL
MATRIX$_$TVECTOR4_DOUBLE_$__$$_INIT$DOUBLE$DOUBLE$DOUBLE$DOUBLE$$LONGBOOL:
		push	bp
		mov	bp,sp
		sub	sp,28
		push	word [bp+38]
		lea	ax,[bp+36]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,32
		push	ax
		call	fpc_help_constructor
		mov	word [bp+38],ax
		cmp	word [bp+38],0
		je	..@j1733
		jmp	..@j1734
..@j1733:
		jmp	..@j1723
..@j1734:
		mov	ax,1
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-6]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j1737
		mov	di,word [bp+38]
		push	ds
		pop	es
		lea	si,[bp+28]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+38]
		lea	di,[bx+8]
		push	ds
		pop	es
		lea	si,[bp+20]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+38]
		lea	di,[bx+16]
		push	ds
		pop	es
		lea	si,[bp+12]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+38]
		lea	di,[bx+24]
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
..@j1737:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j1739
		mov	ax,1
		push	ax
		lea	ax,[bp-26]
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j1749
		push	word [bp+38]
		lea	ax,[bp+36]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,32
		push	ax
		call	fpc_help_fail
		call	fpc_popaddrstack
		call	fpc_reraise
..@j1749:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j1756
		call	FPC_RAISE_NESTED
..@j1756:
		call	FPC_DONEEXCEPTION
		jmp	..@j1739
..@j1739:
..@j1723:
		mov	ax,word [bp+38]
		mov	sp,bp
		pop	bp
		ret	36
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	fpc_help_fail
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_help_constructor
