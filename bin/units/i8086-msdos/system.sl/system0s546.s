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
	GLOBAL fpc_dynarray_high
fpc_dynarray_high:
	GLOBAL FPC_DYNARRAY_HIGH
FPC_DYNARRAY_HIGH:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+4],0
		jne	..@j13796
		jmp	..@j13797
..@j13796:
		mov	bx,word [bp+4]
		mov	ax,word [bx-2]
		mov	word [bp-2],ax
		jmp	..@j13800
..@j13797:
		mov	word [bp-2],-1
..@j13800:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
