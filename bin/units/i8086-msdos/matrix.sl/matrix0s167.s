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
	GLOBAL MATRIX$_$TVECTOR4_DOUBLE_$__$$_INIT_ONE$$LONGBOOL
MATRIX$_$TVECTOR4_DOUBLE_$__$$_INIT_ONE$$LONGBOOL:
		push	bp
		mov	bp,sp
		sub	sp,28
		push	word [bp+6]
		lea	ax,[bp+4]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,32
		push	ax
		call	fpc_help_constructor
		mov	word [bp+6],ax
		cmp	word [bp+6],0
		je	..@j1699
		jmp	..@j1700
..@j1699:
		jmp	..@j1689
..@j1700:
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
		jne	..@j1703
		mov	bx,word [bp+6]
		wait fld1
		wait fstp	qword [bx]
		DB	09bh
		mov	bx,word [bp+6]
		wait fld1
		wait fstp	qword [bx+8]
		DB	09bh
		mov	bx,word [bp+6]
		wait fld1
		wait fstp	qword [bx+16]
		DB	09bh
		mov	bx,word [bp+6]
		wait fld1
		wait fstp	qword [bx+24]
		DB	09bh
..@j1703:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j1705
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
		jne	..@j1715
		push	word [bp+6]
		lea	ax,[bp+4]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,32
		push	ax
		call	fpc_help_fail
		call	fpc_popaddrstack
		call	fpc_reraise
..@j1715:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j1722
		call	FPC_RAISE_NESTED
..@j1722:
		call	FPC_DONEEXCEPTION
		jmp	..@j1705
..@j1705:
..@j1689:
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
