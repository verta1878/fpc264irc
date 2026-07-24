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
	GLOBAL CLASSES$_$TSTRINGSTREAM_$__$$_CREATE$ANSISTRING$$TSTRINGSTREAM
CLASSES$_$TSTRINGSTREAM_$__$$_CREATE$ANSISTRING$$TSTRINGSTREAM:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+6],1
		je	..@j2074
		jmp	..@j2075
..@j2074:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+8],ax
..@j2075:
		cmp	word [bp+8],0
		je	..@j2080
		jmp	..@j2081
..@j2080:
		jmp	..@j2072
..@j2081:
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
		jne	..@j2084
		push	word [bp+8]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	bx,word [bp+8]
		lea	ax,[bx+2]
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_assign
		mov	bx,word [bp+8]
		lea	ax,[bx+2]
		push	ax
		call	FPC_ANSISTR_UNIQUE
		cmp	word [bp+8],0
		jne	..@j2101
		jmp	..@j2100
..@j2101:
		cmp	word [bp+6],0
		jne	..@j2099
		jmp	..@j2100
..@j2099:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j2100:
..@j2084:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j2086
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
		jne	..@j2104
		cmp	word [bp+6],0
		jne	..@j2105
		jmp	..@j2106
..@j2105:
		push	word [bp+8]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j2106:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j2104:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j2111
		call	FPC_RAISE_NESTED
..@j2111:
		call	FPC_DONEEXCEPTION
		jmp	..@j2086
..@j2086:
..@j2072:
		mov	ax,word [bp+8]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_ANSISTR_UNIQUE
EXTERN	fpc_ansistr_assign
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
