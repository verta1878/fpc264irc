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
	GLOBAL CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITEWORD$WORD
CLASSES$_$OBJECTTEXTTOBINARY$TSTREAM$TSTREAM_$$_WRITEWORD$WORD:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+4]
		mov	word [bp+4],ax
		mov	bx,word [bp+6]
		push	word [bx+4]
		push	word [bp+4]
		call	CLASSES$_$TSTREAM_$__$$_WRITEWORD$WORD
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TSTREAM_$__$$_WRITEWORD$WORD
