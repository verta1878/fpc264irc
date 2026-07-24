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
	GLOBAL CONVUTILS$_$TCONVTYPEINFO_$__$$_CREATE$TCONVFAMILY$ANSISTRING$$TCONVTYPEINFO
CONVUTILS$_$TCONVTYPEINFO_$__$$_CREATE$TCONVFAMILY$ANSISTRING$$TCONVTYPEINFO:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+8],1
		je	..@j314
		jmp	..@j315
..@j314:
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+10],ax
..@j315:
		cmp	word [bp+10],0
		je	..@j320
		jmp	..@j321
..@j320:
		jmp	..@j312
..@j321:
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
		jne	..@j324
		mov	bx,word [bp+10]
		lea	ax,[bx+2]
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_assign
		mov	bx,word [bp+10]
		mov	ax,word [bp+6]
		mov	word [bx+4],ax
		cmp	word [bp+10],0
		jne	..@j337
		jmp	..@j336
..@j337:
		cmp	word [bp+8],0
		jne	..@j335
		jmp	..@j336
..@j335:
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j336:
..@j324:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j326
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
		jne	..@j340
		cmp	word [bp+8],0
		jne	..@j341
		jmp	..@j342
..@j341:
		push	word [bp+10]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j342:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j340:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j347
		call	FPC_RAISE_NESTED
..@j347:
		call	FPC_DONEEXCEPTION
		jmp	..@j326
..@j326:
..@j312:
		mov	ax,word [bp+10]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
