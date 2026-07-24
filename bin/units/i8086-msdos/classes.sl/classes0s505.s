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
	GLOBAL CLASSES_$$_GLOBALFIXUPREFERENCES
CLASSES_$$_GLOBALFIXUPREFERENCES:
		push	bp
		mov	bp,sp
		sub	sp,14
		cmp	word [U_$CLASSES_$$_NEEDRESOLVING],0
		je	..@j11308
		jmp	..@j11309
..@j11308:
		jmp	..@j11306
..@j11309:
		push	word [U_$CLASSES_$$_GLOBALNAMESPACE]
		mov	bx,word [U_$CLASSES_$$_GLOBALNAMESPACE]
		mov	bx,word [bx]
		mov	ax,word [bx+10]
		call	ax
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
		jne	..@j11312
		mov	ax,word VMT_$CLASSES_$$_TRESOLVEREFERENCEVISITOR
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		push	ax
		call	CLASSES_$$_VISITRESOLVELIST$TLINKEDLISTVISITOR
..@j11312:
		call	FPC_POPADDRSTACK
		push	word [U_$CLASSES_$$_GLOBALNAMESPACE]
		mov	bx,word [U_$CLASSES_$$_GLOBALNAMESPACE]
		mov	bx,word [bx]
		mov	ax,word [bx+12]
		call	ax
		pop	ax
		test	ax,ax
		je	..@j11313
		call	FPC_RERAISE
..@j11313:
..@j11306:
		mov	sp,bp
		pop	bp
		ret
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES_$$_VISITRESOLVELIST$TLINKEDLISTVISITOR
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	VMT_$CLASSES_$$_TRESOLVEREFERENCEVISITOR
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	U_$CLASSES_$$_GLOBALNAMESPACE
EXTERN	U_$CLASSES_$$_NEEDRESOLVING
