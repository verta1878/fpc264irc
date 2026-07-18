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
	GLOBAL CLASSES$_$TBITS_$__$$_GROW$LONGINT
CLASSES$_$TBITS_$__$$_GROW$LONGINT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+8]
		mov	ax,word [bx+8]
		mov	dx,word [bx+10]
		cmp	dx,word [bp+6]
		jl	..@j298
		jg	..@j299
		cmp	ax,word [bp+4]
		jb	..@j298
		jmp	..@j299
		jmp	..@j299
..@j298:
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TBITS_$__$$_SETSIZE$LONGINT
..@j299:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	CLASSES$_$TBITS_$__$$_SETSIZE$LONGINT
