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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_GETNAMEVALUESEPARATOR$$CHAR
CLASSES$_$TSTRINGS_$__$$_GETNAMEVALUESEPARATOR$$CHAR:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+4]
		call	CLASSES$_$TSTRINGS_$__$$_CHECKSPECIALCHARS
		mov	bx,word [bp+4]
		mov	al,byte [bx+9]
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TSTRINGS_$__$$_CHECKSPECIALCHARS
