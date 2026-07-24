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
	GLOBAL MATH_$$_DIVMOD$LONGINT$WORD$WORD$WORD
MATH_$$_DIVMOD$LONGINT$WORD$WORD$WORD:
		push	bp
		mov	bp,sp
		mov	dx,word [bp+10]
		mov	ax,word [bp+12]
		cmp	ax,0
		jl	..@j2209
		jg	..@j2210
		cmp	dx,0
		jb	..@j2209
		jmp	..@j2210
..@j2209:
		mov	ax,word [bp+10]
		mov	dx,word [bp+12]
		not	dx
		neg	ax
		sbb	dx,-1
		mov	word [bp+10],ax
		mov	word [bp+12],dx
		mov	ax,word [bp+8]
		mov	dx,0
		push	dx
		push	ax
		push	word [bp+12]
		push	word [bp+10]
		call	fpc_div_longint
		not	dx
		neg	ax
		sbb	dx,-1
		mov	bx,word [bp+6]
		mov	word [bx],ax
		mov	bx,word [bp+6]
		mov	ax,word [bp+8]
		mul	word [bx]
		mov	bx,0
		mov	dx,word [bp+10]
		mov	cx,word [bp+12]
		add	dx,ax
		adc	cx,bx
		not	cx
		neg	dx
		sbb	cx,-1
		mov	bx,word [bp+4]
		mov	word [bx],dx
		jmp	..@j2221
..@j2210:
		mov	ax,word [bp+8]
		mov	dx,0
		push	dx
		push	ax
		push	word [bp+12]
		push	word [bp+10]
		call	fpc_div_longint
		mov	bx,word [bp+6]
		mov	word [bx],ax
		mov	bx,word [bp+6]
		mov	ax,word [bp+8]
		mul	word [bx]
		mov	bx,0
		mov	dx,word [bp+10]
		mov	cx,word [bp+12]
		sub	dx,ax
		sbb	cx,bx
		mov	bx,word [bp+4]
		mov	word [bx],dx
..@j2221:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	fpc_div_longint
