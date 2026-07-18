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
	GLOBAL CLASSES$_$TLIST_$__$$_REMOVE$POINTER$$SMALLINT
CLASSES$_$TLIST_$__$$_REMOVE$POINTER$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TLIST_$__$$_INDEXOF$POINTER$$SMALLINT
		mov	word [bp-2],ax
		cmp	word [bp-2],-1
		jne	..@j6188
		jmp	..@j6189
..@j6188:
		push	word [bp+6]
		push	word [bp-2]
		call	CLASSES$_$TLIST_$__$$_DELETE$SMALLINT
..@j6189:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TLIST_$__$$_DELETE$SMALLINT
EXTERN	CLASSES$_$TLIST_$__$$_INDEXOF$POINTER$$SMALLINT
