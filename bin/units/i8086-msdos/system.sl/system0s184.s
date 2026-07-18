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
	GLOBAL fpc_varset_contains_sets
fpc_varset_contains_sets:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	byte [bp-1],0
		mov	dx,word [bp+4]
		dec	dx
		mov	word [bp-4],0
		cmp	dx,word [bp-4]
		jl	..@j2406
		dec	word [bp-4]
	ALIGN 2
..@j2407:
		inc	word [bp-4]
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		mov	al,byte [bx+si]
		not	al
		mov	bx,word [bp+8]
		mov	si,word [bp-4]
		mov	cl,byte [bx+si]
		and	cl,al
		test	cl,cl
		jne	..@j2408
		jmp	..@j2409
..@j2408:
		jmp	..@j2399
..@j2409:
		cmp	dx,word [bp-4]
		jg	..@j2407
..@j2406:
		mov	byte [bp-1],1
..@j2399:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
