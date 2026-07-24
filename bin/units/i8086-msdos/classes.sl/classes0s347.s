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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_SETUPDATESTATE$BOOLEAN
CLASSES$_$TSTRINGS_$__$$_SETUPDATESTATE$BOOLEAN:
		push	bp
		mov	bp,sp
		push	word [bp+6]
		push	word [bp+6]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	CLASSES$_$TPERSISTENT_$__$$_FPONOTIFYOBSERVERS$TOBJECT$TFPOBSERVEDOPERATION$POINTER
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TPERSISTENT_$__$$_FPONOTIFYOBSERVERS$TOBJECT$TFPOBSERVEDOPERATION$POINTER
