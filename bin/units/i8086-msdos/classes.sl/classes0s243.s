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
	GLOBAL CLASSES$_$TFPLIST_$__$$_DOCOPY$TFPLIST$TFPLIST
CLASSES$_$TFPLIST_$__$$_DOCOPY$TFPLIST$TFPLIST:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jne	..@j5306
		jmp	..@j5307
..@j5306:
		push	word [bp+8]
		push	word [bp+4]
		call	CLASSES$_$TFPLIST_$__$$_COPYMOVE$TFPLIST
		jmp	..@j5312
..@j5307:
		push	word [bp+8]
		push	word [bp+6]
		call	CLASSES$_$TFPLIST_$__$$_COPYMOVE$TFPLIST
..@j5312:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	CLASSES$_$TFPLIST_$__$$_COPYMOVE$TFPLIST
