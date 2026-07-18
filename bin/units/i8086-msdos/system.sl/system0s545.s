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
	GLOBAL fpc_dynarray_length
fpc_dynarray_length:
	GLOBAL FPC_DYNARRAY_LENGTH
FPC_DYNARRAY_LENGTH:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+4],0
		jne	..@j13787
		jmp	..@j13788
..@j13787:
		mov	bx,word [bp+4]
		mov	ax,word [bx-2]
		inc	ax
		mov	word [bp-2],ax
		jmp	..@j13791
..@j13788:
		mov	word [bp-2],0
..@j13791:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
