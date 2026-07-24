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
	GLOBAL CLASSES$_$TREMOVEREFERENCEVISITOR_$__$$_VISIT$TLINKEDLISTITEM$$BOOLEAN
CLASSES$_$TREMOVEREFERENCEVISITOR_$__$$_VISIT$TLINKEDLISTITEM$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,42
		mov	word [bp-40],0
		mov	ax,1
		push	ax
		lea	ax,[bp-22]
		push	ax
		lea	ax,[bp-16]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j11786
		mov	ax,word [bp+4]
		mov	word [bp-6],ax
		push	word [bp-6]
		call	CLASSES$_$TUNRESOLVEDINSTANCE_$__$$_ROOTUNRESOLVED$$TUNRESOLVEDREFERENCE
		mov	word [bp-8],ax
		mov	word [bp-10],0
		mov	ax,1
		push	ax
		lea	ax,[bp-36]
		push	ax
		lea	ax,[bp-30]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j11796
		jmp	..@j11800
	ALIGN 2
..@j11799:
		push	word [bp-8]
		mov	bx,word [bp+6]
		push	word [bx+6]
		call	CLASSES$_$TUNRESOLVEDREFERENCE_$__$$_ROOTMATCHES$TCOMPONENT$$BOOLEAN
		test	al,al
		jne	..@j11804
		jmp	..@j11803
..@j11804:
		mov	bx,word [bp+6]
		cmp	word [bx+4],0
		je	..@j11802
		jmp	..@j11809
..@j11809:
		mov	bx,word [bp+6]
		push	word [bx+4]
		lea	ax,[bp-40]
		push	ax
		mov	bx,word [bp-8]
		push	word [bx+8]
		call	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
		push	word [bp-40]
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j11803
		cmp	cx,0
		jne	..@j11803
		jmp	..@j11802
..@j11802:
		cmp	word [bp-10],0
		je	..@j11818
		jmp	..@j11819
..@j11818:
		mov	ax,word VMT_$CLASSES_$$_TFPLIST
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	word [bp-10],ax
..@j11819:
		push	word [bp-10]
		push	word [bp-8]
		call	CLASSES$_$TFPLIST_$__$$_ADD$POINTER$$SMALLINT
..@j11803:
		push	word [bp-8]
		call	CLASSES$_$TUNRESOLVEDREFERENCE_$__$$_NEXTREF$$TUNRESOLVEDREFERENCE
		mov	word [bp-8],ax
..@j11800:
		cmp	word [bp-8],0
		jne	..@j11799
		jmp	..@j11801
..@j11801:
		cmp	word [bp-10],0
		jne	..@j11834
		jmp	..@j11835
..@j11834:
		mov	bx,word [bp-10]
		mov	ax,word [bx+4]
		dec	ax
		mov	word [bp-42],ax
		mov	word [bp-4],0
		mov	ax,word [bp-42]
		cmp	ax,word [bp-4]
		jl	..@j11839
		dec	word [bp-4]
	ALIGN 2
..@j11840:
		inc	word [bp-4]
		mov	bx,word [bp-6]
		push	word [bx+6]
		push	word [bp-10]
		push	word [bp-4]
		call	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		mov	ax,1
		push	ax
		call	CLASSES$_$TLINKEDLIST_$__$$_REMOVEITEM$TLINKEDLISTITEM$BOOLEAN
		mov	ax,word [bp-42]
		cmp	ax,word [bp-4]
		jg	..@j11840
..@j11839:
..@j11835:
		mov	bx,word [bp-6]
		mov	bx,word [bx+6]
		cmp	word [bx+4],0
		je	..@j11851
		jmp	..@j11852
..@j11851:
		mov	bx,word [bp+6]
		cmp	word [bx+2],0
		je	..@j11853
		jmp	..@j11854
..@j11853:
		mov	ax,word VMT_$CLASSES_$$_TFPLIST
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	bx,word [bp+6]
		mov	word [bx+2],ax
..@j11854:
		mov	bx,word [bp+6]
		push	word [bx+2]
		push	word [bp-6]
		call	CLASSES$_$TFPLIST_$__$$_ADD$POINTER$$SMALLINT
..@j11852:
..@j11796:
		call	FPC_POPADDRSTACK
		push	word [bp-10]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		pop	ax
		test	ax,ax
		je	..@j11797
		call	FPC_RERAISE
..@j11797:
		mov	byte [bp-1],1
..@j11786:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-40]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j11787
		call	FPC_RERAISE
..@j11787:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_RERAISE
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TLINKEDLIST_$__$$_REMOVEITEM$TLINKEDLISTITEM$BOOLEAN
EXTERN	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
EXTERN	CLASSES$_$TUNRESOLVEDREFERENCE_$__$$_NEXTREF$$TUNRESOLVEDREFERENCE
EXTERN	CLASSES$_$TFPLIST_$__$$_ADD$POINTER$$SMALLINT
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	VMT_$CLASSES_$$_TFPLIST
EXTERN	fpc_ansistr_compare_equal
EXTERN	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
EXTERN	CLASSES$_$TUNRESOLVEDREFERENCE_$__$$_ROOTMATCHES$TCOMPONENT$$BOOLEAN
EXTERN	CLASSES$_$TUNRESOLVEDINSTANCE_$__$$_ROOTUNRESOLVED$$TUNRESOLVEDREFERENCE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
