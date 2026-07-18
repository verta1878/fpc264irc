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
	GLOBAL VARUTILS_$$_SAFEARRAYELEMENTTOTAL$PVARARRAY$$SMALLINT
VARUTILS_$$_SAFEARRAYELEMENTTOTAL$PVARARRAY$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	word [bp-2],1
		mov	ax,word [bp+4]
		mov	word [bp-8],ax
		mov	bx,word [bp-8]
		mov	dx,word [bx]
		mov	ax,0
		sub	dx,1
		sbb	ax,0
		mov	word [bp-6],dx
		mov	word [bp-4],0
		mov	ax,word [bp-6]
		cmp	ax,word [bp-4]
		jl	..@j4710
		dec	word [bp-4]
	ALIGN 2
..@j4711:
		inc	word [bp-4]
		mov	ax,word [bp-2]
		cwd
		push	dx
		push	ax
		mov	ax,word [bp-4]
		mov	si,ax
		mov	cl,3
		shl	si,cl
		mov	bx,word [bp-8]
		push	word [bx+si+16]
		mov	bx,word [bp-8]
		push	word [bx+si+14]
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		mov	word [bp-2],ax
		mov	ax,word [bp-6]
		cmp	ax,word [bp-4]
		jg	..@j4711
..@j4710:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_mul_longint
