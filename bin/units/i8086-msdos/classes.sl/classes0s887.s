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
	GLOBAL CLASSES$_$TWRITER_$__$$_CREATEDRIVER$TSTREAM$SMALLINT$$TABSTRACTOBJECTWRITER
CLASSES$_$TWRITER_$__$$_CREATEDRIVER$TSTREAM$SMALLINT$$TABSTRACTOBJECTWRITER:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word VMT_$CLASSES_$$_TBINARYOBJECTWRITER
		push	ax
		mov	ax,1
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_CREATE$TSTREAM$SMALLINT$$TBINARYOBJECTWRITER
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	CLASSES$_$TBINARYOBJECTWRITER_$__$$_CREATE$TSTREAM$SMALLINT$$TBINARYOBJECTWRITER
EXTERN	VMT_$CLASSES_$$_TBINARYOBJECTWRITER
