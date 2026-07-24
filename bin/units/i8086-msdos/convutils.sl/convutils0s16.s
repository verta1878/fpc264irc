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
	GLOBAL CONVUTILS$_$TCONVTYPEPROCS_$__$$_CREATE$crc71F7833B
CONVUTILS$_$TCONVTYPEPROCS_$__$$_CREATE$crc71F7833B:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+12],1
		je	..@j398
		jmp	..@j399
..@j398:
		push	word [bp+14]
		mov	bx,word [bp+14]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+14],ax
..@j399:
		cmp	word [bp+14],0
		je	..@j404
		jmp	..@j405
..@j404:
		jmp	..@j396
..@j405:
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
		jne	..@j408
		push	word [bp+14]
		mov	ax,0
		push	ax
		push	word [bp+10]
		push	word [bp+8]
		call	CONVUTILS$_$TCONVTYPEINFO_$__$$_CREATE$TCONVFAMILY$ANSISTRING$$TCONVTYPEINFO
		mov	bx,word [bp+14]
		mov	ax,word [bp+6]
		mov	word [bx+8],ax
		mov	bx,word [bp+14]
		mov	ax,word [bp+4]
		mov	word [bx+10],ax
		cmp	word [bp+14],0
		jne	..@j427
		jmp	..@j426
..@j427:
		cmp	word [bp+12],0
		jne	..@j425
		jmp	..@j426
..@j425:
		push	word [bp+14]
		mov	bx,word [bp+14]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j426:
..@j408:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j410
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
		jne	..@j430
		cmp	word [bp+12],0
		jne	..@j431
		jmp	..@j432
..@j431:
		push	word [bp+14]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+14]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j432:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j430:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j437
		call	FPC_RAISE_NESTED
..@j437:
		call	FPC_DONEEXCEPTION
		jmp	..@j410
..@j410:
..@j396:
		mov	ax,word [bp+14]
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	CONVUTILS$_$TCONVTYPEINFO_$__$$_CREATE$TCONVFAMILY$ANSISTRING$$TCONVTYPEINFO
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
