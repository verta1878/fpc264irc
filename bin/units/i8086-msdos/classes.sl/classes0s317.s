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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_SETNAMEVALUESEPARATOR$CHAR
CLASSES$_$TSTRINGS_$__$$_SETNAMEVALUESEPARATOR$CHAR:
		push	bp
		mov	bp,sp
		push	word [bp+6]
		call	CLASSES$_$TSTRINGS_$__$$_CHECKSPECIALCHARS
		mov	bx,word [bp+6]
		mov	al,byte [bp+4]
		mov	byte [bx+9],al
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TSTRINGS_$__$$_CHECKSPECIALCHARS
