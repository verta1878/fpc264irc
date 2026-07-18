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
	GLOBAL FGL$_$TFPSLIST_$__$$_CREATE$SMALLINT$$TFPSLIST
FGL$_$TFPSLIST_$__$$_CREATE$SMALLINT$$TFPSLIST:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+6],1
		je	..@j5
		jmp	..@j6
..@j5:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+8],ax
..@j6:
		cmp	word [bp+8],0
		je	..@j11
		jmp	..@j12
..@j11:
		jmp	..@j3
..@j12:
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
		jne	..@j15
		push	word [bp+8]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	bx,word [bp+8]
		mov	ax,word [bp+4]
		mov	word [bx+8],ax
		cmp	word [bp+8],0
		jne	..@j28
		jmp	..@j27
..@j28:
		cmp	word [bp+6],0
		jne	..@j26
		jmp	..@j27
..@j26:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j27:
..@j15:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j17
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
		jne	..@j31
		cmp	word [bp+6],0
		jne	..@j32
		jmp	..@j33
..@j32:
		push	word [bp+8]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j33:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j31:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j38
		call	FPC_RAISE_NESTED
..@j38:
		call	FPC_DONEEXCEPTION
		jmp	..@j17
..@j17:
..@j3:
		mov	ax,word [bp+8]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
