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
	GLOBAL CONVUTILS$_$TCONVTYPEFACTOR_$__$$_CREATE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPEFACTOR
CONVUTILS$_$TCONVTYPEFACTOR_$__$$_CREATE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPEFACTOR:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+16],1
		je	..@j350
		jmp	..@j351
..@j350:
		push	word [bp+18]
		mov	bx,word [bp+18]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+18],ax
..@j351:
		cmp	word [bp+18],0
		je	..@j356
		jmp	..@j357
..@j356:
		jmp	..@j348
..@j357:
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
		jne	..@j360
		push	word [bp+18]
		mov	ax,0
		push	ax
		push	word [bp+14]
		push	word [bp+12]
		call	CONVUTILS$_$TCONVTYPEINFO_$__$$_CREATE$TCONVFAMILY$ANSISTRING$$TCONVTYPEINFO
		mov	bx,word [bp+18]
		lea	di,[bx+8]
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
		cmp	word [bp+18],0
		jne	..@j377
		jmp	..@j376
..@j377:
		cmp	word [bp+16],0
		jne	..@j375
		jmp	..@j376
..@j375:
		push	word [bp+18]
		mov	bx,word [bp+18]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j376:
..@j360:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j362
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
		jne	..@j380
		cmp	word [bp+16],0
		jne	..@j381
		jmp	..@j382
..@j381:
		push	word [bp+18]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+18]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j382:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j380:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j387
		call	FPC_RAISE_NESTED
..@j387:
		call	FPC_DONEEXCEPTION
		jmp	..@j362
..@j362:
..@j348:
		mov	ax,word [bp+18]
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	CONVUTILS$_$TCONVTYPEINFO_$__$$_CREATE$TCONVFAMILY$ANSISTRING$$TCONVTYPEINFO
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
