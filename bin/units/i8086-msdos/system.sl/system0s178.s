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
	GLOBAL fpc_varset_set_range
fpc_varset_set_range:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+12]
		push	ax
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	dx,word [bp+6]
		mov	ax,word [bp+8]
		mov	word [bp-2],ax
		cmp	dx,word [bp-2]
		jl	..@j2346
		dec	word [bp-2]
	ALIGN 2
..@j2347:
		inc	word [bp-2]
		mov	ax,word [bp+10]
		mov	word [bp-4],ax
		mov	ax,word [bp-2]
		mov	di,ax
		mov	si,di
		mov	cl,3
		shr	si,cl
		and	di,7
		mov	bx,word [bp-4]
		mov	al,byte [bx+si]
		mov	ah,0
		mov	bx,1
		mov	cx,di
		shl	bx,cl
		or	ax,bx
		mov	bx,word [bp-4]
		mov	byte [bx+si],al
		cmp	dx,word [bp-2]
		jg	..@j2347
..@j2346:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
