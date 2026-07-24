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
	GLOBAL CLASSES$_$TRESOURCESTREAM_$__$$_CREATEFROMID$WORD$SMALLINT$PCHAR$$TRESOURCESTREAM
CLASSES$_$TRESOURCESTREAM_$__$$_CREATEFROMID$WORD$SMALLINT$PCHAR$$TRESOURCESTREAM:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+10],1
		je	..@j2374
		jmp	..@j2375
..@j2374:
		push	word [bp+12]
		mov	bx,word [bp+12]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+12],ax
..@j2375:
		cmp	word [bp+12],0
		je	..@j2380
		jmp	..@j2381
..@j2380:
		jmp	..@j2372
..@j2381:
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
		jne	..@j2384
		push	word [bp+12]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		push	word [bp+12]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,1
		push	ax
		call	CLASSES$_$TRESOURCESTREAM_$__$$_INITIALIZE$WORD$PCHAR$PCHAR$BOOLEAN
		cmp	word [bp+12],0
		jne	..@j2405
		jmp	..@j2404
..@j2405:
		cmp	word [bp+10],0
		jne	..@j2403
		jmp	..@j2404
..@j2403:
		push	word [bp+12]
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j2404:
..@j2384:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j2386
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
		jne	..@j2408
		cmp	word [bp+10],0
		jne	..@j2409
		jmp	..@j2410
..@j2409:
		push	word [bp+12]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j2410:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j2408:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j2415
		call	FPC_RAISE_NESTED
..@j2415:
		call	FPC_DONEEXCEPTION
		jmp	..@j2386
..@j2386:
..@j2372:
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
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
