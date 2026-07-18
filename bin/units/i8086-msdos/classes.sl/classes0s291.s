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
	GLOBAL CLASSES$_$TLIST_$__$$_DOOR$TLIST$TLIST
CLASSES$_$TLIST_$__$$_DOOR$TLIST$TLIST:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jne	..@j6428
		jmp	..@j6429
..@j6428:
		push	word [bp+8]
		push	word [bp+6]
		call	CLASSES$_$TLIST_$__$$_COPYMOVE$TLIST
		push	word [bp+8]
		push	word [bp+4]
		call	CLASSES$_$TLIST_$__$$_MERGEMOVE$TLIST
		jmp	..@j6438
..@j6429:
		push	word [bp+8]
		push	word [bp+6]
		call	CLASSES$_$TLIST_$__$$_MERGEMOVE$TLIST
..@j6438:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	CLASSES$_$TLIST_$__$$_MERGEMOVE$TLIST
EXTERN	CLASSES$_$TLIST_$__$$_COPYMOVE$TLIST
