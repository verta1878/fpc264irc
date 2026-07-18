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
	GLOBAL CLASSES_$$_GLOBALIDENTTOINT$ANSISTRING$LONGINT$$BOOLEAN
CLASSES_$$_GLOBALIDENTTOINT$ANSISTRING$LONGINT$$BOOLEAN:
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
		jne	..@j14778
		push	word [bp-22]
		call	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
		dec	ax
		mov	word [bp-20],ax
		mov	word [bp-4],0
		mov	ax,word [bp-20]
		cmp	ax,word [bp-4]
		jl	..@j14786
		dec	word [bp-4]
	ALIGN 2
..@j14787:
		inc	word [bp-4]
		push	word [bp+6]
		mov	ax,word [bp+4]
		push	ax
		push	word [bp-22]
		push	word [bp-4]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		mov	bx,ax
		mov	ax,word [bx+4]
		call	ax
		test	al,al
		jne	..@j14788
		jmp	..@j14789
..@j14788:
		mov	byte [bp-1],1
		jmp	..@j14780
..@j14789:
		mov	ax,word [bp-20]
		cmp	ax,word [bp-4]
		jg	..@j14787
..@j14786:
		mov	byte [bp-1],0
..@j14778:
		call	FPC_POPADDRSTACK
		push	word [U_$CLASSES_$$_INTCONSTLIST]
		call	CLASSES$_$TTHREADLIST_$__$$_UNLOCKLIST
		pop	ax
		test	ax,ax
		je	..@j14779
		cmp	ax,2
		je	..@j14770
		call	FPC_RERAISE
..@j14780:
		pop	ax
		mov	dx,2
		push	dx
		jmp	..@j14778
..@j14779:
..@j14770:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	CLASSES$_$TTHREADLIST_$__$$_UNLOCKLIST
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
EXTERN	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	CLASSES$_$TTHREADLIST_$__$$_LOCKLIST$$TLIST
EXTERN	U_$CLASSES_$$_INTCONSTLIST
