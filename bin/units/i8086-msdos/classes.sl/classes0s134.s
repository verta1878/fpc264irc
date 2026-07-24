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
	GLOBAL CLASSES$_$TPARSER_$__$$_ISALPHANUM$$BOOLEAN
CLASSES$_$TPARSER_$__$$_ISALPHANUM$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+4]
		call	CLASSES$_$TPARSER_$__$$_ISALPHA$$BOOLEAN
		test	al,al
		jne	..@j2953
		jmp	..@j2955
..@j2955:
		push	word [bp+4]
		call	CLASSES$_$TPARSER_$__$$_ISNUMBER$$BOOLEAN
		test	al,al
		jne	..@j2953
		jmp	..@j2954
..@j2953:
		mov	byte [bp-1],1
		jmp	..@j2960
..@j2954:
		mov	byte [bp-1],0
..@j2960:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TPARSER_$__$$_ISNUMBER$$BOOLEAN
EXTERN	CLASSES$_$TPARSER_$__$$_ISALPHA$$BOOLEAN
