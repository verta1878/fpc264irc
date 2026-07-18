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
	GLOBAL MATH_$$_DIVMOD$LONGINT$WORD$SMALLINT$SMALLINT
MATH_$$_DIVMOD$LONGINT$WORD$SMALLINT$SMALLINT:
		push	bp
		mov	bp,sp
		mov	dx,word [bp+10]
		mov	ax,word [bp+12]
		cmp	ax,0
		jl	..@j2232
		jg	..@j2233
		cmp	dx,0
		jb	..@j2232
		jmp	..@j2233
..@j2232:
		mov	ax,word [bp+10]
		mov	dx,word [bp+12]
		not	dx
		neg	ax
		sbb	dx,-1
		mov	word [bp+10],ax
		mov	word [bp+12],dx
		mov	dx,word [bp+8]
		mov	ax,0
		push	ax
		push	dx
		push	word [bp+12]
		push	word [bp+10]
		call	fpc_div_longint
		not	dx
		neg	ax
		sbb	dx,-1
		mov	bx,word [bp+6]
		mov	word [bx],ax
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		cwd
		push	dx
		push	ax
		mov	ax,word [bp+8]
		mov	dx,0
		push	dx
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		mov	bx,word [bp+10]
		mov	cx,word [bp+12]
		add	ax,bx
		adc	dx,cx
		not	dx
		neg	ax
		sbb	dx,-1
		mov	bx,word [bp+4]
		mov	word [bx],ax
		jmp	..@j2250
..@j2233:
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
		mov	ax,word [bx]
		cwd
		push	dx
		push	ax
		mov	dx,word [bp+8]
		mov	ax,0
		push	ax
		push	dx
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		mov	cx,word [bp+10]
		mov	bx,word [bp+12]
		sub	cx,ax
		sbb	bx,dx
		mov	bx,word [bp+4]
		mov	word [bx],cx
..@j2250:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	fpc_mul_longint
EXTERN	fpc_div_longint
