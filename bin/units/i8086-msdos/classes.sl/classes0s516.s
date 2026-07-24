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
	GLOBAL CLASSES$_$TUNRESOLVEDINSTANCE_$__$$_ROOTUNRESOLVED$$TUNRESOLVEDREFERENCE
CLASSES$_$TUNRESOLVEDINSTANCE_$__$$_ROOTUNRESOLVED$$TUNRESOLVEDREFERENCE:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	word [bp-2],0
		mov	bx,word [bp+4]
		cmp	word [bx+6],0
		jne	..@j11480
		jmp	..@j11481
..@j11480:
		mov	bx,word [bp+4]
		mov	bx,word [bx+6]
		mov	ax,word [bx+4]
		mov	word [bp-2],ax
..@j11481:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
