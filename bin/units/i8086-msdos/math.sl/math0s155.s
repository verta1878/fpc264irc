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
	GLOBAL MATH_$$_MAX$INT64$INT64$$INT64
MATH_$$_MAX$INT64$INT64$$INT64:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+12]
		mov	ax,word [bp+14]
		mov	dx,word [bp+16]
		mov	cx,word [bp+18]
		cmp	cx,word [bp+10]
		jg	..@j1830
		jl	..@j1831
		cmp	dx,word [bp+8]
		ja	..@j1830
		jb	..@j1831
		cmp	ax,word [bp+6]
		ja	..@j1830
		jb	..@j1831
		cmp	bx,word [bp+4]
		ja	..@j1830
		jmp	..@j1831
		jmp	..@j1831
..@j1830:
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp+12]
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j1834
..@j1831:
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
..@j1834:
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	16
