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
	GLOBAL MATH_$$_DIVMOD$LONGINT$LONGINT$LONGINT$LONGINT
MATH_$$_DIVMOD$LONGINT$LONGINT$LONGINT$LONGINT:
		push	bp
		mov	bp,sp
		mov	dx,word [bp+12]
		mov	ax,word [bp+14]
		cmp	ax,0
		jl	..@j2283
		jg	..@j2284
		cmp	dx,0
		jb	..@j2283
		jmp	..@j2284
..@j2283:
		mov	ax,word [bp+12]
		mov	dx,word [bp+14]
		not	dx
		neg	ax
		sbb	dx,-1
		mov	word [bp+12],ax
		mov	word [bp+14],dx
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+14]
		push	word [bp+12]
		call	fpc_div_longint
		not	dx
		neg	ax
		sbb	dx,-1
		mov	bx,word [bp+6]
		mov	word [bx],ax
		mov	word [bx+2],dx
		mov	bx,word [bp+6]
		push	word [bx+2]
		push	word [bx]
		push	word [bp+10]
		push	word [bp+8]
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		mov	bx,word [bp+12]
		mov	cx,word [bp+14]
		add	ax,bx
		adc	dx,cx
		not	dx
		neg	ax
		sbb	dx,-1
		mov	bx,word [bp+4]
		mov	word [bx],ax
		mov	word [bx+2],dx
		jmp	..@j2301
..@j2284:
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+14]
		push	word [bp+12]
		call	fpc_div_longint
		mov	bx,word [bp+6]
		mov	word [bx],ax
		mov	word [bx+2],dx
		mov	bx,word [bp+6]
		push	word [bx+2]
		push	word [bx]
		push	word [bp+10]
		push	word [bp+8]
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		mov	cx,word [bp+12]
		mov	bx,word [bp+14]
		sub	cx,ax
		sbb	bx,dx
		mov	si,word [bp+4]
		mov	word [si],cx
		mov	word [si+2],bx
..@j2301:
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	fpc_mul_longint
EXTERN	fpc_div_longint
