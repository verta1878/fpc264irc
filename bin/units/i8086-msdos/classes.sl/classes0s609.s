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
	GLOBAL CLASSES$_$TBASICACTION_$__$$_DESTROY
CLASSES$_$TBASICACTION_$__$$_DESTROY:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jg	..@j13173
		jmp	..@j13174
..@j13173:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+36]
		call	ax
..@j13174:
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	CLASSES$_$TCOMPONENT_$__$$_DESTROY
		jmp	..@j13182
	ALIGN 2
..@j13181:
		push	word [bp+6]
		mov	bx,word [bp+6]
		push	word [bx+42]
		call	CLASSES$_$TFPLIST_$__$$_LAST$$POINTER
		push	ax
		call	CLASSES$_$TBASICACTION_$__$$_UNREGISTERCHANGES$TBASICACTIONLINK
..@j13182:
		mov	bx,word [bp+6]
		mov	bx,word [bx+42]
		cmp	word [bx+4],0
		jg	..@j13181
		jmp	..@j13183
..@j13183:
		mov	bx,word [bp+6]
		push	word [bx+42]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		cmp	word [bp+6],0
		jne	..@j13194
		jmp	..@j13193
..@j13194:
		cmp	word [bp+4],0
		jne	..@j13192
		jmp	..@j13193
..@j13192:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+28]
		call	ax
..@j13193:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	CLASSES$_$TBASICACTION_$__$$_UNREGISTERCHANGES$TBASICACTIONLINK
EXTERN	CLASSES$_$TFPLIST_$__$$_LAST$$POINTER
EXTERN	CLASSES$_$TCOMPONENT_$__$$_DESTROY
