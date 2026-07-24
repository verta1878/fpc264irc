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
	GLOBAL CRC_$$_shl$U128$BYTE$$U128
CRC_$$_shl$U128$BYTE$$U128:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+6]
		mov	cl,byte [bp+4]
		mov	ch,0
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		mov	si,word [bx+4]
		mov	di,word [bx+6]
		cmp	cx,64
		jl	..@j156
		xor	ax,ax
		xor	dx,dx
		xor	si,si
		xor	di,di
		jmp	..@j158
..@j156:
		test	cx,cx
		je	..@j158
..@j157:
		shl	ax,1
		rcl	dx,1
		rcl	si,1
		rcl	di,1
		loop	..@j157
..@j158:
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	word [bx+2],dx
		mov	word [bx+4],si
		mov	word [bx+6],di
		mov	bx,word [bp+6]
		mov	al,byte [bp+4]
		mov	ah,0
		mov	dx,64
		mov	cx,dx
		sub	cx,ax
		mov	ax,word [bx]
		mov	word [bp-2],ax
		mov	ax,word [bx+2]
		mov	word [bp-4],ax
		mov	ax,word [bx+4]
		mov	word [bp-6],ax
		mov	di,word [bx+6]
		cmp	cx,64
		jl	..@j161
		mov	ax,word [bp-2]
		xor	ax,ax
		mov	word [bp-2],ax
		mov	ax,word [bp-4]
		xor	ax,ax
		mov	word [bp-4],ax
		mov	ax,word [bp-6]
		xor	ax,ax
		mov	word [bp-6],ax
		xor	di,di
		jmp	..@j163
..@j161:
		test	cx,cx
		je	..@j163
..@j162:
		shr	di,1
		rcr	word [bp-6],1
		rcr	word [bp-4],1
		rcr	word [bp-2],1
		loop	..@j162
..@j163:
		mov	bx,word [bp+6]
		mov	cl,byte [bp+4]
		mov	ch,0
		mov	si,word [bx+8]
		mov	ax,word [bx+10]
		mov	dx,word [bx+12]
		mov	bx,word [bx+14]
		cmp	cx,64
		jl	..@j164
		xor	si,si
		xor	ax,ax
		xor	dx,dx
		xor	bx,bx
		jmp	..@j166
..@j164:
		test	cx,cx
		je	..@j166
..@j165:
		shl	si,1
		rcl	ax,1
		rcl	dx,1
		rcl	bx,1
		loop	..@j165
..@j166:
		or	word [bp-2],si
		or	word [bp-4],ax
		or	word [bp-6],dx
		or	di,bx
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		mov	word [bx+8],ax
		mov	ax,word [bp-4]
		mov	word [bx+10],ax
		mov	ax,word [bp-6]
		mov	word [bx+12],ax
		mov	word [bx+14],di
		mov	sp,bp
		pop	bp
		ret	6
