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
	GLOBAL CLASSES$_$TBASICACTIONLINK_$__$$_UPDATE$$BOOLEAN
CLASSES$_$TBASICACTIONLINK_$__$$_UPDATE$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		push	word [bx+6]
		mov	bx,word [bp+4]
		mov	bx,word [bx+6]
		mov	bx,word [bx]
		mov	ax,word [bx+120]
		call	ax
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
