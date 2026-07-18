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
	GLOBAL MATRIX$_$TVECTOR2_EXTENDED_$__$$_INIT$EXTENDED$EXTENDED$$LONGBOOL
MATRIX$_$TVECTOR2_EXTENDED_$__$$_INIT$EXTENDED$EXTENDED$$LONGBOOL:
		push	bp
		mov	bp,sp
		sub	sp,28
		push	word [bp+26]
		lea	ax,[bp+24]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,20
		push	ax
		call	fpc_help_constructor
		mov	word [bp+26],ax
		cmp	word [bp+26],0
		je	..@j481
		jmp	..@j482
..@j481:
		jmp	..@j471
..@j482:
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
		jne	..@j485
		mov	di,word [bp+26]
		push	ds
		pop	es
		lea	si,[bp+14]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+26]
		lea	di,[bx+10]
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,5
		rep
		movsw
..@j485:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j487
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
		jne	..@j493
		push	word [bp+26]
		lea	ax,[bp+24]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,20
		push	ax
		call	fpc_help_fail
		call	fpc_popaddrstack
		call	fpc_reraise
..@j493:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j500
		call	FPC_RAISE_NESTED
..@j500:
		call	FPC_DONEEXCEPTION
		jmp	..@j487
..@j487:
..@j471:
		mov	ax,word [bp+26]
		mov	sp,bp
		pop	bp
		ret	24
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	fpc_help_fail
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_help_constructor
