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
	GLOBAL SYSTEM_$$_RELOCATEHEAP
SYSTEM_$$_RELOCATEHEAP:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [U_$SYSTEM_$$_HEAP_LOCK_USE],0
		jg	..@j19608
		jmp	..@j19609
..@j19608:
		jmp	..@j19606
..@j19609:
		mov	word [U_$SYSTEM_$$_HEAP_LOCK_USE],1
		mov	ax,word U_$SYSTEM_$$_HEAP_LOCK
		push	ax
		call	SYSTEM_$$_INITCRITICALSECTION$TRTLCRITICALSECTION
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j19616
		push	word [U_$SYSTEM_$$_FREELISTS+2]
		push	word [U_$SYSTEM_$$_FREELISTS]
		call	ax
		jmp	..@j19617
..@j19616:
		mov	ax,word U_$SYSTEM_$$_FREELISTS+2
..@j19617:
		mov	word [bp-2],ax
		push	word [bp-2]
		push	word [bp-2]
		call	SYSTEM_$$_MODIFY_FREELISTS$PFREELISTS$PFREELISTS$$POSCHUNK
		cmp	word [TC_$SYSTEM_$$_MEMORYMANAGER+17],0
		jne	..@j19622
		jmp	..@j19623
..@j19622:
		mov	ax,word [TC_$SYSTEM_$$_MEMORYMANAGER+17]
		call	ax
..@j19623:
..@j19606:
		mov	sp,bp
		pop	bp
		ret
EXTERN	TC_$SYSTEM_$$_MEMORYMANAGER
EXTERN	SYSTEM_$$_MODIFY_FREELISTS$PFREELISTS$PFREELISTS$$POSCHUNK
EXTERN	U_$SYSTEM_$$_FREELISTS
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	SYSTEM_$$_INITCRITICALSECTION$TRTLCRITICALSECTION
EXTERN	U_$SYSTEM_$$_HEAP_LOCK
EXTERN	U_$SYSTEM_$$_HEAP_LOCK_USE
