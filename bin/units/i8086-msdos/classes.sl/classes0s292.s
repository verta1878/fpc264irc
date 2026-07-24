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
	GLOBAL CLASSES$_$TLIST_$__$$_DOXOR$TLIST$TLIST
CLASSES$_$TLIST_$__$$_DOXOR$TLIST$TLIST:
		push	bp
		mov	bp,sp
		sub	sp,24
		cmp	word [bp+4],0
		jne	..@j6445
		jmp	..@j6446
..@j6445:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+54]
		call	ax
		push	word [bp+6]
		call	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
		dec	ax
		mov	word [bp-24],ax
		mov	word [bp-2],0
		mov	ax,word [bp-24]
		cmp	ax,word [bp-2]
		jl	..@j6454
		dec	word [bp-2]
	ALIGN 2
..@j6455:
		inc	word [bp-2]
		push	word [bp+4]
		push	word [bp+6]
		push	word [bp-2]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		call	CLASSES$_$TLIST_$__$$_INDEXOF$POINTER$$SMALLINT
		cmp	ax,0
		jl	..@j6456
		jmp	..@j6457
..@j6456:
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp-2]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		call	CLASSES$_$TLIST_$__$$_ADD$POINTER$$SMALLINT
..@j6457:
		mov	ax,word [bp-24]
		cmp	ax,word [bp-2]
		jg	..@j6455
..@j6454:
		push	word [bp+4]
		call	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
		dec	ax
		mov	word [bp-20],ax
		mov	word [bp-2],0
		mov	ax,word [bp-20]
		cmp	ax,word [bp-2]
		jl	..@j6479
		dec	word [bp-2]
	ALIGN 2
..@j6480:
		inc	word [bp-2]
		push	word [bp+6]
		push	word [bp+4]
		push	word [bp-2]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		call	CLASSES$_$TLIST_$__$$_INDEXOF$POINTER$$SMALLINT
		cmp	ax,0
		jl	..@j6481
		jmp	..@j6482
..@j6481:
		push	word [bp+8]
		push	word [bp+4]
		push	word [bp-2]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		call	CLASSES$_$TLIST_$__$$_ADD$POINTER$$SMALLINT
..@j6482:
		mov	ax,word [bp-20]
		cmp	ax,word [bp-2]
		jg	..@j6480
..@j6479:
		jmp	..@j6499
..@j6446:
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
		jne	..@j6500
		mov	ax,word VMT_$CLASSES_$$_TLIST
		push	ax
		mov	ax,1
		push	ax
		call	CLASSES$_$TLIST_$__$$_CREATE$$TLIST
		mov	word [bp-4],ax
		push	word [bp-4]
		push	word [bp+8]
		call	CLASSES$_$TLIST_$__$$_COPYMOVE$TLIST
		push	word [bp+8]
		call	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
		dec	ax
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jl	..@j6514
		inc	word [bp-2]
	ALIGN 2
..@j6515:
		dec	word [bp-2]
		push	word [bp+6]
		push	word [bp+8]
		push	word [bp-2]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		call	CLASSES$_$TLIST_$__$$_INDEXOF$POINTER$$SMALLINT
		cmp	ax,0
		jge	..@j6518
		jmp	..@j6519
..@j6518:
		push	word [bp+8]
		push	word [bp-2]
		call	CLASSES$_$TLIST_$__$$_DELETE$SMALLINT
..@j6519:
		cmp	word [bp-2],0
		jg	..@j6515
..@j6514:
		push	word [bp+6]
		call	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
		dec	ax
		mov	word [bp-22],ax
		mov	word [bp-2],0
		mov	ax,word [bp-22]
		cmp	ax,word [bp-2]
		jl	..@j6537
		dec	word [bp-2]
	ALIGN 2
..@j6538:
		inc	word [bp-2]
		push	word [bp-4]
		push	word [bp+6]
		push	word [bp-2]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		call	CLASSES$_$TLIST_$__$$_INDEXOF$POINTER$$SMALLINT
		cmp	ax,0
		jl	..@j6539
		jmp	..@j6540
..@j6539:
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp-2]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		call	CLASSES$_$TLIST_$__$$_ADD$POINTER$$SMALLINT
..@j6540:
		mov	ax,word [bp-22]
		cmp	ax,word [bp-2]
		jg	..@j6538
..@j6537:
..@j6500:
		call	FPC_POPADDRSTACK
		push	word [bp-4]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		pop	ax
		test	ax,ax
		je	..@j6501
		call	FPC_RERAISE
..@j6501:
..@j6499:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TLIST_$__$$_DELETE$SMALLINT
EXTERN	CLASSES$_$TLIST_$__$$_COPYMOVE$TLIST
EXTERN	CLASSES$_$TLIST_$__$$_CREATE$$TLIST
EXTERN	VMT_$CLASSES_$$_TLIST
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	CLASSES$_$TLIST_$__$$_ADD$POINTER$$SMALLINT
EXTERN	CLASSES$_$TLIST_$__$$_INDEXOF$POINTER$$SMALLINT
EXTERN	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
EXTERN	CLASSES$_$TLIST_$__$$_GETCOUNT$$SMALLINT
