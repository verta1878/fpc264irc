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
	GLOBAL CLASSES$_$TWRITER_$__$$_WRITEVARIANT$VARIANT
CLASSES$_$TWRITER_$__$$_WRITEVARIANT$VARIANT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+20]
		push	word [bx+9]
		sub	sp,16
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,8
		rep
		movsw
		mov	bx,word [bp+20]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+84]
		call	ax
		mov	sp,bp
		pop	bp
		ret	18
