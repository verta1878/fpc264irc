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
	GLOBAL CLASSES$_$TSTREAM_$__$$_GETPOSITION$$INT64
CLASSES$_$TSTREAM_$__$$_GETPOSITION$$INT64:
		push	bp
		mov	bp,sp
		sub	sp,8
		push	word [bp+4]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+70]
		call	ax
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	2
