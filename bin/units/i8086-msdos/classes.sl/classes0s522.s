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
	GLOBAL CLASSES$_$TREDIRECTREFERENCEVISITOR_$__$$_CREATE$crc116E8328
CLASSES$_$TREDIRECTREFERENCEVISITOR_$__$$_CREATE$crc116E8328:
		push	bp
		mov	bp,sp
		sub	sp,30
		mov	word [bp-30],0
		cmp	word [bp+10],1
		je	..@j11664
		jmp	..@j11665
..@j11664:
		push	word [bp+12]
		mov	bx,word [bp+12]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+12],ax
..@j11665:
		cmp	word [bp+12],0
		je	..@j11670
		jmp	..@j11671
..@j11670:
		jmp	..@j11662
..@j11671:
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
		jne	..@j11674
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
		jne	..@j11678
		mov	bx,word [bp+12]
		mov	ax,word [bp+8]
		mov	word [bx+6],ax
		mov	bx,word [bp+12]
		lea	ax,[bx+2]
		push	ax
		lea	ax,[bp-30]
		push	ax
		push	word [bp+6]
		call	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
		push	word [bp-30]
		call	fpc_ansistr_assign
		mov	bx,word [bp+12]
		lea	ax,[bx+4]
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_assign
..@j11678:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-30]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j11679
		call	FPC_RERAISE
..@j11679:
		cmp	word [bp+12],0
		jne	..@j11696
		jmp	..@j11695
..@j11696:
		cmp	word [bp+10],0
		jne	..@j11694
		jmp	..@j11695
..@j11694:
		push	word [bp+12]
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j11695:
..@j11674:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j11676
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
		jne	..@j11699
		cmp	word [bp+10],0
		jne	..@j11700
		jmp	..@j11701
..@j11700:
		push	word [bp+12]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j11701:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j11699:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j11706
		call	FPC_RAISE_NESTED
..@j11706:
		call	FPC_DONEEXCEPTION
		jmp	..@j11676
..@j11676:
..@j11662:
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
