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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_DESTROY
CLASSES$_$TSTRINGS_$__$$_DESTROY:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jg	..@j8150
		jmp	..@j8151
..@j8150:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+36]
		call	ax
..@j8151:
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	CLASSES$_$TPERSISTENT_$__$$_DESTROY
		cmp	word [bp+6],0
		jne	..@j8160
		jmp	..@j8159
..@j8160:
		cmp	word [bp+4],0
		jne	..@j8158
		jmp	..@j8159
..@j8158:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+28]
		call	ax
..@j8159:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TPERSISTENT_$__$$_DESTROY
