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
	GLOBAL CLASSES$_$TBYTESSTREAM_$__$$_CREATE$TBYTES$$TBYTESSTREAM
CLASSES$_$TBYTESSTREAM_$__$$_CREATE$TBYTES$$TBYTESSTREAM:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+6],1
		je	..@j1954
		jmp	..@j1955
..@j1954:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+8],ax
..@j1955:
		cmp	word [bp+8],0
		je	..@j1960
		jmp	..@j1961
..@j1960:
		jmp	..@j1952
..@j1961:
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
		jne	..@j1964
		push	word [bp+8]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	bx,word [bp+8]
		lea	ax,[bx+10]
		push	ax
		push	word [bp+4]
		mov	ax,word RTTI_$SYSUTILS_$$_TBYTES
		push	ax
		call	fpc_dynarray_assign
		push	word [bp+8]
		mov	bx,word [bp+8]
		push	word [bx+10]
		mov	bx,word [bp+8]
		mov	bx,word [bx+10]
		test	bx,bx
		je	..@j1985
		mov	bx,word [bx-2]
		inc	bx
..@j1985:
		push	bx
		call	CLASSES$_$TCUSTOMMEMORYSTREAM_$__$$_SETPOINTER$POINTER$SMALLINT
		mov	bx,word [bp+8]
		mov	bx,word [bx+10]
		test	bx,bx
		je	..@j1988
		mov	bx,word [bx-2]
		inc	bx
..@j1988:
		mov	si,word [bp+8]
		mov	word [si+8],bx
		cmp	word [bp+8],0
		jne	..@j1991
		jmp	..@j1990
..@j1991:
		cmp	word [bp+6],0
		jne	..@j1989
		jmp	..@j1990
..@j1989:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j1990:
..@j1964:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j1966
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
		jne	..@j1994
		cmp	word [bp+6],0
		jne	..@j1995
		jmp	..@j1996
..@j1995:
		push	word [bp+8]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j1996:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j1994:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j2001
		call	FPC_RAISE_NESTED
..@j2001:
		call	FPC_DONEEXCEPTION
		jmp	..@j1966
..@j1966:
..@j1952:
		mov	ax,word [bp+8]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TCUSTOMMEMORYSTREAM_$__$$_SETPOINTER$POINTER$SMALLINT
EXTERN	fpc_dynarray_assign
EXTERN	RTTI_$SYSUTILS_$$_TBYTES
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
