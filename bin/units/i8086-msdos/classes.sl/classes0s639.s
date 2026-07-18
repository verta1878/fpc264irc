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
	GLOBAL CLASSES$_$TDATAMODULE_$__$$_READH$TREADER
CLASSES$_$TDATAMODULE_$__$$_READH$TREADER:
		push	bp
		mov	bp,sp
		push	word [bp+4]
		call	CLASSES$_$TREADER_$__$$_READINTEGER$$LONGINT
		mov	bx,word [bp+6]
		mov	word [bx+40],ax
		mov	word [bx+42],dx
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TREADER_$__$$_READINTEGER$$LONGINT
