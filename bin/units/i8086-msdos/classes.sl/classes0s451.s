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
	GLOBAL CLASSES$_$TTHREAD_$__$$_NAMETHREADFORDEBUGGING$UNICODESTRING$WORD
CLASSES$_$TTHREAD_$__$$_NAMETHREADFORDEBUGGING$UNICODESTRING$WORD:
		push	bp
		mov	bp,sp
		push	word [bp+6]
		call	fpc_unicodestr_incr_ref
		lea	ax,[bp+6]
		push	ax
		call	fpc_unicodestr_decr_ref
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_unicodestr_decr_ref
EXTERN	fpc_unicodestr_incr_ref
