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
	GLOBAL CLASSES$_$TSTREAM_$__$$_WRITEANSISTRING$ANSISTRING
CLASSES$_$TSTREAM_$__$$_WRITEANSISTRING$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j1430
		mov	bx,word [bx-2]
..@j1430:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		push	word [bp+6]
		lea	ax,[bp-4]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,4
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEBUFFER$formal$LONGINT
		push	word [bp+6]
		mov	ax,word [bp+4]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		call	CLASSES$_$TSTREAM_$__$$_WRITEBUFFER$formal$LONGINT
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TSTREAM_$__$$_WRITEBUFFER$formal$LONGINT
