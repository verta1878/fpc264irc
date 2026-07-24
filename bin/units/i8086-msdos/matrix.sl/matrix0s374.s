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
	GLOBAL MATRIX$_$TMATRIX4_SINGLE_$__$$_INIT_ZERO$$LONGBOOL
MATRIX$_$TMATRIX4_SINGLE_$__$$_INIT_ZERO$$LONGBOOL:
		push	bp
		mov	bp,sp
		sub	sp,28
		push	word [bp+6]
		lea	ax,[bp+4]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,64
		push	ax
		call	fpc_help_constructor
		mov	word [bp+6],ax
		cmp	word [bp+6],0
		je	..@j4693
		jmp	..@j4694
..@j4693:
		jmp	..@j4683
..@j4694:
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
		jne	..@j4697
		mov	ax,word [bp+6]
		push	ax
		mov	ax,64
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
..@j4697:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j4699
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
		jne	..@j4707
		push	word [bp+6]
		lea	ax,[bp+4]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,64
		push	ax
		call	fpc_help_fail
		call	fpc_popaddrstack
		call	fpc_reraise
..@j4707:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j4714
		call	FPC_RAISE_NESTED
..@j4714:
		call	FPC_DONEEXCEPTION
		jmp	..@j4699
..@j4699:
..@j4683:
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
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_help_constructor
