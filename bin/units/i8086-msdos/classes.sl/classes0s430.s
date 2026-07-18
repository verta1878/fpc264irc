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
	GLOBAL CLASSES$_$TTHREAD_$__$$_START
CLASSES$_$TTHREAD_$__$$_START:
		push	bp
		mov	bp,sp
		push	word [bp+4]
		call	CLASSES$_$TTHREAD_$__$$_RESUME
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TTHREAD_$__$$_RESUME
