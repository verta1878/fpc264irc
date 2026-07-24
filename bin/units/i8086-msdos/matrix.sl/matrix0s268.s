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
	GLOBAL MATRIX$_$TMATRIX2_EXTENDED_$__$$_INIT$EXTENDED$EXTENDED$EXTENDED$EXTENDED$$LONGBOOL
MATRIX$_$TMATRIX2_EXTENDED_$__$$_INIT$EXTENDED$EXTENDED$EXTENDED$EXTENDED$$LONGBOOL:
		push	bp
		mov	bp,sp
		sub	sp,28
		push	word [bp+46]
		lea	ax,[bp+44]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,40
		push	ax
		call	fpc_help_constructor
		mov	word [bp+46],ax
		cmp	word [bp+46],0
		je	..@j2931
		jmp	..@j2932
..@j2931:
		jmp	..@j2921
..@j2932:
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
		jne	..@j2935
		mov	di,word [bp+46]
		push	ds
		pop	es
		lea	si,[bp+34]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+46]
		lea	di,[bx+10]
		push	ds
		pop	es
		lea	si,[bp+24]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+46]
		lea	di,[bx+20]
		push	ds
		pop	es
		lea	si,[bp+14]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+46]
		lea	di,[bx+30]
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,5
		rep
		movsw
..@j2935:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j2937
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
		jne	..@j2947
		push	word [bp+46]
		lea	ax,[bp+44]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,40
		push	ax
		call	fpc_help_fail
		call	fpc_popaddrstack
		call	fpc_reraise
..@j2947:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j2954
		call	FPC_RAISE_NESTED
..@j2954:
		call	FPC_DONEEXCEPTION
		jmp	..@j2937
..@j2937:
..@j2921:
		mov	ax,word [bp+46]
		mov	sp,bp
		pop	bp
		ret	44
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	fpc_help_fail
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_help_constructor
