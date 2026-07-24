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
	GLOBAL MATH_$$_RANDOMRANGE$INT64$INT64$$INT64
MATH_$$_RANDOMRANGE$INT64$INT64$$INT64:
		push	bp
		mov	bp,sp
		sub	sp,24
		mov	ax,word [bp+12]
		mov	dx,word [bp+14]
		mov	cx,word [bp+16]
		mov	bx,word [bp+18]
		sub	ax,word [bp+4]
		sbb	dx,word [bp+6]
		sbb	cx,word [bp+8]
		sbb	bx,word [bp+10]
		mov	word [bp-16],ax
		mov	word [bp-14],dx
		mov	word [bp-12],cx
		mov	word [bp-10],bx
		mov	bx,word [bp-16]
		mov	dx,word [bp-14]
		mov	cx,word [bp-12]
		mov	ax,word [bp-10]
		cmp	ax,0
		jl	..@j928
		jg	..@j929
		cmp	cx,0
		jb	..@j928
		ja	..@j929
		cmp	dx,0
		jb	..@j928
		ja	..@j929
		cmp	bx,0
		jb	..@j928
		jmp	..@j929
..@j928:
		mov	ax,word [bp-16]
		mov	dx,word [bp-14]
		mov	bx,word [bp-12]
		mov	cx,word [bp-10]
		not	bx
		not	cx
		not	dx
		neg	ax
		sbb	dx,-1
		sbb	bx,-1
		sbb	cx,-1
		jmp	..@j932
..@j929:
		mov	ax,word [bp-16]
		mov	dx,word [bp-14]
		mov	bx,word [bp-12]
		mov	cx,word [bp-10]
..@j932:
		push	cx
		push	bx
		push	dx
		push	ax
		call	SYSTEM_$$_RANDOM$INT64$$INT64
		mov	word [bp-24],dx
		mov	word [bp-22],cx
		mov	word [bp-20],bx
		mov	word [bp-18],ax
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		push	word [bp+18]
		push	word [bp+16]
		push	word [bp+14]
		push	word [bp+12]
		call	MATH_$$_MIN$INT64$INT64$$INT64
		mov	si,dx
		mov	dx,bx
		add	word [bp-24],si
		adc	word [bp-22],cx
		adc	word [bp-20],dx
		adc	word [bp-18],ax
		mov	ax,word [bp-24]
		mov	word [bp-8],ax
		mov	ax,word [bp-22]
		mov	word [bp-6],ax
		mov	ax,word [bp-20]
		mov	word [bp-4],ax
		mov	ax,word [bp-18]
		mov	word [bp-2],ax
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	MATH_$$_MIN$INT64$INT64$$INT64
EXTERN	SYSTEM_$$_RANDOM$INT64$$INT64
