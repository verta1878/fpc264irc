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
	GLOBAL MATH_$$_INRANGE$INT64$INT64$INT64$$BOOLEAN
MATH_$$_INRANGE$INT64$INT64$INT64$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+20]
		mov	ax,word [bp+22]
		mov	dx,word [bp+24]
		mov	cx,word [bp+26]
		cmp	cx,word [bp+18]
		jg	..@j1907
		jl	..@j1906
		cmp	dx,word [bp+16]
		ja	..@j1907
		jb	..@j1906
		cmp	ax,word [bp+14]
		ja	..@j1907
		jb	..@j1906
		cmp	bx,word [bp+12]
		jae	..@j1907
		jmp	..@j1906
		jmp	..@j1906
..@j1907:
		mov	ax,word [bp+20]
		mov	dx,word [bp+22]
		mov	cx,word [bp+24]
		mov	bx,word [bp+26]
		cmp	bx,word [bp+10]
		jl	..@j1905
		jg	..@j1906
		cmp	cx,word [bp+8]
		jb	..@j1905
		ja	..@j1906
		cmp	dx,word [bp+6]
		jb	..@j1905
		ja	..@j1906
		cmp	ax,word [bp+4]
		jbe	..@j1905
		jmp	..@j1906
		jmp	..@j1906
..@j1905:
		mov	byte [bp-1],1
		jmp	..@j1908
..@j1906:
		mov	byte [bp-1],0
..@j1908:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	24
