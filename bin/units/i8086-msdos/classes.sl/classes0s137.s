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
	GLOBAL CLASSES$_$TPARSER_$__$$_HANDLENEWLINE
CLASSES$_$TPARSER_$__$$_HANDLENEWLINE:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	si,word [bp+4]
		mov	si,word [si+8]
		cmp	byte [bx+si],13
		je	..@j3023
		jmp	..@j3024
..@j3023:
		mov	bx,word [bp+4]
		inc	word [bx+8]
		push	word [bp+4]
		call	CLASSES$_$TPARSER_$__$$_CHECKLOADBUFFER
..@j3024:
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	si,word [bp+4]
		mov	si,word [si+8]
		cmp	byte [bx+si],10
		je	..@j3027
		jmp	..@j3028
..@j3027:
		mov	bx,word [bp+4]
		inc	word [bx+8]
		push	word [bp+4]
		call	CLASSES$_$TPARSER_$__$$_CHECKLOADBUFFER
..@j3028:
		mov	bx,word [bp+4]
		inc	word [bx+13]
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		dec	ax
		neg	ax
		mov	bx,word [bp+4]
		mov	word [bx+10],ax
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TPARSER_$__$$_CHECKLOADBUFFER
