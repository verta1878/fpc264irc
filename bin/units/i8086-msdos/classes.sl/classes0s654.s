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
	GLOBAL CLASSES$_$TCOMPONENTPAGE_$__$$_DESTROY
CLASSES$_$TCOMPONENTPAGE_$__$$_DESTROY:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jg	..@j13888
		jmp	..@j13889
..@j13888:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+36]
		call	ax
..@j13889:
		mov	bx,word [bp+6]
		push	word [bx+14]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	CLASSES$_$TCOLLECTIONITEM_$__$$_DESTROY
		cmp	word [bp+6],0
		jne	..@j13900
		jmp	..@j13899
..@j13900:
		cmp	word [bp+4],0
		jne	..@j13898
		jmp	..@j13899
..@j13898:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+28]
		call	ax
..@j13899:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TCOLLECTIONITEM_$__$$_DESTROY
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
