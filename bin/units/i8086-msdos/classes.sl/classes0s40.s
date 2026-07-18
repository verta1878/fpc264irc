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
	GLOBAL CLASSES$_$TSTREAM_$__$$_DISCARD$INT64
CLASSES$_$TSTREAM_$__$$_DISCARD$INT64:
		push	bp
		mov	bp,sp
		sub	sp,256
		mov	dx,word [bp+4]
		mov	cx,word [bp+6]
		mov	bx,word [bp+8]
		mov	ax,word [bp+10]
		cmp	ax,0
		jne	..@j823
		cmp	bx,0
		jne	..@j823
		cmp	cx,0
		jne	..@j823
		cmp	dx,0
		jne	..@j823
		jmp	..@j822
..@j822:
		jmp	..@j820
..@j823:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	cx,word [bp+8]
		mov	bx,word [bp+10]
		cmp	bx,0
		jl	..@j824
		jg	..@j825
		cmp	cx,0
		jb	..@j824
		ja	..@j825
		cmp	dx,0
		jb	..@j824
		ja	..@j825
		cmp	ax,255
		jbe	..@j824
		jmp	..@j825
..@j824:
		push	word [bp+12]
		lea	ax,[bp-255]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TSTREAM_$__$$_READBUFFER$formal$LONGINT
		jmp	..@j832
..@j825:
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,0
		push	ax
		mov	ax,-32768
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_DISCARDLARGE$INT64$LONGINT
..@j832:
..@j820:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	CLASSES$_$TSTREAM_$__$$_DISCARDLARGE$INT64$LONGINT
EXTERN	CLASSES$_$TSTREAM_$__$$_READBUFFER$formal$LONGINT
