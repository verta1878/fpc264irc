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
	GLOBAL SYSTEM$_$TAGGREGATEDOBJECT_$__$$_CREATE$IUNKNOWN$$TAGGREGATEDOBJECT
SYSTEM$_$TAGGREGATEDOBJECT_$__$$_CREATE$IUNKNOWN$$TAGGREGATEDOBJECT:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+6],1
		je	..@j15335
		jmp	..@j15336
..@j15335:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+8],ax
..@j15336:
		cmp	word [bp+8],0
		je	..@j15341
		jmp	..@j15342
..@j15341:
		jmp	..@j15333
..@j15342:
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
		jne	..@j15345
		push	word [bp+8]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	bx,word [bp+8]
		mov	ax,word [bp+4]
		mov	word [bx+2],ax
		cmp	word [bp+8],0
		jne	..@j15358
		jmp	..@j15357
..@j15358:
		cmp	word [bp+6],0
		jne	..@j15356
		jmp	..@j15357
..@j15356:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j15357:
..@j15345:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j15347
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
		jne	..@j15361
		cmp	word [bp+6],0
		jne	..@j15362
		jmp	..@j15363
..@j15362:
		push	word [bp+8]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j15363:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j15361:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j15368
		call	FPC_RAISE_NESTED
..@j15368:
		call	FPC_DONEEXCEPTION
		jmp	..@j15347
..@j15347:
..@j15333:
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
