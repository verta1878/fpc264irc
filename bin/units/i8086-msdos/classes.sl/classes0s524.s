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
	GLOBAL CLASSES$_$TREMOVEREFERENCEVISITOR_$__$$_CREATE$TCOMPONENT$ANSISTRING$$TREMOVEREFERENCEVISITOR
CLASSES$_$TREMOVEREFERENCEVISITOR_$__$$_CREATE$TCOMPONENT$ANSISTRING$$TREMOVEREFERENCEVISITOR:
		push	bp
		mov	bp,sp
		sub	sp,30
		mov	word [bp-30],0
		cmp	word [bp+8],1
		je	..@j11745
		jmp	..@j11746
..@j11745:
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+10],ax
..@j11746:
		cmp	word [bp+10],0
		je	..@j11751
		jmp	..@j11752
..@j11751:
		jmp	..@j11743
..@j11752:
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
		jne	..@j11755
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
		jne	..@j11759
		mov	bx,word [bp+10]
		mov	ax,word [bp+6]
		mov	word [bx+6],ax
		mov	bx,word [bp+10]
		lea	ax,[bx+4]
		push	ax
		lea	ax,[bp-30]
		push	ax
		push	word [bp+4]
		call	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
		push	word [bp-30]
		call	fpc_ansistr_assign
..@j11759:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-30]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j11760
		call	FPC_RERAISE
..@j11760:
		cmp	word [bp+10],0
		jne	..@j11773
		jmp	..@j11772
..@j11773:
		cmp	word [bp+8],0
		jne	..@j11771
		jmp	..@j11772
..@j11771:
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j11772:
..@j11755:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j11757
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
		jne	..@j11776
		cmp	word [bp+8],0
		jne	..@j11777
		jmp	..@j11778
..@j11777:
		push	word [bp+10]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j11778:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j11776:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j11783
		call	FPC_RAISE_NESTED
..@j11783:
		call	FPC_DONEEXCEPTION
		jmp	..@j11757
..@j11757:
..@j11743:
		mov	ax,word [bp+10]
		mov	sp,bp
		pop	bp
		ret	8
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
