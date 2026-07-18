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
	GLOBAL CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEEXTENDED$EXTENDED
CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEEXTENDED$EXTENDED:
		push	bp
		mov	bp,sp
		push	word [bp+14]
		lea	ax,[bp+4]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,10
		push	ax
		mov	bx,word [bp+14]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		mov	sp,bp
		pop	bp
		ret	12
