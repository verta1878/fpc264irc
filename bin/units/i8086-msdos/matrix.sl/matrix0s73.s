BITS 16
CPU 8086
SECTION text use16 class=code
SECTION rodata class=data
SECTION data class=data
SECTION fpc class=data
SECTION bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION text

SECTION text
	ALIGN 2
	GLOBAL MATRIX$_$TVECTOR3_SINGLE_$__$$_INIT$SINGLE$SINGLE$SINGLE$$LONGBOOL
MATRIX$_$TVECTOR3_SINGLE_$__$$_INIT$SINGLE$SINGLE$SINGLE$$LONGBOOL:
		push	bp
		mov	bp,sp
		sub	sp,28
		push	word [bp+18]
		lea	ax,[bp+16]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,12
		push	ax
		call	fpc_help_constructor
		mov	word [bp+18],ax
		cmp	word [bp+18],0
		je	..@j689
		jmp	..@j690
..@j689:
		jmp	..@j679
..@j690:
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
		jne	..@j693
		mov	bx,word [bp+18]
		mov	ax,word [bp+12]
		mov	word [bx],ax
		mov	ax,word [bp+14]
		mov	word [bx+2],ax
		mov	bx,word [bp+18]
		mov	ax,word [bp+8]
		mov	word [bx+4],ax
		mov	ax,word [bp+10]
		mov	word [bx+6],ax
		mov	bx,word [bp+18]
		mov	ax,word [bp+4]
		mov	word [bx+8],ax
		mov	ax,word [bp+6]
		mov	word [bx+10],ax
..@j693:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j695
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
		jne	..@j703
		push	word [bp+18]
		lea	ax,[bp+16]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,12
		push	ax
		call	fpc_help_fail
		call	fpc_popaddrstack
		call	fpc_reraise
..@j703:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j710
		call	FPC_RAISE_NESTED
..@j710:
		call	FPC_DONEEXCEPTION
		jmp	..@j695
..@j695:
..@j679:
		mov	ax,word [bp+18]
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	fpc_help_fail
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_help_constructor
