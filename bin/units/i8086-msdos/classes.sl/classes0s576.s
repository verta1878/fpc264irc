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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_BEFOREDESTRUCTION
CLASSES$_$TCOMPONENT_$__$$_BEFOREDESTRUCTION:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		test	word [bx+22],8
		je	..@j12638
		jmp	..@j12639
..@j12638:
		push	word [bp+4]
		call	CLASSES$_$TCOMPONENT_$__$$_DESTROYING
..@j12639:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TCOMPONENT_$__$$_DESTROYING
