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
	GLOBAL CLASSES$_$TMEMORYSTREAM_$__$$_LOADFROMSTREAM$TSTREAM
CLASSES$_$TMEMORYSTREAM_$__$$_LOADFROMSTREAM$TSTREAM:
		push	bp
		mov	bp,sp
		push	word [bp+4]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+54]
		call	ax
		push	word [bp+6]
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+56]
		call	ax
		push	ax
		push	bx
		push	cx
		push	dx
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+62]
		call	ax
		mov	bx,word [bp+6]
		cmp	word [bx+4],0
		jg	..@j1882
		jmp	..@j1883
..@j1882:
		push	word [bp+4]
		mov	bx,word [bp+6]
		mov	ax,word [bx+2]
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		cwd
		push	dx
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_READBUFFER$formal$LONGINT
..@j1883:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TSTREAM_$__$$_READBUFFER$formal$LONGINT
