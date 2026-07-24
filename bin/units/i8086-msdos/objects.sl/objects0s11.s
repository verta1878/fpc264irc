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
	GLOBAL OBJECTS_$$_CHECKEMPTY$TRECT
OBJECTS_$$_CHECKEMPTY$TRECT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		cmp	dx,word [si+10]
		jg	..@j69
		jl	..@j71
		cmp	ax,word [si+8]
		jae	..@j69
		jmp	..@j71
		jmp	..@j71
..@j71:
		mov	si,word [bp+4]
		mov	bx,word [bp+4]
		mov	dx,word [si+4]
		mov	ax,word [si+6]
		cmp	ax,word [bx+14]
		jg	..@j69
		jl	..@j70
		cmp	dx,word [bx+12]
		jae	..@j69
		jmp	..@j70
		jmp	..@j70
..@j69:
		mov	bx,word [bp+4]
		mov	word [bx],0
		mov	word [bx+2],0
		mov	bx,word [bp+4]
		mov	word [bx+4],0
		mov	word [bx+6],0
		mov	bx,word [bp+4]
		mov	word [bx+8],0
		mov	word [bx+10],0
		mov	bx,word [bp+4]
		mov	word [bx+12],0
		mov	word [bx+14],0
..@j70:
		mov	sp,bp
		pop	bp
		ret	2
