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
	GLOBAL SYSTEM_$$_INITHEAP
SYSTEM_$$_INITHEAP:
	GLOBAL _FPC_InitHeap
_FPC_InitHeap:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	word [U_$SYSTEM_$$_HEAP_LOCK_USE],0
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j19590
		push	word [U_$SYSTEM_$$_FREELISTS+2]
		push	word [U_$SYSTEM_$$_FREELISTS]
		call	ax
		jmp	..@j19591
..@j19590:
		mov	ax,word U_$SYSTEM_$$_FREELISTS+2
..@j19591:
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		push	ax
		mov	ax,96
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
		mov	bx,word [bp-2]
		mov	ax,word [TC_$SYSTEM_$$_GROWHEAPSIZESMALL]
		mov	word [bx+76],ax
		mov	ax,word U_$SYSTEM_$$_ORPHANED_FREELISTS
		push	ax
		mov	ax,96
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
		mov	sp,bp
		pop	bp
		ret
EXTERN	U_$SYSTEM_$$_ORPHANED_FREELISTS
EXTERN	TC_$SYSTEM_$$_GROWHEAPSIZESMALL
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
EXTERN	U_$SYSTEM_$$_FREELISTS
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	U_$SYSTEM_$$_HEAP_LOCK_USE
