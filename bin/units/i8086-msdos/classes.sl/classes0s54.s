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
	GLOBAL CLASSES$_$TSTREAM_$__$$_WRITERESOURCEHEADER$ANSISTRING$LONGINT
CLASSES$_$TSTREAM_$__$$_WRITERESOURCEHEADER$ANSISTRING$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	word [bp-2],10
		mov	word [bp-4],4144
		push	word [bp+8]
		mov	ax,255
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEBYTE$BYTE
		push	word [bp+8]
		push	word [bp-2]
		call	CLASSES$_$TSTREAM_$__$$_WRITEWORD$WORD
		push	word [bp+8]
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j1224
		mov	bx,word [bx-2]
..@j1224:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		push	ax
		push	cx
		call	CLASSES$_$TSTREAM_$__$$_WRITEBUFFER$formal$LONGINT
		push	word [bp+8]
		mov	ax,0
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEBYTE$BYTE
		push	word [bp+8]
		push	word [bp-4]
		call	CLASSES$_$TSTREAM_$__$$_WRITEWORD$WORD
		push	word [bp+8]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEDWORD$LONGWORD
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
		mov	bx,word [bp+4]
		mov	word [bx],dx
		mov	word [bx+2],cx
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	CLASSES$_$TSTREAM_$__$$_WRITEDWORD$LONGWORD
EXTERN	CLASSES$_$TSTREAM_$__$$_WRITEBUFFER$formal$LONGINT
EXTERN	CLASSES$_$TSTREAM_$__$$_WRITEWORD$WORD
EXTERN	CLASSES$_$TSTREAM_$__$$_WRITEBYTE$BYTE
