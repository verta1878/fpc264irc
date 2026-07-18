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
	GLOBAL CLASSES$_$TPROXYSTREAM_$__$$_SEEK$INT64$TSEEKORIGIN$$INT64
CLASSES$_$TPROXYSTREAM_$__$$_SEEK$INT64$TSEEKORIGIN$$INT64:
		push	bp
		mov	bp,sp
		sub	sp,8
		push	word [bp+16]
		lea	ax,[bp-8]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		push	word [bp+14]
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		mov	bx,word [bp+16]
		push	word [bx+2]
		mov	bx,word [bp+16]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		call	[bx+10]
		push	ax
		mov	bx,word [bp+16]
		mov	bx,word [bx]
		mov	ax,word [bx+72]
		call	ax
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	14
