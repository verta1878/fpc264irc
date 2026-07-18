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
	GLOBAL SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+6],1
		je	..@j13960
		jmp	..@j13961
..@j13960:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+8],ax
..@j13961:
		cmp	word [bp+8],0
		je	..@j13966
		jmp	..@j13967
..@j13966:
		jmp	..@j13958
..@j13967:
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
		jne	..@j13970
		push	word [bp+8]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	bx,word [bp+8]
		lea	ax,[bx+2]
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_assign
		cmp	word [bp+8],0
		jne	..@j13985
		jmp	..@j13984
..@j13985:
		cmp	word [bp+6],0
		jne	..@j13983
		jmp	..@j13984
..@j13983:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j13984:
..@j13970:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j13972
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
		jne	..@j13988
		cmp	word [bp+6],0
		jne	..@j13989
		jmp	..@j13990
..@j13989:
		push	word [bp+8]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j13990:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j13988:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j13995
		call	FPC_RAISE_NESTED
..@j13995:
		call	FPC_DONEEXCEPTION
		jmp	..@j13972
..@j13972:
..@j13958:
		mov	ax,word [bp+8]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_assign
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
