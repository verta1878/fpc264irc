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
	GLOBAL CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITECURRENCY$CURRENCY
CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITECURRENCY$CURRENCY:
		push	bp
		mov	bp,sp
		push	word [bp+12]
		mov	ax,0
		push	ax
		mov	ax,16
		push	ax
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEVALUE$TVALUETYPE
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEQWORD$QWORD
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEQWORD$QWORD
EXTERN	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEVALUE$TVALUETYPE
