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
	GLOBAL TYPES$_$TRECT_$__$$_NORMALIZERECT
TYPES$_$TRECT_$__$$_NORMALIZERECT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	si,word [bp+4]
		mov	bx,word [bp+4]
		mov	dx,word [si+4]
		mov	ax,word [si+6]
		cmp	ax,word [bx+14]
		jg	..@j381
		jl	..@j382
		cmp	dx,word [bx+12]
		ja	..@j381
		jmp	..@j382
		jmp	..@j382
..@j381:
		mov	bx,word [bp+4]
		mov	ax,word [bx+4]
		mov	word [bp-4],ax
		mov	ax,word [bx+6]
		mov	word [bp-2],ax
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [si+12]
		mov	word [bx+4],ax
		mov	ax,word [si+14]
		mov	word [bx+6],ax
		mov	bx,word [bp+4]
		mov	ax,word [bp-4]
		mov	word [bx+12],ax
		mov	ax,word [bp-2]
		mov	word [bx+14],ax
..@j382:
		mov	si,word [bp+4]
		mov	bx,word [bp+4]
		mov	dx,word [si]
		mov	ax,word [si+2]
		cmp	ax,word [bx+10]
		jg	..@j389
		jl	..@j390
		cmp	dx,word [bx+8]
		ja	..@j389
		jmp	..@j390
		jmp	..@j390
..@j389:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-4],ax
		mov	ax,word [bx+2]
		mov	word [bp-2],ax
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [si+8]
		mov	word [bx],ax
		mov	ax,word [si+10]
		mov	word [bx+2],ax
		mov	bx,word [bp+4]
		mov	ax,word [bp-4]
		mov	word [bx+8],ax
		mov	ax,word [bp-2]
		mov	word [bx+10],ax
..@j390:
		mov	sp,bp
		pop	bp
		ret	2
