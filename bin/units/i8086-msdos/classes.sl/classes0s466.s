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
	GLOBAL CLASSES$_$TSIMPLEPROCTHREAD_$__$$_EXECUTE
CLASSES$_$TSIMPLEPROCTHREAD_$__$$_EXECUTE:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		mov	byte [bx+5],1
		mov	bx,word [bp+4]
		push	word [bx+28]
		mov	bx,word [bp+4]
		mov	ax,word [bx+24]
		call	ax
		mov	sp,bp
		pop	bp
		ret	2
