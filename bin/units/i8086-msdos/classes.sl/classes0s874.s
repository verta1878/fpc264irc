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
	GLOBAL CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEMETHODNAME$ANSISTRING
CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEMETHODNAME$ANSISTRING:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j21471
		mov	bx,word [bx-2]
..@j21471:
		cmp	bx,0
		jg	..@j21469
		jmp	..@j21470
..@j21469:
		push	word [bp+6]
		mov	ax,0
		push	ax
		mov	ax,7
		push	ax
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEVALUE$TVALUETYPE
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITESTR$ANSISTRING
		jmp	..@j21480
..@j21470:
		push	word [bp+6]
		mov	ax,0
		push	ax
		mov	ax,13
		push	ax
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEVALUE$TVALUETYPE
..@j21480:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITESTR$ANSISTRING
EXTERN	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEVALUE$TVALUETYPE
