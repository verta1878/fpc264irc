BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TPARSER_$__$$_TOKENWIDESTRING$$WIDESTRING
CLASSES$_$TPARSER_$__$$_TOKENWIDESTRING$$WIDESTRING:
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
		jne	..@j3833
		mov	bx,word [bp+6]
		cmp	byte [bx+15],5
		je	..@j3835
		jmp	..@j3836
..@j3835:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+19]
		call	fpc_unicodestr_assign
		jmp	..@j3841
..@j3836:
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+17]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-16]
		call	fpc_unicodestr_assign
..@j3841:
..@j3833:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-16]
		push	ax
		call	fpc_unicodestr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j3834
		call	FPC_RERAISE
..@j3834:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_unicodestr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_to_unicodestr
EXTERN	fpc_unicodestr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
