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
	GLOBAL SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+4],1
		je	..@j14563
		jmp	..@j14564
..@j14563:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+6],ax
..@j14564:
		cmp	word [bp+6],0
		je	..@j14569
		jmp	..@j14570
..@j14569:
		jmp	..@j14561
..@j14570:
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
		jne	..@j14573
		cmp	word [bp+6],0
		jne	..@j14580
		jmp	..@j14579
..@j14580:
		cmp	word [bp+4],0
		jne	..@j14578
		jmp	..@j14579
..@j14578:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j14579:
..@j14573:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j14575
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
		jne	..@j14583
		cmp	word [bp+4],0
		jne	..@j14584
		jmp	..@j14585
..@j14584:
		push	word [bp+6]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j14585:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j14583:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j14590
		call	FPC_RAISE_NESTED
..@j14590:
		call	FPC_DONEEXCEPTION
		jmp	..@j14575
..@j14575:
..@j14561:
		mov	ax,word [bp+6]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
