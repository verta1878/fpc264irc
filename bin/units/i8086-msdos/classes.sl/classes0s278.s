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
	GLOBAL CLASSES$_$TLIST_$__$$_INSERT$SMALLINT$POINTER
CLASSES$_$TLIST_$__$$_INSERT$SMALLINT$POINTER:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+8]
		push	word [bx+2]
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TFPLIST_$__$$_INSERT$SMALLINT$POINTER
		cmp	word [bp+4],0
		jne	..@j6158
		jmp	..@j6159
..@j6158:
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
..@j6159:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	CLASSES$_$TFPLIST_$__$$_INSERT$SMALLINT$POINTER
