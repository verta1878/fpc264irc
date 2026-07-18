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
	GLOBAL CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITESIGNATURE
CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITESIGNATURE:
		push	bp
		mov	bp,sp
		push	word [bp+4]
		mov	ax,word TC_$CLASSES_$$_FILERSIGNATURE
		push	ax
		mov	ax,0
		push	ax
		mov	ax,4
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	TC_$CLASSES_$$_FILERSIGNATURE
