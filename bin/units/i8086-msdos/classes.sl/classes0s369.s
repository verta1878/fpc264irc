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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_INDEXOFOBJECT$TOBJECT$$SMALLINT
CLASSES$_$TSTRINGS_$__$$_INDEXOFOBJECT$TOBJECT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	word [bp-2],0
		jmp	..@j8624
	ALIGN 2
..@j8623:
		mov	ax,word [bp-2]
		inc	ax
		mov	word [bp-2],ax
..@j8624:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		cmp	ax,word [bp-2]
		jg	..@j8628
		jmp	..@j8625
..@j8628:
		push	word [bp+6]
		push	word [bp-2]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+66]
		call	ax
		cmp	ax,word [bp+4]
		jne	..@j8623
		jmp	..@j8625
..@j8625:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		cmp	ax,word [bp-2]
		je	..@j8635
		jmp	..@j8636
..@j8635:
		mov	word [bp-2],-1
..@j8636:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
