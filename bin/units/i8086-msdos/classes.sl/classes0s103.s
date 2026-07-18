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
	GLOBAL CLASSES$_$TRESOURCESTREAM_$__$$_CREATE$WORD$ANSISTRING$PCHAR$$TRESOURCESTREAM
CLASSES$_$TRESOURCESTREAM_$__$$_CREATE$WORD$ANSISTRING$PCHAR$$TRESOURCESTREAM:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+10],1
		je	..@j2329
		jmp	..@j2330
..@j2329:
		push	word [bp+12]
		mov	bx,word [bp+12]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+12],ax
..@j2330:
		cmp	word [bp+12],0
		je	..@j2335
		jmp	..@j2336
..@j2335:
		jmp	..@j2327
..@j2336:
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
		jne	..@j2339
		push	word [bp+12]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		push	word [bp+12]
		push	word [bp+8]
		mov	ax,word [bp+6]
		test	ax,ax
		jne	..@j2354
		mov	ax,word FPC_EMPTYCHAR
..@j2354:
		push	ax
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	CLASSES$_$TRESOURCESTREAM_$__$$_INITIALIZE$WORD$PCHAR$PCHAR$BOOLEAN
		cmp	word [bp+12],0
		jne	..@j2361
		jmp	..@j2360
..@j2361:
		cmp	word [bp+10],0
		jne	..@j2359
		jmp	..@j2360
..@j2359:
		push	word [bp+12]
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j2360:
..@j2339:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j2341
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
		jne	..@j2364
		cmp	word [bp+10],0
		jne	..@j2365
		jmp	..@j2366
..@j2365:
		push	word [bp+12]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j2366:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j2364:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j2371
		call	FPC_RAISE_NESTED
..@j2371:
		call	FPC_DONEEXCEPTION
		jmp	..@j2341
..@j2341:
..@j2327:
		mov	ax,word [bp+12]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TRESOURCESTREAM_$__$$_INITIALIZE$WORD$PCHAR$PCHAR$BOOLEAN
EXTERN	FPC_EMPTYCHAR
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
