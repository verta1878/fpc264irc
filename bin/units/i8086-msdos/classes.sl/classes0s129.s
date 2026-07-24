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
	GLOBAL CLASSES$_$TPARSER_$__$$_CHECKLOADBUFFER
CLASSES$_$TPARSER_$__$$_CHECKLOADBUFFER:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	si,word [bp+4]
		mov	si,word [si+8]
		cmp	byte [bx+si],0
		je	..@j2909
		jmp	..@j2910
..@j2909:
		push	word [bp+4]
		call	CLASSES$_$TPARSER_$__$$_LOADBUFFER
..@j2910:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TPARSER_$__$$_LOADBUFFER
