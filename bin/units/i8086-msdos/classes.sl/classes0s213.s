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
	GLOBAL CLASSES$_$TFPLISTENUMERATOR_$__$$_MOVENEXT$$BOOLEAN
CLASSES$_$TFPLISTENUMERATOR_$__$$_MOVENEXT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		inc	word [bx+4]
		mov	bx,word [bp+4]
		mov	bx,word [bx+2]
		mov	si,word [bp+4]
		mov	ax,word [bx+4]
		cmp	ax,word [si+4]
		mov	al,0
		jle	..@j4708
		inc	ax
..@j4708:
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
