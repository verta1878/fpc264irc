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
	GLOBAL MATRIX$_$TVECTOR2_SINGLE_$__$$_INIT_ONE$$LONGBOOL
MATRIX$_$TVECTOR2_SINGLE_$__$$_INIT_ONE$$LONGBOOL:
		push	bp
		mov	bp,sp
		sub	sp,28
		push	word [bp+6]
		lea	ax,[bp+4]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,8
		push	ax
		call	fpc_help_constructor
		mov	word [bp+6],ax
		cmp	word [bp+6],0
		je	..@j43
		jmp	..@j44
..@j43:
		jmp	..@j33
..@j44:
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
		jne	..@j47
		mov	bx,word [bp+6]
		wait fld1
		wait fstp	dword [bx]
		DB	09bh
		mov	bx,word [bp+6]
		wait fld1
		wait fstp	dword [bx+4]
		DB	09bh
..@j47:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j49
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
		jne	..@j55
		push	word [bp+6]
		lea	ax,[bp+4]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,8
		push	ax
		call	fpc_help_fail
		call	fpc_popaddrstack
		call	fpc_reraise
..@j55:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j62
		call	FPC_RAISE_NESTED
..@j62:
		call	FPC_DONEEXCEPTION
		jmp	..@j49
..@j49:
..@j33:
		mov	ax,word [bp+6]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	fpc_help_fail
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_help_constructor
