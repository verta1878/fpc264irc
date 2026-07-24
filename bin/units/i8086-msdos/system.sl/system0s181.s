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
	GLOBAL fpc_varset_sub_sets
fpc_varset_sub_sets:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+4]
		dec	ax
		mov	cx,ax
		mov	word [bp-2],0
		cmp	cx,word [bp-2]
		jl	..@j2373
		dec	word [bp-2]
	ALIGN 2
..@j2374:
		inc	word [bp-2]
		mov	bx,word [bp+8]
		mov	si,word [bp-2]
		mov	al,byte [bx+si]
		not	al
		mov	bx,word [bp+10]
		mov	si,word [bp-2]
		mov	dl,byte [bx+si]
		and	dl,al
		mov	bx,word [bp+6]
		mov	si,word [bp-2]
		mov	byte [bx+si],dl
		cmp	cx,word [bp-2]
		jg	..@j2374
..@j2373:
		mov	sp,bp
		pop	bp
		ret	8
