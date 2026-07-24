BITS 16
CPU 8086
SECTION text use16 class=code
SECTION rodata class=data
SECTION data class=data
SECTION fpc class=data
SECTION bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION text

SECTION text
	ALIGN 2
	GLOBAL CHARSET_$$_FIND$WORD$PREVERSECHARMAPPING$LONGINT$$PREVERSECHARMAPPING
CHARSET_$$_FIND$WORD$PREVERSECHARMAPPING$LONGINT$$PREVERSECHARMAPPING:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		jne	..@j69
		cmp	ax,0
		jne	..@j69
		jmp	..@j68
..@j68:
		mov	word [bp-2],0
		jmp	..@j66
..@j69:
		mov	ax,word [bp+8]
		mov	word [bp-16],ax
		mov	word [bp-6],0
		mov	word [bp-4],0
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-10],ax
		mov	word [bp-8],dx
		jmp	..@j79
	ALIGN 2
..@j78:
		mov	ax,0
		push	ax
		mov	ax,2
		push	ax
		mov	bx,word [bp-6]
		mov	cx,word [bp-4]
		mov	ax,word [bp-10]
		mov	dx,word [bp-8]
		add	ax,bx
		adc	dx,cx
		push	dx
		push	ax
		call	fpc_div_longint
		mov	word [bp-14],ax
		mov	word [bp-12],dx
		mov	bx,word [bp-16]
		mov	ax,word [bp-14]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bx+si]
		cmp	ax,word [bp+10]
		jb	..@j87
		jmp	..@j88
..@j87:
		mov	ax,word [bp-14]
		mov	dx,word [bp-12]
		add	ax,1
		adc	dx,0
		mov	word [bp-6],ax
		mov	word [bp-4],dx
		jmp	..@j91
..@j88:
		mov	ax,word [bp-14]
		mov	word [bp-10],ax
		mov	ax,word [bp-12]
		mov	word [bp-8],ax
..@j91:
..@j79:
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		cmp	dx,word [bp-8]
		jl	..@j78
		jg	..@j80
		cmp	ax,word [bp-10]
		jb	..@j78
		jmp	..@j80
		jmp	..@j80
..@j80:
		mov	dx,word [bp-6]
		mov	ax,word [bp-4]
		cmp	ax,word [bp-8]
		jne	..@j95
		cmp	dx,word [bp-10]
		jne	..@j95
		jmp	..@j96
		jmp	..@j95
..@j96:
		mov	bx,word [bp-16]
		mov	ax,word [bp-6]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bx+si]
		cmp	ax,word [bp+10]
		je	..@j94
		jmp	..@j95
..@j94:
		mov	bx,word [bp-16]
		mov	ax,word [bp-6]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		lea	ax,[bx+si]
		mov	word [bp-2],ax
		jmp	..@j99
..@j95:
		mov	word [bp-2],0
..@j99:
..@j66:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_div_longint
