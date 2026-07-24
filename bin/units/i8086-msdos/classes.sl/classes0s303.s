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
	GLOBAL CLASSES$_$TSTRINGSENUMERATOR_$__$$_GETCURRENT$$ANSISTRING
CLASSES$_$TSTRINGSENUMERATOR_$__$$_GETCURRENT$$ANSISTRING:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		push	word [bx+2]
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+4]
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		mov	sp,bp
		pop	bp
		ret	4
