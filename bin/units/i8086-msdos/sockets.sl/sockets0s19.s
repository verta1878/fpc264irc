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
	GLOBAL SOCKETS_$$_FPFD_ZERO$TFDSET
SOCKETS_$$_FPFD_ZERO$TFDSET:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	word [bp-2],0
		dec	word [bp-2]
	ALIGN 2
..@j198:
		inc	word [bp-2]
		mov	bx,word [bp+4]
		mov	ax,word [bp-2]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	word [bx+si],0
		mov	word [bx+si+2],0
		cmp	word [bp-2],7
		jl	..@j198
		mov	sp,bp
		pop	bp
		ret	2
