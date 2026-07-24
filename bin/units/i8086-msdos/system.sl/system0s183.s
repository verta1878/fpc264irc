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
	GLOBAL fpc_varset_comp_sets
fpc_varset_comp_sets:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	byte [bp-1],0
		mov	dx,word [bp+4]
		dec	dx
		mov	word [bp-4],0
		cmp	dx,word [bp-4]
		jl	..@j2393
		dec	word [bp-4]
	ALIGN 2
..@j2394:
		inc	word [bp-4]
		mov	bx,word [bp+8]
		mov	si,word [bp-4]
		mov	ax,word [bp+6]
		mov	word [bp-6],ax
		mov	di,word [bp-4]
		mov	al,byte [bx+si]
		mov	bx,word [bp-6]
		cmp	al,byte [bx+di]
		jne	..@j2395
		jmp	..@j2396
..@j2395:
		jmp	..@j2386
..@j2396:
		cmp	dx,word [bp-4]
		jg	..@j2394
..@j2393:
		mov	byte [bp-1],1
..@j2386:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
