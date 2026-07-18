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
	GLOBAL CLASSES$_$TTHREADLIST_$__$$_ADD$POINTER
CLASSES$_$TTHREADLIST_$__$$_ADD$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,14
		push	word [bp+6]
		call	CLASSES$_$TTHREADLIST_$__$$_LOCKLIST$$TLIST
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
		jne	..@j6693
		mov	bx,word [bp+6]
		mov	dx,word [bx+4]
		mov	ax,0
		cmp	ax,0
		jne	..@j6698
		cmp	dx,1
		jne	..@j6698
		jmp	..@j6696
..@j6698:
		mov	bx,word [bp+6]
		push	word [bx+2]
		push	word [bp+4]
		call	CLASSES$_$TLIST_$__$$_INDEXOF$POINTER$$SMALLINT
		cmp	ax,-1
		je	..@j6696
		jmp	..@j6697
..@j6696:
		mov	bx,word [bp+6]
		push	word [bx+2]
		push	word [bp+4]
		call	CLASSES$_$TLIST_$__$$_ADD$POINTER$$SMALLINT
		jmp	..@j6707
..@j6697:
		mov	bx,word [bp+6]
		mov	dx,word [bx+4]
		mov	ax,0
		cmp	ax,0
		jne	..@j6709
		cmp	dx,2
		jne	..@j6709
		jmp	..@j6708
..@j6708:
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	ax,word [bx]
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SDUPLICATEITEM+2]
		push	word [bp+4]
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+56]
		call	ax
..@j6709:
..@j6707:
..@j6693:
		call	FPC_POPADDRSTACK
		push	word [bp+6]
		call	CLASSES$_$TTHREADLIST_$__$$_UNLOCKLIST
		pop	ax
		test	ax,ax
		je	..@j6694
		call	FPC_RERAISE
..@j6694:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	CLASSES$_$TTHREADLIST_$__$$_UNLOCKLIST
EXTERN	FPC_POPADDRSTACK
EXTERN	RESSTR_$RTLCONSTS_$$_SDUPLICATEITEM
EXTERN	CLASSES$_$TLIST_$__$$_ADD$POINTER$$SMALLINT
EXTERN	CLASSES$_$TLIST_$__$$_INDEXOF$POINTER$$SMALLINT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	CLASSES$_$TTHREADLIST_$__$$_LOCKLIST$$TLIST
