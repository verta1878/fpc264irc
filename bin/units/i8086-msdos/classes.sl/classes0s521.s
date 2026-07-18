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
	GLOBAL CLASSES$_$TREFERENCEINSTANCESVISITOR_$__$$_VISIT$TLINKEDLISTITEM$$BOOLEAN
CLASSES$_$TREFERENCEINSTANCESVISITOR_$__$$_VISIT$TLINKEDLISTITEM$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	word [bp-20],0
		mov	ax,1
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-10]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j11626
		push	word [bp+4]
		call	CLASSES$_$TUNRESOLVEDINSTANCE_$__$$_ROOTUNRESOLVED$$TUNRESOLVEDREFERENCE
		mov	word [bp-4],ax
		jmp	..@j11633
	ALIGN 2
..@j11632:
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		mov	ax,word [bx+6]
		cmp	ax,word [si+4]
		je	..@j11637
		jmp	..@j11636
..@j11637:
		mov	bx,word [bp+6]
		push	word [bx+4]
		lea	ax,[bp-20]
		push	ax
		mov	bx,word [bp-4]
		push	word [bx+8]
		call	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
		push	word [bp-20]
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j11636
		cmp	cx,0
		jne	..@j11636
		jmp	..@j11635
..@j11635:
		mov	bx,word [bp+6]
		push	word [bx+2]
		mov	bx,word [bp-4]
		push	word [bx+10]
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+100]
		call	ax
		cmp	ax,-1
		je	..@j11646
		jmp	..@j11647
..@j11646:
		mov	bx,word [bp+6]
		push	word [bx+2]
		mov	bx,word [bp-4]
		push	word [bx+10]
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+82]
		call	ax
..@j11647:
..@j11636:
		push	word [bp-4]
		call	CLASSES$_$TUNRESOLVEDREFERENCE_$__$$_NEXTREF$$TUNRESOLVEDREFERENCE
		mov	word [bp-4],ax
..@j11633:
		cmp	word [bp-4],0
		jne	..@j11632
		jmp	..@j11634
..@j11634:
		mov	byte [bp-1],1
..@j11626:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-20]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j11627
		call	FPC_RERAISE
..@j11627:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TUNRESOLVEDREFERENCE_$__$$_NEXTREF$$TUNRESOLVEDREFERENCE
EXTERN	fpc_ansistr_compare_equal
EXTERN	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
EXTERN	CLASSES$_$TUNRESOLVEDINSTANCE_$__$$_ROOTUNRESOLVED$$TUNRESOLVEDREFERENCE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
