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
	GLOBAL MATH_$$_COMPAREVALUE$INT64$INT64$$TVALUERELATIONSHIP
MATH_$$_COMPAREVALUE$INT64$INT64$$TVALUERELATIONSHIP:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	byte [bp-1],1
		mov	bx,word [bp+12]
		mov	ax,word [bp+14]
		mov	dx,word [bp+16]
		mov	cx,word [bp+18]
		cmp	cx,word [bp+10]
		jne	..@j2361
		cmp	dx,word [bp+8]
		jne	..@j2361
		cmp	ax,word [bp+6]
		jne	..@j2361
		cmp	bx,word [bp+4]
		jne	..@j2361
		jmp	..@j2360
		jmp	..@j2361
..@j2360:
		mov	byte [bp-1],0
		jmp	..@j2364
..@j2361:
		mov	ax,word [bp+12]
		mov	dx,word [bp+14]
		mov	cx,word [bp+16]
		mov	bx,word [bp+18]
		cmp	bx,word [bp+10]
		jl	..@j2365
		jg	..@j2366
		cmp	cx,word [bp+8]
		jb	..@j2365
		ja	..@j2366
		cmp	dx,word [bp+6]
		jb	..@j2365
		ja	..@j2366
		cmp	ax,word [bp+4]
		jb	..@j2365
		jmp	..@j2366
		jmp	..@j2366
..@j2365:
		mov	byte [bp-1],-1
..@j2366:
..@j2364:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	16
