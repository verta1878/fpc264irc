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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_GETCOMPONENTCOUNT$$SMALLINT
CLASSES$_$TCOMPONENT_$__$$_GETCOMPONENTCOUNT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		cmp	word [bx+12],0
		je	..@j12087
		jmp	..@j12088
..@j12087:
		mov	word [bp-2],0
		jmp	..@j12091
..@j12088:
		mov	bx,word [bp+4]
		mov	bx,word [bx+12]
		mov	ax,word [bx+4]
		mov	word [bp-2],ax
..@j12091:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
