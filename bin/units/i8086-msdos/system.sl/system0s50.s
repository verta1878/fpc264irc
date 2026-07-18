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
	GLOBAL fpc_hugeptr_cmp_normalized_be
fpc_hugeptr_cmp_normalized_be:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+8]
		mov	ax,word [bp+10]
		mov	dx,0
		mov	cx,4
..@j361:
		shl	ax,1
		rcl	dx,1
		loop	..@j361
		mov	bx,word [bp+8]
		mov	cx,word [bp+10]
		mov	si,0
		add	bx,ax
		adc	si,dx
		mov	ax,word [bp+4]
		mov	ax,word [bp+6]
		mov	dx,0
		mov	cx,4
..@j362:
		shl	ax,1
		rcl	dx,1
		loop	..@j362
		mov	cx,word [bp+4]
		mov	di,word [bp+6]
		mov	di,0
		add	cx,ax
		adc	di,dx
		cmp	si,di
		jl	..@j359
		jg	..@j360
		cmp	bx,cx
		jbe	..@j359
		jmp	..@j360
..@j359:
		mov	byte [bp-1],1
		jmp	..@j363
..@j360:
		mov	byte [bp-1],0
..@j363:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	8
