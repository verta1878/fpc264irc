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
	GLOBAL CLASSES$_$TWRITER_$__$$_WRITEBOOLEAN$BOOLEAN
CLASSES$_$TWRITER_$__$$_WRITEBOOLEAN$BOOLEAN:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		push	word [bx+9]
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+68]
		call	ax
		mov	sp,bp
		pop	bp
		ret	4
