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
	GLOBAL CLASSES$_$TDATAMODULE_$__$$_BEFOREDESTRUCTION
CLASSES$_$TDATAMODULE_$__$$_BEFOREDESTRUCTION:
		push	bp
		mov	bp,sp
		push	word [bp+4]
		call	CLASSES$_$TCOMPONENT_$__$$_DESTROYING
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	CLASSES_$$_REMOVEFIXUPREFERENCES$TCOMPONENT$ANSISTRING
		mov	bx,word [bp+4]
		cmp	byte [bx+54],0
		je	..@j13459
		jmp	..@j13460
..@j13459:
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+110]
		call	ax
..@j13460:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES_$$_REMOVEFIXUPREFERENCES$TCOMPONENT$ANSISTRING
EXTERN	CLASSES$_$TCOMPONENT_$__$$_DESTROYING
