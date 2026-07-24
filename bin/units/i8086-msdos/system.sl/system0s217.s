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
	GLOBAL SYSTEM_$$_P1EVL$REAL$PREAL$SMALLINT$$REAL
SYSTEM_$$_P1EVL$REAL$PREAL$SMALLINT$$REAL:
		push	bp
		mov	bp,sp
		sub	sp,18
		mov	bx,word [bp+6]
		wait fld	qword [bp+8]
		wait fadd	qword [bx]
		wait fstp	qword [bp-16]
		DB	09bh
		mov	dx,word [bp+4]
		dec	dx
		mov	word [bp-18],1
		cmp	dx,word [bp-18]
		jl	..@j2690
		dec	word [bp-18]
	ALIGN 2
..@j2691:
		inc	word [bp-18]
		wait fld	qword [bp+8]
		wait fmul	qword [bp-16]
		mov	bx,word [bp+6]
		mov	ax,word [bp-18]
		mov	si,ax
		mov	cl,3
		shl	si,cl
		wait fadd	qword [bx+si]
		wait fstp	qword [bp-16]
		DB	09bh
		cmp	dx,word [bp-18]
		jg	..@j2691
..@j2690:
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp-16]
		cld
		mov	cx,4
		rep
		movsw
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	12
