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
	GLOBAL CLASSES$_$TLIST_$__$$_PUT$SMALLINT$POINTER
CLASSES$_$TLIST_$__$$_PUT$SMALLINT$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+8]
		push	word [bp+6]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		mov	word [bp-2],ax
		mov	bx,word [bp+8]
		push	word [bx+2]
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TFPLIST_$__$$_PUT$SMALLINT$POINTER
		cmp	word [bp-2],0
		jne	..@j5724
		jmp	..@j5725
..@j5724:
		push	word [bp+8]
		push	word [bp-2]
		mov	ax,0
		push	ax
		mov	ax,2
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
..@j5725:
		cmp	word [bp+4],0
		jne	..@j5732
		jmp	..@j5733
..@j5732:
		push	word [bp+8]
		push	word [bp+4]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
..@j5733:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	CLASSES$_$TFPLIST_$__$$_PUT$SMALLINT$POINTER
EXTERN	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
