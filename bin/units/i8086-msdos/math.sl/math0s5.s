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
	GLOBAL MATH_$$_SIGN$INT64$$TVALUESIGN
MATH_$$_SIGN$INT64$$TVALUESIGN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		mov	cx,word [bp+10]
		cmp	cx,0
		jl	..@j53
		jg	..@j54
		cmp	dx,0
		jb	..@j53
		ja	..@j54
		cmp	ax,0
		jb	..@j53
		ja	..@j54
		cmp	bx,0
		jb	..@j53
		jmp	..@j54
..@j53:
		mov	byte [bp-1],-1
		jmp	..@j57
..@j54:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	cx,word [bp+8]
		mov	bx,word [bp+10]
		cmp	bx,0
		jg	..@j58
		jl	..@j59
		cmp	cx,0
		ja	..@j58
		jb	..@j59
		cmp	dx,0
		ja	..@j58
		jb	..@j59
		cmp	ax,0
		ja	..@j58
		jmp	..@j59
..@j58:
		mov	byte [bp-1],1
		jmp	..@j62
..@j59:
		mov	byte [bp-1],0
..@j62:
..@j57:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	8
