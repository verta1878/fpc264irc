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
	GLOBAL SYSUTILS$_$EXCEPTION_$__$$_CREATERES$PANSISTRING$$EXCEPTION
SYSUTILS$_$EXCEPTION_$__$$_CREATERES$PANSISTRING$$EXCEPTION:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+6],1
		je	..@j14045
		jmp	..@j14046
..@j14045:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+8],ax
..@j14046:
		cmp	word [bp+8],0
		je	..@j14051
		jmp	..@j14052
..@j14051:
		jmp	..@j14043
..@j14052:
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
		jne	..@j14055
		push	word [bp+8]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	bx,word [bp+8]
		lea	ax,[bx+2]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx]
		call	fpc_ansistr_assign
		cmp	word [bp+8],0
		jne	..@j14070
		jmp	..@j14069
..@j14070:
		cmp	word [bp+6],0
		jne	..@j14068
		jmp	..@j14069
..@j14068:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j14069:
..@j14055:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j14057
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
		jne	..@j14073
		cmp	word [bp+6],0
		jne	..@j14074
		jmp	..@j14075
..@j14074:
		push	word [bp+8]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j14075:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j14073:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j14080
		call	FPC_RAISE_NESTED
..@j14080:
		call	FPC_DONEEXCEPTION
		jmp	..@j14057
..@j14057:
..@j14043:
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
