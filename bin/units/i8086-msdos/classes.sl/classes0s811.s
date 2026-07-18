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
	GLOBAL CLASSES$_$TREADER_$__$$_ENDREFERENCES
CLASSES$_$TREADER_$__$$_ENDREFERENCES:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		push	word [bx+17]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		mov	bx,word [bp+4]
		mov	word [bx+17],0
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
