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
	GLOBAL SYSTEM_$$_INTERNALSETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
SYSTEM_$$_INTERNALSETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	word [bp-16],0
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
		jne	..@j10671
		cmp	byte [bp+4],0
		jne	..@j10673
		jmp	..@j10674
..@j10673:
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx]
		push	word [bp+6]
		call	FPC_ANSISTR_TO_ANSISTR
		push	word [bp-16]
		call	fpc_ansistr_assign
		jmp	..@j10685
..@j10674:
		mov	ax,word [bp+8]
		push	ax
		call	FPC_ANSISTR_UNIQUE
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bp+6]
		mov	word [bx-8],ax
..@j10685:
..@j10671:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-16]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j10672
		call	FPC_RERAISE
..@j10672:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_ANSISTR_UNIQUE
EXTERN	fpc_ansistr_assign
EXTERN	FPC_ANSISTR_TO_ANSISTR
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
