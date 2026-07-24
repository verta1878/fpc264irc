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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_INDEXOF$ANSISTRING$$SMALLINT
CLASSES$_$TSTRINGS_$__$$_INDEXOF$ANSISTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,18
		mov	word [bp-18],0
		mov	ax,1
		push	ax
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-8]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j8541
		mov	word [bp-2],0
		jmp	..@j8546
	ALIGN 2
..@j8545:
		mov	ax,word [bp-2]
		inc	ax
		mov	word [bp-2],ax
..@j8546:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		cmp	ax,word [bp-2]
		jg	..@j8550
		jmp	..@j8547
..@j8550:
		push	word [bp+6]
		push	word [bp+6]
		lea	ax,[bp-18]
		push	ax
		push	word [bp-2]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		push	word [bp-18]
		push	word [bp+4]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+80]
		call	ax
		test	ax,ax
		jne	..@j8545
		jmp	..@j8547
..@j8547:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		cmp	ax,word [bp-2]
		je	..@j8565
		jmp	..@j8566
..@j8565:
		mov	word [bp-2],-1
..@j8566:
..@j8541:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-18]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j8542
		call	FPC_RERAISE
..@j8542:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
