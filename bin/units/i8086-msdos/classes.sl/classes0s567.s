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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_UPDATING
CLASSES$_$TCOMPONENT_$__$$_UPDATING:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		mov	al,byte [bx+22]
		mov	ah,0
		or	ax,64
		mov	byte [bx+22],al
		mov	sp,bp
		pop	bp
		ret	2
