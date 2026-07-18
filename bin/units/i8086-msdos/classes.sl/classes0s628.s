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
	GLOBAL CLASSES$_$TDATAMODULE_$__$$_GETCHILDREN$TGETCHILDPROC$TCOMPONENT
CLASSES$_$TDATAMODULE_$__$$_GETCHILDREN$TGETCHILDPROC$TCOMPONENT:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		mov	word [bp-6],ax
		mov	ax,word [bx+2]
		mov	word [bp-4],ax
		push	word [bp+8]
		lea	ax,[bp-6]
		push	ax
		push	word [bp+4]
		call	CLASSES$_$TCOMPONENT_$__$$_GETCHILDREN$TGETCHILDPROC$TCOMPONENT
		mov	ax,word [bp+4]
		cmp	ax,word [bp+8]
		je	..@j13604
		jmp	..@j13605
..@j13604:
		push	word [bp+8]
		call	CLASSES$_$TCOMPONENT_$__$$_GETCOMPONENTCOUNT$$SMALLINT
		dec	ax
		mov	word [bp-10],ax
		mov	word [bp-2],0
		mov	ax,word [bp-10]
		cmp	ax,word [bp-2]
		jl	..@j13611
		dec	word [bp-2]
	ALIGN 2
..@j13612:
		inc	word [bp-2]
		push	word [bp+8]
		push	word [bp-2]
		call	CLASSES$_$TCOMPONENT_$__$$_GETCOMPONENT$SMALLINT$$TCOMPONENT
		mov	word [bp-8],ax
		push	word [bp-8]
		mov	bx,word [bp-8]
		mov	bx,word [bx]
		mov	ax,word [bx+104]
		call	ax
		test	al,al
		je	..@j13613
		jmp	..@j13614
..@j13613:
		push	word [bp-4]
		push	word [bp+8]
		push	word [bp-2]
		call	CLASSES$_$TCOMPONENT_$__$$_GETCOMPONENT$SMALLINT$$TCOMPONENT
		push	ax
		mov	ax,word [bp-6]
		call	ax
..@j13614:
		mov	ax,word [bp-10]
		cmp	ax,word [bp-2]
		jg	..@j13612
..@j13611:
..@j13605:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	CLASSES$_$TCOMPONENT_$__$$_GETCOMPONENT$SMALLINT$$TCOMPONENT
EXTERN	CLASSES$_$TCOMPONENT_$__$$_GETCOMPONENTCOUNT$$SMALLINT
EXTERN	CLASSES$_$TCOMPONENT_$__$$_GETCHILDREN$TGETCHILDPROC$TCOMPONENT
