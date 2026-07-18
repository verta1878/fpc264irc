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
	GLOBAL MATH_$$_SUMINT$PINT64$LONGINT$$INT64
MATH_$$_SUMINT$PINT64$LONGINT$$INT64:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	word [bp-8],0
		mov	word [bp-6],0
		mov	word [bp-4],0
		mov	word [bp-2],0
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-16],ax
		mov	di,dx
		mov	word [bp-12],0
		mov	word [bp-10],0
		cmp	di,word [bp-10]
		jl	..@j740
		jg	..@j742
		mov	ax,word [bp-16]
		cmp	ax,word [bp-12]
		jb	..@j740
..@j742:
		sub	word [bp-12],1
		sbb	word [bp-10],0
	ALIGN 2
..@j741:
		add	word [bp-12],1
		adc	word [bp-10],0
		mov	ax,word [bp+8]
		mov	word [bp-14],ax
		mov	ax,word [bp-12]
		mov	si,ax
		mov	cl,3
		shl	si,cl
		mov	bx,word [bp-14]
		mov	ax,word [bx+si]
		mov	bx,word [bp-14]
		mov	dx,word [bx+si+2]
		mov	bx,word [bp-14]
		mov	cx,word [bx+si+4]
		mov	bx,word [bp-14]
		mov	si,word [bx+si+6]
		add	ax,word [bp-8]
		adc	dx,word [bp-6]
		adc	cx,word [bp-4]
		adc	si,word [bp-2]
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		mov	word [bp-4],cx
		mov	word [bp-2],si
		cmp	di,word [bp-10]
		jg	..@j741
		jl	..@j745
		mov	ax,word [bp-16]
		cmp	ax,word [bp-12]
		ja	..@j741
..@j745:
..@j740:
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	6
