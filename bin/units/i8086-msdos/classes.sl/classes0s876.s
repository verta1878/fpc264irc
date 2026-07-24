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
	GLOBAL CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITESTRING$ANSISTRING
CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITESTRING$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j21518
		mov	bx,word [bx-2]
..@j21518:
		mov	word [bp-2],bx
		cmp	word [bp-2],255
		jle	..@j21519
		jmp	..@j21520
..@j21519:
		push	word [bp+6]
		mov	ax,0
		push	ax
		mov	ax,6
		push	ax
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEVALUE$TVALUETYPE
		mov	al,byte [bp-2]
		mov	byte [bp-3],al
		push	word [bp+6]
		lea	ax,[bp-3]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		jmp	..@j21533
..@j21520:
		push	word [bp+6]
		mov	ax,0
		push	ax
		mov	ax,12
		push	ax
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEVALUE$TVALUETYPE
		push	word [bp+6]
		mov	ax,word [bp-2]
		cwd
		push	dx
		push	ax
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEDWORD$LONGWORD
..@j21533:
		cmp	word [bp-2],0
		jg	..@j21542
		jmp	..@j21543
..@j21542:
		push	word [bp+6]
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [bp-2]
		cwd
		push	dx
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
..@j21543:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEDWORD$LONGWORD
EXTERN	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEVALUE$TVALUETYPE
