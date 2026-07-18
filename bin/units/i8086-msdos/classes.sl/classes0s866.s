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
	GLOBAL CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEBOOLEAN$BOOLEAN
CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEBOOLEAN$BOOLEAN:
		push	bp
		mov	bp,sp
		cmp	byte [bp+4],0
		jne	..@j21239
		jmp	..@j21240
..@j21239:
		push	word [bp+6]
		mov	ax,0
		push	ax
		mov	ax,9
		push	ax
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEVALUE$TVALUETYPE
		jmp	..@j21245
..@j21240:
		push	word [bp+6]
		mov	ax,0
		push	ax
		mov	ax,8
		push	ax
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEVALUE$TVALUETYPE
..@j21245:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEVALUE$TVALUETYPE
