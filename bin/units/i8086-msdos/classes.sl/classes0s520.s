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
	GLOBAL CLASSES$_$TREFERENCEINSTANCESVISITOR_$__$$_CREATE$crc9BDF2D93
CLASSES$_$TREFERENCEINSTANCESVISITOR_$__$$_CREATE$crc9BDF2D93:
		push	bp
		mov	bp,sp
		sub	sp,30
		mov	word [bp-30],0
		cmp	word [bp+10],1
		je	..@j11583
		jmp	..@j11584
..@j11583:
		push	word [bp+12]
		mov	bx,word [bp+12]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+12],ax
..@j11584:
		cmp	word [bp+12],0
		je	..@j11589
		jmp	..@j11590
..@j11589:
		jmp	..@j11581
..@j11590:
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
		jne	..@j11593
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
		jne	..@j11597
		mov	bx,word [bp+12]
		mov	ax,word [bp+8]
		mov	word [bx+6],ax
		mov	bx,word [bp+12]
		lea	ax,[bx+4]
		push	ax
		lea	ax,[bp-30]
		push	ax
		push	word [bp+6]
		call	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
		push	word [bp-30]
		call	fpc_ansistr_assign
		mov	bx,word [bp+12]
		mov	ax,word [bp+4]
		mov	word [bx+2],ax
..@j11597:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-30]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j11598
		call	FPC_RERAISE
..@j11598:
		cmp	word [bp+12],0
		jne	..@j11613
		jmp	..@j11612
..@j11613:
		cmp	word [bp+10],0
		jne	..@j11611
		jmp	..@j11612
..@j11611:
		push	word [bp+12]
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j11612:
..@j11593:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j11595
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
		jne	..@j11616
		cmp	word [bp+10],0
		jne	..@j11617
		jmp	..@j11618
..@j11617:
		push	word [bp+12]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j11618:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j11616:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j11623
		call	FPC_RAISE_NESTED
..@j11623:
		call	FPC_DONEEXCEPTION
		jmp	..@j11595
..@j11595:
..@j11581:
		mov	ax,word [bp+12]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_assign
EXTERN	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
