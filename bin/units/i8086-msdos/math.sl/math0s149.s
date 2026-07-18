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
	GLOBAL MATH_$$_MINVALUE$PEXTENDED$SMALLINT$$EXTENDED
MATH_$$_MINVALUE$PEXTENDED$SMALLINT$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	ax,word [bp+6]
		lea	di,[bp-10]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,5
		rep
		movsw
		mov	ax,word [bp+4]
		dec	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-20],cx
		mov	word [bp-18],ax
		mov	word [bp-14],1
		mov	word [bp-12],0
		mov	ax,word [bp-18]
		cmp	ax,word [bp-12]
		jl	..@j1768
		jg	..@j1770
		mov	ax,word [bp-20]
		cmp	ax,word [bp-14]
		jb	..@j1768
..@j1770:
		sub	word [bp-14],1
		sbb	word [bp-12],0
	ALIGN 2
..@j1769:
		add	word [bp-14],1
		adc	word [bp-12],0
		mov	bx,word [bp+6]
		mov	ax,word [bp-14]
		mov	si,ax
		mov	ax,10
		mul	si
		mov	si,ax
		wait fld	tword [bp-10]
		wait fld	tword [bx+si]
		wait fcompp
		fstsw	[bp-16]
		mov	ah,byte [bp-15]
		sahf
		jp	..@j1773
		jb	..@j1771
..@j1773:
		jmp	..@j1772
..@j1771:
		mov	bx,word [bp+6]
		mov	ax,word [bp-14]
		mov	si,ax
		mov	ax,10
		mul	si
		mov	si,ax
		lea	di,[bp-10]
		push	ss
		pop	es
		lea	si,[bx+si]
		cld
		mov	cx,5
		rep
		movsw
..@j1772:
		mov	ax,word [bp-18]
		cmp	ax,word [bp-12]
		jg	..@j1769
		jl	..@j1776
		mov	ax,word [bp-20]
		cmp	ax,word [bp-14]
		ja	..@j1769
..@j1776:
..@j1768:
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	4
