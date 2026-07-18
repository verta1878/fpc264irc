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
	GLOBAL CLASSES_$$_FINDINTTOIDENT$POINTER$$TINTTOIDENT
CLASSES_$$_FINDINTTOIDENT$POINTER$$TINTTOIDENT:
		push	bp
		mov	bp,sp
		sub	sp,24
		push	word [U_$CLASSES_$$_INTCONSTLIST]
		call	CLASSES$_$TTHREADLIST_$__$$_LOCKLIST$$TLIST
		mov	word [bp-24],ax
		mov	ax,word [bp-24]
		mov	word [bp-22],ax
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
		jne	..@j14670
		push	word [bp-22]
		call	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
		dec	ax
		mov	word [bp-20],ax
		mov	word [bp-4],0
		mov	ax,word [bp-20]
		cmp	ax,word [bp-4]
		jl	..@j14678
		dec	word [bp-4]
	ALIGN 2
..@j14679:
		inc	word [bp-4]
		push	word [bp-22]
		push	word [bp-4]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		mov	bx,ax
		mov	ax,word [bx+2]
		cmp	ax,word [bp+4]
		je	..@j14680
		jmp	..@j14681
..@j14680:
		push	word [bp-22]
		push	word [bp-4]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		mov	bx,ax
		mov	ax,word [bx+6]
		mov	word [bp-2],ax
		jmp	..@j14672
..@j14681:
		mov	ax,word [bp-20]
		cmp	ax,word [bp-4]
		jg	..@j14679
..@j14678:
		mov	word [bp-2],0
..@j14670:
		call	FPC_POPADDRSTACK
		push	word [U_$CLASSES_$$_INTCONSTLIST]
		call	CLASSES$_$TTHREADLIST_$__$$_UNLOCKLIST
		pop	ax
		test	ax,ax
		je	..@j14671
		cmp	ax,2
		je	..@j14662
		call	FPC_RERAISE
..@j14672:
		pop	ax
		mov	dx,2
		push	dx
		jmp	..@j14670
..@j14671:
..@j14662:
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
