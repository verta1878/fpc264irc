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
	GLOBAL CLASSES$_$TLIST_$__$$_DOCOPY$TLIST$TLIST
CLASSES$_$TLIST_$__$$_DOCOPY$TLIST$TLIST:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jne	..@j6252
		jmp	..@j6253
..@j6252:
		push	word [bp+8]
		push	word [bp+4]
		call	CLASSES$_$TLIST_$__$$_COPYMOVE$TLIST
		jmp	..@j6258
..@j6253:
		push	word [bp+8]
		push	word [bp+6]
		call	CLASSES$_$TLIST_$__$$_COPYMOVE$TLIST
..@j6258:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	CLASSES$_$TLIST_$__$$_COPYMOVE$TLIST
