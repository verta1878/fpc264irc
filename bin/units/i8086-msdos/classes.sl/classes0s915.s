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
	GLOBAL CLASSES$_$TWRITER_$__$$_WRITELISTBEGIN
CLASSES$_$TWRITER_$__$$_WRITELISTBEGIN:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		push	word [bx+9]
		mov	bx,word [bp+4]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+56]
		call	ax
		mov	sp,bp
		pop	bp
		ret	2
