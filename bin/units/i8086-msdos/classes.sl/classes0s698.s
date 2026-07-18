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
	GLOBAL CLASSES_$$_FINDIDENTTOINT$POINTER$$TIDENTTOINT
CLASSES_$$_FINDIDENTTOINT$POINTER$$TIDENTTOINT:
		push	bp
		mov	bp,sp
		sub	sp,28
		push	word [U_$CLASSES_$$_INTCONSTLIST]
		call	CLASSES$_$TTHREADLIST_$__$$_LOCKLIST$$TLIST
		mov	word [bp-28],ax
		mov	ax,word [bp-28]
		mov	word [bp-26],ax
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
		jne	..@j14704
		push	word [bp-26]
		call	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
		dec	ax
		mov	word [bp-24],ax
		mov	word [bp-4],0
		mov	ax,word [bp-24]
		cmp	ax,word [bp-4]
		jl	..@j14712
		dec	word [bp-4]
	ALIGN 2
..@j14713:
		inc	word [bp-4]
		push	word [bp-26]
		push	word [bp-4]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		mov	word [bp-20],ax
		mov	ax,word [bp-20]
		mov	word [bp-22],ax
		push	word [bp-26]
		push	word [bp-4]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		mov	bx,ax
		mov	ax,word [bx+2]
		cmp	ax,word [bp+4]
		je	..@j14722
		jmp	..@j14723
..@j14722:
		mov	bx,word [bp-22]
		mov	ax,word [bx+4]
		mov	word [bp-2],ax
		jmp	..@j14706
..@j14723:
		mov	ax,word [bp-24]
		cmp	ax,word [bp-4]
		jg	..@j14713
..@j14712:
		mov	word [bp-2],0
..@j14704:
		call	FPC_POPADDRSTACK
		push	word [U_$CLASSES_$$_INTCONSTLIST]
		call	CLASSES$_$TTHREADLIST_$__$$_UNLOCKLIST
		pop	ax
		test	ax,ax
		je	..@j14705
		cmp	ax,2
		je	..@j14696
		call	FPC_RERAISE
..@j14706:
		pop	ax
		mov	dx,2
		push	dx
		jmp	..@j14704
..@j14705:
..@j14696:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	CLASSES$_$TTHREADLIST_$__$$_UNLOCKLIST
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
EXTERN	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	CLASSES$_$TTHREADLIST_$__$$_LOCKLIST$$TLIST
EXTERN	U_$CLASSES_$$_INTCONSTLIST
