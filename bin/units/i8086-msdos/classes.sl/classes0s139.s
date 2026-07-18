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
	GLOBAL CLASSES$_$TPARSER_$__$$_SKIPSPACES
CLASSES$_$TPARSER_$__$$_SKIPSPACES:
		push	bp
		mov	bp,sp
		jmp	..@j3073
	ALIGN 2
..@j3072:
		mov	bx,word [bp+4]
		inc	word [bx+8]
		push	word [bp+4]
		call	CLASSES$_$TPARSER_$__$$_CHECKLOADBUFFER
..@j3073:
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	si,word [bp+4]
		mov	si,word [si+8]
		mov	al,byte [bx+si]
		mov	ah,0
		cmp	ax,9
		je	..@j3077
		cmp	ax,32
		je	..@j3077
..@j3077:
		je	..@j3072
		jmp	..@j3074
..@j3074:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TPARSER_$__$$_CHECKLOADBUFFER
