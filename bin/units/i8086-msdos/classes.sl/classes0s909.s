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
	GLOBAL CLASSES$_$TWRITER_$__$$_WRITEDATE$TDATETIME
CLASSES$_$TWRITER_$__$$_WRITEDATE$TDATETIME:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+12]
		push	word [bx+9]
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+12]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+74]
		call	ax
		mov	sp,bp
		pop	bp
		ret	10
