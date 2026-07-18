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
	GLOBAL CLASSES$_$TDATAMODULE_$__$$_CREATENEW$TCOMPONENT$$TDATAMODULE
CLASSES$_$TDATAMODULE_$__$$_CREATENEW$TCOMPONENT$$TDATAMODULE:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+6],1
		je	..@j13364
		jmp	..@j13365
..@j13364:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+8],ax
..@j13365:
		cmp	word [bp+8],0
		je	..@j13370
		jmp	..@j13371
..@j13370:
		jmp	..@j13362
..@j13371:
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
		jne	..@j13374
		push	word [bp+8]
		mov	ax,0
		push	ax
		push	word [bp+4]
		mov	ax,0
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+114]
		call	ax
		cmp	word [bp+8],0
		jne	..@j13389
		jmp	..@j13388
..@j13389:
		cmp	word [bp+6],0
		jne	..@j13387
		jmp	..@j13388
..@j13387:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j13388:
..@j13374:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j13376
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
		jne	..@j13392
		cmp	word [bp+6],0
		jne	..@j13393
		jmp	..@j13394
..@j13393:
		push	word [bp+8]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j13394:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j13392:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j13399
		call	FPC_RAISE_NESTED
..@j13399:
		call	FPC_DONEEXCEPTION
		jmp	..@j13376
..@j13376:
..@j13362:
		mov	ax,word [bp+8]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
