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
	GLOBAL CLASSES$_$TPROXYSTREAM_$__$$_READ$formal$LONGINT$$LONGINT
CLASSES$_$TPROXYSTREAM_$__$$_READ$formal$LONGINT$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		push	word [bp+10]
		lea	ax,[bp-4]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+10]
		push	word [bx+2]
		mov	bx,word [bp+10]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		call	[bx+6]
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+72]
		call	ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
