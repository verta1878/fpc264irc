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
	GLOBAL CLASSES$_$TREADER_$__$$_READLISTBEGIN
CLASSES$_$TREADER_$__$$_READLISTBEGIN:
		push	bp
		mov	bp,sp
		push	word [bp+4]
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		call	CLASSES$_$TREADER_$__$$_CHECKVALUE$TVALUETYPE
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TREADER_$__$$_CHECKVALUE$TVALUETYPE
