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
	GLOBAL MACPAS_$$_BROTL$LONGWORD$LONGWORD$$LONGWORD
MACPAS_$$_BROTL$LONGWORD$LONGWORD$$LONGWORD:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		mov	dx,word [bp+6]
		mov	cx,32
		mov	ax,0
		sub	cx,bx
		sbb	ax,dx
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		and	cx,31
		jz	..@j223
..@j224:
		shr	dx,1
		rcr	ax,1
		loop	..@j224
..@j223:
		mov	bx,word [bp+8]
		mov	si,word [bp+10]
		mov	cx,word [bp+4]
		and	cx,31
		jz	..@j225
..@j226:
		shl	bx,1
		rcl	si,1
		loop	..@j226
..@j225:
		or	bx,ax
		or	si,dx
		mov	word [bp-4],bx
		mov	word [bp-2],si
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
