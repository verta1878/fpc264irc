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
	GLOBAL CLASSES_$$_WIDECHARTOORD$POINTER$$LONGWORD
CLASSES_$$_WIDECHARTOORD$POINTER$$LONGWORD:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	dx,word [bx]
		mov	ax,0
		mov	word [bp-4],dx
		mov	word [bp-2],ax
		mov	bx,word [bp+4]
		add	word [bx],2
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
