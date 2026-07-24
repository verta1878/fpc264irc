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
	GLOBAL SYSTEM$_$STR_REAL$crcEDBAA446_$$_MAKE_FRAC_MASK$LONGWORD$QWORD$SMALLINT
SYSTEM$_$STR_REAL$crcEDBAA446_$$_MAKE_FRAC_MASK$LONGWORD$QWORD$SMALLINT:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],-64
		jle	..@j5214
		jmp	..@j5215
..@j5214:
		mov	bx,word [bp+6]
		mov	word [bx],-1
		mov	word [bx+2],-1
		mov	word [bx+4],-1
		mov	word [bx+6],-1
		mov	cx,word [bp+4]
		neg	cx
		sub	cx,64
		mov	ax,1
		mov	dx,0
		and	cx,31
		jz	..@j5220
..@j5221:
		shl	ax,1
		rcl	dx,1
		loop	..@j5221
..@j5220:
		sub	ax,1
		sbb	dx,0
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	word [bx+2],dx
		jmp	..@j5222
..@j5215:
		mov	cx,word [bp+4]
		neg	cx
		mov	di,1
		mov	ax,0
		mov	dx,0
		mov	si,0
		cmp	cx,64
		jl	..@j5225
		xor	di,di
		xor	ax,ax
		xor	dx,dx
		xor	si,si
		jmp	..@j5227
..@j5225:
		test	cx,cx
		je	..@j5227
..@j5226:
		shl	di,1
		rcl	ax,1
		rcl	dx,1
		rcl	si,1
		loop	..@j5226
..@j5227:
		sub	di,1
		sbb	ax,0
		sbb	dx,0
		sbb	si,0
		mov	bx,word [bp+6]
		mov	word [bx],di
		mov	word [bx+2],ax
		mov	word [bx+4],dx
		mov	word [bx+6],si
		mov	bx,word [bp+8]
		mov	word [bx],0
		mov	word [bx+2],0
..@j5222:
		mov	sp,bp
		pop	bp
		ret	8
