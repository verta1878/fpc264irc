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
	GLOBAL TYPES_$$_ISRECTEMPTY$TRECT$$BOOLEAN
TYPES_$$_ISRECTEMPTY$TRECT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx+8]
		mov	dx,word [bx+10]
		cmp	dx,word [si+2]
		jl	..@j673
		jg	..@j675
		cmp	ax,word [si]
		jbe	..@j673
		jmp	..@j675
		jmp	..@j675
..@j675:
		mov	si,word [bp+4]
		mov	bx,word [bp+4]
		mov	dx,word [si+12]
		mov	ax,word [si+14]
		cmp	ax,word [bx+6]
		jl	..@j673
		jg	..@j674
		cmp	dx,word [bx+4]
		jbe	..@j673
		jmp	..@j674
		jmp	..@j674
..@j673:
		mov	byte [bp-1],1
		jmp	..@j676
..@j674:
		mov	byte [bp-1],0
..@j676:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
