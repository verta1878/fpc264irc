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
	GLOBAL CLASSES$_$TREDIRECTREFERENCEVISITOR_$__$$_VISIT$TLINKEDLISTITEM$$BOOLEAN
CLASSES$_$TREDIRECTREFERENCEVISITOR_$__$$_VISIT$TLINKEDLISTITEM$$BOOLEAN:
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
		jne	..@j11709
		push	word [bp+4]
		call	CLASSES$_$TUNRESOLVEDINSTANCE_$__$$_ROOTUNRESOLVED$$TUNRESOLVEDREFERENCE
		mov	word [bp-4],ax
		jmp	..@j11716
	ALIGN 2
..@j11715:
		push	word [bp-4]
		mov	bx,word [bp+6]
		push	word [bx+6]
		call	CLASSES$_$TUNRESOLVEDREFERENCE_$__$$_ROOTMATCHES$TCOMPONENT$$BOOLEAN
		test	al,al
		jne	..@j11720
		jmp	..@j11719
..@j11720:
		mov	bx,word [bp+6]
		push	word [bx+2]
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
		jne	..@j11719
		cmp	cx,0
		jne	..@j11719
		jmp	..@j11718
..@j11718:
		mov	bx,word [bp-4]
		lea	ax,[bx+8]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+4]
		call	fpc_ansistr_assign
..@j11719:
		push	word [bp-4]
		call	CLASSES$_$TUNRESOLVEDREFERENCE_$__$$_NEXTREF$$TUNRESOLVEDREFERENCE
		mov	word [bp-4],ax
..@j11716:
		cmp	word [bp-4],0
		jne	..@j11715
		jmp	..@j11717
..@j11717:
		mov	byte [bp-1],1
..@j11709:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-20]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j11710
		call	FPC_RERAISE
..@j11710:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TUNRESOLVEDREFERENCE_$__$$_NEXTREF$$TUNRESOLVEDREFERENCE
EXTERN	fpc_ansistr_assign
EXTERN	fpc_ansistr_compare_equal
EXTERN	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
EXTERN	CLASSES$_$TUNRESOLVEDREFERENCE_$__$$_ROOTMATCHES$TCOMPONENT$$BOOLEAN
EXTERN	CLASSES$_$TUNRESOLVEDINSTANCE_$__$$_ROOTUNRESOLVED$$TUNRESOLVEDREFERENCE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
