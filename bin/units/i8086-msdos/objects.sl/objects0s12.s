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
	GLOBAL OBJECTS$_$TRECT_$__$$_EMPTY$$BOOLEAN
OBJECTS$_$TRECT_$__$$_EMPTY$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		cmp	dx,word [si+10]
		jg	..@j82
		jl	..@j84
		cmp	ax,word [si+8]
		jae	..@j82
		jmp	..@j84
		jmp	..@j84
..@j84:
		mov	si,word [bp+4]
		mov	bx,word [bp+4]
		mov	dx,word [si+4]
		mov	ax,word [si+6]
		cmp	ax,word [bx+14]
		jg	..@j82
		jl	..@j83
		cmp	dx,word [bx+12]
		jae	..@j82
		jmp	..@j83
		jmp	..@j83
..@j82:
		mov	byte [bp-1],1
		jmp	..@j85
..@j83:
		mov	byte [bp-1],0
..@j85:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
