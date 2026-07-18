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
	GLOBAL CLASSES$_$TFPLIST_$__$$_DOXOR$TFPLIST$TFPLIST
CLASSES$_$TFPLIST_$__$$_DOXOR$TFPLIST$TFPLIST:
		push	bp
		mov	bp,sp
		sub	sp,24
		cmp	word [bp+4],0
		jne	..@j5489
		jmp	..@j5490
..@j5489:
		push	word [bp+8]
		call	CLASSES$_$TFPLIST_$__$$_CLEAR
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		dec	ax
		mov	word [bp-24],ax
		mov	word [bp-2],0
		mov	ax,word [bp-24]
		cmp	ax,word [bp-2]
		jl	..@j5496
		dec	word [bp-2]
	ALIGN 2
..@j5497:
		inc	word [bp-2]
		push	word [bp+4]
		push	word [bp+6]
		push	word [bp-2]
		call	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		call	CLASSES$_$TFPLIST_$__$$_INDEXOF$POINTER$$SMALLINT
		cmp	ax,0
		jl	..@j5498
		jmp	..@j5499
..@j5498:
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp-2]
		call	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		call	CLASSES$_$TFPLIST_$__$$_ADD$POINTER$$SMALLINT
..@j5499:
		mov	ax,word [bp-24]
		cmp	ax,word [bp-2]
		jg	..@j5497
..@j5496:
		mov	bx,word [bp+4]
		mov	ax,word [bx+4]
		dec	ax
		mov	word [bp-20],ax
		mov	word [bp-2],0
		mov	ax,word [bp-20]
		cmp	ax,word [bp-2]
		jl	..@j5519
		dec	word [bp-2]
	ALIGN 2
..@j5520:
		inc	word [bp-2]
		push	word [bp+6]
		push	word [bp+4]
		push	word [bp-2]
		call	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		call	CLASSES$_$TFPLIST_$__$$_INDEXOF$POINTER$$SMALLINT
		cmp	ax,0
		jl	..@j5521
		jmp	..@j5522
..@j5521:
		push	word [bp+8]
		push	word [bp+4]
		push	word [bp-2]
		call	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		call	CLASSES$_$TFPLIST_$__$$_ADD$POINTER$$SMALLINT
..@j5522:
		mov	ax,word [bp-20]
		cmp	ax,word [bp-2]
		jg	..@j5520
..@j5519:
		jmp	..@j5539
..@j5490:
		mov	ax,1
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-10]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j5540
		mov	ax,word VMT_$CLASSES_$$_TFPLIST
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	word [bp-4],ax
		push	word [bp-4]
		push	word [bp+8]
		call	CLASSES$_$TFPLIST_$__$$_COPYMOVE$TFPLIST
		mov	bx,word [bp+8]
		mov	ax,word [bx+4]
		dec	ax
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jl	..@j5554
		inc	word [bp-2]
	ALIGN 2
..@j5555:
		dec	word [bp-2]
		push	word [bp+6]
		push	word [bp+8]
		push	word [bp-2]
		call	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		call	CLASSES$_$TFPLIST_$__$$_INDEXOF$POINTER$$SMALLINT
		cmp	ax,0
		jge	..@j5556
		jmp	..@j5557
..@j5556:
		push	word [bp+8]
		push	word [bp-2]
		call	CLASSES$_$TFPLIST_$__$$_DELETE$SMALLINT
..@j5557:
		cmp	word [bp-2],0
		jg	..@j5555
..@j5554:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		dec	ax
		mov	word [bp-22],ax
		mov	word [bp-2],0
		mov	ax,word [bp-22]
		cmp	ax,word [bp-2]
		jl	..@j5573
		dec	word [bp-2]
	ALIGN 2
..@j5574:
		inc	word [bp-2]
		push	word [bp-4]
		push	word [bp+6]
		push	word [bp-2]
		call	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		call	CLASSES$_$TFPLIST_$__$$_INDEXOF$POINTER$$SMALLINT
		cmp	ax,0
		jl	..@j5575
		jmp	..@j5576
..@j5575:
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp-2]
		call	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		call	CLASSES$_$TFPLIST_$__$$_ADD$POINTER$$SMALLINT
..@j5576:
		mov	ax,word [bp-22]
		cmp	ax,word [bp-2]
		jg	..@j5574
..@j5573:
..@j5540:
		call	FPC_POPADDRSTACK
		push	word [bp-4]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		pop	ax
		test	ax,ax
		je	..@j5541
		call	FPC_RERAISE
..@j5541:
..@j5539:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TFPLIST_$__$$_DELETE$SMALLINT
EXTERN	CLASSES$_$TFPLIST_$__$$_COPYMOVE$TFPLIST
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	VMT_$CLASSES_$$_TFPLIST
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	CLASSES$_$TFPLIST_$__$$_ADD$POINTER$$SMALLINT
EXTERN	CLASSES$_$TFPLIST_$__$$_INDEXOF$POINTER$$SMALLINT
EXTERN	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
EXTERN	CLASSES$_$TFPLIST_$__$$_CLEAR
