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
	GLOBAL CLASSES$_$TPARSER_$__$$_SKIPWHITESPACE
CLASSES$_$TPARSER_$__$$_SKIPWHITESPACE:
		push	bp
		mov	bp,sp
		jmp	..@j3081
	ALIGN 2
..@j3080:
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	si,word [bp+4]
		mov	si,word [si+8]
		mov	al,byte [bx+si]
		cmp	al,9
		jb	..@j3084
		sub	al,9
		je	..@j3085
		dec	al
		je	..@j3086
		sub	al,3
		je	..@j3086
		sub	al,19
		je	..@j3085
		jmp	..@j3084
..@j3085:
		push	word [bp+4]
		call	CLASSES$_$TPARSER_$__$$_SKIPSPACES
		jmp	..@j3083
..@j3086:
		push	word [bp+4]
		call	CLASSES$_$TPARSER_$__$$_HANDLENEWLINE
		jmp	..@j3083
..@j3084:
		jmp	..@j3082
..@j3083:
..@j3081:
		jmp	..@j3080
..@j3082:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TPARSER_$__$$_HANDLENEWLINE
EXTERN	CLASSES$_$TPARSER_$__$$_SKIPSPACES
