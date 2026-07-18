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
	GLOBAL MATH_$$_ISINFINITE$DOUBLE$$BOOLEAN
MATH_$$_ISINFINITE$DOUBLE$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		mov	ax,dx
		mov	dx,0
		mov	cl,4
		shr	ax,cl
		and	ax,2047
		mov	dx,0
		cmp	dx,0
		jne	..@j2046
		cmp	ax,2047
		jne	..@j2046
		jmp	..@j2045
..@j2045:
		mov	byte [bp-3],1
		jmp	..@j2047
..@j2046:
		mov	byte [bp-3],0
..@j2047:
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		and	dx,15
		cmp	dx,0
		jne	..@j2049
		cmp	ax,0
		jne	..@j2049
		jmp	..@j2050
..@j2050:
		mov	dx,word [bp+4]
		mov	ax,word [bp+6]
		cmp	ax,0
		jne	..@j2049
		cmp	dx,0
		jne	..@j2049
		jmp	..@j2048
..@j2048:
		mov	byte [bp-2],1
		jmp	..@j2051
..@j2049:
		mov	byte [bp-2],0
..@j2051:
		cmp	byte [bp-3],0
		jne	..@j2054
		jmp	..@j2053
..@j2054:
		cmp	byte [bp-2],0
		jne	..@j2052
		jmp	..@j2053
..@j2052:
		mov	byte [bp-1],1
		jmp	..@j2055
..@j2053:
		mov	byte [bp-1],0
..@j2055:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	8
