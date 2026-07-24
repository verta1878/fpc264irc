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
	GLOBAL CLASSES$_$TFPLIST_$__$$_CLEAR
CLASSES$_$TFPLIST_$__$$_CLEAR:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		cmp	word [bx+2],0
		jne	..@j4858
		jmp	..@j4859
..@j4858:
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	CLASSES$_$TFPLIST_$__$$_SETCOUNT$SMALLINT
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	CLASSES$_$TFPLIST_$__$$_SETCAPACITY$SMALLINT
		mov	bx,word [bp+4]
		mov	word [bx+2],0
..@j4859:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TFPLIST_$__$$_SETCAPACITY$SMALLINT
EXTERN	CLASSES$_$TFPLIST_$__$$_SETCOUNT$SMALLINT
