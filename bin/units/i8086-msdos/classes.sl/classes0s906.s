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
	GLOBAL CLASSES$_$TWRITER_$__$$_WRITEFLOAT$EXTENDED
CLASSES$_$TWRITER_$__$$_WRITEFLOAT$EXTENDED:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+14]
		push	word [bx+9]
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		mov	bx,word [bp+14]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+70]
		call	ax
		mov	sp,bp
		pop	bp
		ret	12
