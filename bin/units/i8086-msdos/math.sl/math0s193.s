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
	GLOBAL MATH_$$_COMPAREVALUE$QWORD$QWORD$$TVALUERELATIONSHIP
MATH_$$_COMPAREVALUE$QWORD$QWORD$$TVALUERELATIONSHIP:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	byte [bp-1],1
		mov	bx,word [bp+12]
		mov	ax,word [bp+14]
		mov	dx,word [bp+16]
		mov	cx,word [bp+18]
		cmp	cx,word [bp+10]
		jne	..@j2374
		cmp	dx,word [bp+8]
		jne	..@j2374
		cmp	ax,word [bp+6]
		jne	..@j2374
		cmp	bx,word [bp+4]
		jne	..@j2374
		jmp	..@j2373
		jmp	..@j2374
..@j2373:
		mov	byte [bp-1],0
		jmp	..@j2377
..@j2374:
		mov	ax,word [bp+12]
		mov	dx,word [bp+14]
		mov	cx,word [bp+16]
		mov	bx,word [bp+18]
		cmp	bx,word [bp+10]
		jb	..@j2378
		ja	..@j2379
		cmp	cx,word [bp+8]
		jb	..@j2378
		ja	..@j2379
		cmp	dx,word [bp+6]
		jb	..@j2378
		ja	..@j2379
		cmp	ax,word [bp+4]
		jb	..@j2378
		jmp	..@j2379
		jmp	..@j2379
..@j2378:
		mov	byte [bp-1],-1
..@j2379:
..@j2377:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	16
