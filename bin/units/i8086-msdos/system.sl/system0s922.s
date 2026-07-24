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
	GLOBAL SYSTEM_$$_FINALIZEHEAP
SYSTEM_$$_FINALIZEHEAP:
		push	bp
		mov	bp,sp
		sub	sp,8
		cmp	word [TC_$SYSTEM_$$_ERRORCODE],203
		je	..@j19626
		jmp	..@j19628
..@j19628:
		cmp	word [TC_$SYSTEM_$$_ERRORCODE],204
		je	..@j19626
		jmp	..@j19627
..@j19626:
		jmp	..@j19624
..@j19627:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j19631
		push	word [U_$SYSTEM_$$_FREELISTS+2]
		push	word [U_$SYSTEM_$$_FREELISTS]
		call	ax
		jmp	..@j19632
..@j19631:
		mov	ax,word U_$SYSTEM_$$_FREELISTS+2
..@j19632:
		mov	word [bp-6],ax
		cmp	word [U_$SYSTEM_$$_HEAP_LOCK_USE],0
		jg	..@j19633
		jmp	..@j19634
..@j19633:
		mov	ax,word U_$SYSTEM_$$_HEAP_LOCK
		push	ax
		call	SYSTEM_$$_ENTERCRITICALSECTION$TRTLCRITICALSECTION
		push	word [bp-6]
		call	SYSTEM_$$_FINISH_WAITFIXEDLIST$PFREELISTS
		push	word [bp-6]
		call	SYSTEM_$$_FINISH_WAITVARLIST$PFREELISTS
..@j19634:
		cmp	word [U_$SYSTEM_$$_HEAP_LOCK_USE],0
		jg	..@j19641
		jmp	..@j19642
..@j19641:
		push	word [bp-6]
		mov	ax,word U_$SYSTEM_$$_ORPHANED_FREELISTS
		push	ax
		call	SYSTEM_$$_MODIFY_FREELISTS$PFREELISTS$PFREELISTS$$POSCHUNK
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jne	..@j19649
		jmp	..@j19650
..@j19649:
		mov	bx,word [bp-2]
		mov	ax,word [U_$SYSTEM_$$_ORPHANED_FREELISTS+78]
		mov	word [bx+6],ax
		cmp	word [U_$SYSTEM_$$_ORPHANED_FREELISTS+78],0
		jne	..@j19653
		jmp	..@j19654
..@j19653:
		mov	bx,word [U_$SYSTEM_$$_ORPHANED_FREELISTS+78]
		mov	ax,word [bp-2]
		mov	word [bx+4],ax
..@j19654:
		mov	bx,word [bp-6]
		mov	ax,word [bx+78]
		mov	word [U_$SYSTEM_$$_ORPHANED_FREELISTS+78],ax
..@j19650:
		dec	word [U_$SYSTEM_$$_HEAP_LOCK_USE]
		cmp	word [U_$SYSTEM_$$_HEAP_LOCK_USE],0
		mov	al,0
		jne	..@j19661
		inc	ax
..@j19661:
		mov	byte [bp-7],al
		mov	ax,word U_$SYSTEM_$$_HEAP_LOCK
		push	ax
		call	SYSTEM_$$_LEAVECRITICALSECTION$TRTLCRITICALSECTION
		cmp	byte [bp-7],0
		jne	..@j19664
		jmp	..@j19665
..@j19664:
		mov	ax,word U_$SYSTEM_$$_HEAP_LOCK
		push	ax
		call	SYSTEM_$$_DONECRITICALSECTION$TRTLCRITICALSECTION
..@j19665:
..@j19642:
..@j19624:
		mov	sp,bp
		pop	bp
		ret
EXTERN	SYSTEM_$$_DONECRITICALSECTION$TRTLCRITICALSECTION
EXTERN	SYSTEM_$$_LEAVECRITICALSECTION$TRTLCRITICALSECTION
EXTERN	SYSTEM_$$_MODIFY_FREELISTS$PFREELISTS$PFREELISTS$$POSCHUNK
EXTERN	U_$SYSTEM_$$_ORPHANED_FREELISTS
EXTERN	SYSTEM_$$_FINISH_WAITVARLIST$PFREELISTS
EXTERN	SYSTEM_$$_FINISH_WAITFIXEDLIST$PFREELISTS
EXTERN	SYSTEM_$$_ENTERCRITICALSECTION$TRTLCRITICALSECTION
EXTERN	U_$SYSTEM_$$_HEAP_LOCK
EXTERN	U_$SYSTEM_$$_HEAP_LOCK_USE
EXTERN	U_$SYSTEM_$$_FREELISTS
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	TC_$SYSTEM_$$_ERRORCODE
