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
	GLOBAL CLASSES$_$TDATAMODULE_$__$$_DOCREATE
CLASSES$_$TDATAMODULE_$__$$_DOCREATE:
		push	bp
		mov	bp,sp
		sub	sp,28
		mov	bx,word [bp+4]
		cmp	word [bx+46],0
		jne	..@j13490
		jmp	..@j13491
..@j13490:
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
		jne	..@j13494
		mov	bx,word [bp+4]
		push	word [bx+48]
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	ax,word [bx+46]
		call	ax
..@j13494:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j13496
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
		jne	..@j13502
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+112]
		call	ax
		test	al,al
		je	..@j13503
		jmp	..@j13504
..@j13503:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j13504:
..@j13502:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j13507
		call	FPC_RAISE_NESTED
..@j13507:
		call	FPC_DONEEXCEPTION
		jmp	..@j13496
..@j13496:
..@j13491:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
