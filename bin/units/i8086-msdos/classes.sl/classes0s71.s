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
	GLOBAL CLASSES$_$THANDLESTREAM_$__$$_SETSIZE$INT64
CLASSES$_$THANDLESTREAM_$__$$_SETSIZE$INT64:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+12]
		push	word [bx+2]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		call	SYSUTILS_$$_FILETRUNCATE$WORD$INT64$$BOOLEAN
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	SYSUTILS_$$_FILETRUNCATE$WORD$INT64$$BOOLEAN
