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
	GLOBAL CLASSES$_$TWRITER_$__$$_DESTROY
CLASSES$_$TWRITER_$__$$_DESTROY:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jg	..@j21848
		jmp	..@j21849
..@j21848:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+36]
		call	ax
..@j21849:
		mov	bx,word [bp+6]
		cmp	byte [bx+11],0
		jne	..@j21852
		jmp	..@j21853
..@j21852:
		mov	bx,word [bp+6]
		push	word [bx+9]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
..@j21853:
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		cmp	word [bp+6],0
		jne	..@j21862
		jmp	..@j21861
..@j21862:
		cmp	word [bp+4],0
		jne	..@j21860
		jmp	..@j21861
..@j21860:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+28]
		call	ax
..@j21861:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM$_$TOBJECT_$__$$_DESTROY
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
