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
	GLOBAL CLASSES$_$TBINARYOBJECTWRITER_$__$$_FLUSHBUFFER
CLASSES$_$TBINARYOBJECTWRITER_$__$$_FLUSHBUFFER:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		push	word [bx+2]
		mov	bx,word [bp+4]
		mov	ax,word [bx+4]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		cwd
		push	dx
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_WRITEBUFFER$formal$LONGINT
		mov	bx,word [bp+4]
		mov	word [bx+8],0
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TSTREAM_$__$$_WRITEBUFFER$formal$LONGINT
