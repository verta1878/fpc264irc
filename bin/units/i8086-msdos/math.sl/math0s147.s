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
	GLOBAL MATH_$$_MAXVALUE$PDOUBLE$SMALLINT$$DOUBLE
MATH_$$_MAXVALUE$PDOUBLE$SMALLINT$$DOUBLE:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	ax,word [bp+6]
		lea	di,[bp-8]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,4
		rep
		movsw
		mov	ax,word [bp+4]
		dec	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-16],cx
		mov	dx,ax
		mov	word [bp-12],1
		mov	word [bp-10],0
		cmp	dx,word [bp-10]
		jl	..@j1744
		jg	..@j1746
		mov	ax,word [bp-16]
		cmp	ax,word [bp-12]
		jb	..@j1744
..@j1746:
		sub	word [bp-12],1
		sbb	word [bp-10],0
	ALIGN 2
..@j1745:
		add	word [bp-12],1
		adc	word [bp-10],0
		mov	bx,word [bp+6]
		mov	ax,word [bp-12]
		mov	si,ax
		mov	cl,3
		shl	si,cl
		wait fld	qword [bp-8]
		wait fld	qword [bx+si]
		wait fcompp
		fstsw	[bp-14]
		mov	ah,byte [bp-13]
		sahf
		jp	..@j1749
		ja	..@j1747
..@j1749:
		jmp	..@j1748
..@j1747:
		mov	bx,word [bp+6]
		mov	ax,word [bp-12]
		mov	si,ax
		mov	cl,3
		shl	si,cl
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bx+si]
		cld
		mov	cx,4
		rep
		movsw
..@j1748:
		cmp	dx,word [bp-10]
		jg	..@j1745
		jl	..@j1752
		mov	ax,word [bp-16]
		cmp	ax,word [bp-12]
		ja	..@j1745
..@j1752:
..@j1744:
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	4
