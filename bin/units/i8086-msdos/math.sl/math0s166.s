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
	GLOBAL MATH_$$_ENSURERANGE$INT64$INT64$INT64$$INT64
MATH_$$_ENSURERANGE$INT64$INT64$INT64$$INT64:
		push	bp
		mov	bp,sp
		sub	sp,8
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp+20]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp-8]
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		mov	cx,word [bp-2]
		cmp	cx,word [bp+18]
		jl	..@j1934
		jg	..@j1935
		cmp	dx,word [bp+16]
		jb	..@j1934
		ja	..@j1935
		cmp	ax,word [bp+14]
		jb	..@j1934
		ja	..@j1935
		cmp	bx,word [bp+12]
		jb	..@j1934
		jmp	..@j1935
		jmp	..@j1935
..@j1934:
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp+12]
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j1938
..@j1935:
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		mov	cx,word [bp-4]
		mov	bx,word [bp-2]
		cmp	bx,word [bp+10]
		jg	..@j1939
		jl	..@j1940
		cmp	cx,word [bp+8]
		ja	..@j1939
		jb	..@j1940
		cmp	dx,word [bp+6]
		ja	..@j1939
		jb	..@j1940
		cmp	ax,word [bp+4]
		ja	..@j1939
		jmp	..@j1940
		jmp	..@j1940
..@j1939:
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
..@j1940:
..@j1938:
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	24
