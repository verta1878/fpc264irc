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
	GLOBAL CLASSES$_$TPARSER_$__$$_LOADBUFFER
CLASSES$_$TPARSER_$__$$_LOADBUFFER:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		push	word [bx+2]
		mov	bx,word [bp+4]
		mov	ax,word [bx+4]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,4096
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		mov	word [bp-2],ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	si,word [bp-2]
		mov	byte [bx+si],0
		mov	bx,word [bp+4]
		mov	ax,word [bp-2]
		add	word [bx+10],ax
		mov	bx,word [bp+4]
		mov	word [bx+8],0
		mov	bx,word [bp+4]
		mov	ax,word [bp-2]
		mov	word [bx+6],ax
		mov	bx,word [bp+4]
		cmp	word [bp-2],0
		mov	al,0
		jne	..@j2906
		inc	ax
..@j2906:
		mov	byte [bx+16],al
		mov	sp,bp
		pop	bp
		ret	2
