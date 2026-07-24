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
	GLOBAL CRC_$$_shr$U128$BYTE$$U128
CRC_$$_shr$U128$BYTE$$U128:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+6]
		mov	al,byte [bp+4]
		mov	ah,0
		mov	dx,64
		mov	cx,dx
		sub	cx,ax
		mov	ax,word [bx+8]
		mov	word [bp-6],ax
		mov	ax,word [bx+10]
		mov	word [bp-4],ax
		mov	ax,word [bx+12]
		mov	word [bp-2],ax
		mov	di,word [bx+14]
		cmp	cx,64
		jl	..@j141
		mov	ax,word [bp-6]
		xor	ax,ax
		mov	word [bp-6],ax
		mov	ax,word [bp-4]
		xor	ax,ax
		mov	word [bp-4],ax
		mov	ax,word [bp-2]
		xor	ax,ax
		mov	word [bp-2],ax
		xor	di,di
		jmp	..@j143
..@j141:
		test	cx,cx
		je	..@j143
..@j142:
		shl	word [bp-6],1
		rcl	word [bp-4],1
		rcl	word [bp-2],1
		rcl	di,1
		loop	..@j142
..@j143:
		mov	bx,word [bp+6]
		mov	cl,byte [bp+4]
		mov	ch,0
		mov	si,word [bx]
		mov	ax,word [bx+2]
		mov	dx,word [bx+4]
		mov	bx,word [bx+6]
		cmp	cx,64
		jl	..@j144
		xor	si,si
		xor	ax,ax
		xor	dx,dx
		xor	bx,bx
		jmp	..@j146
..@j144:
		test	cx,cx
		je	..@j146
..@j145:
		shr	bx,1
		rcr	dx,1
		rcr	ax,1
		rcr	si,1
		loop	..@j145
..@j146:
		or	word [bp-6],si
		or	word [bp-4],ax
		or	word [bp-2],dx
		or	di,bx
		mov	bx,word [bp+8]
		mov	ax,word [bp-6]
		mov	word [bx],ax
		mov	ax,word [bp-4]
		mov	word [bx+2],ax
		mov	ax,word [bp-2]
		mov	word [bx+4],ax
		mov	word [bx+6],di
		mov	bx,word [bp+6]
		mov	cl,byte [bp+4]
		mov	ch,0
		mov	ax,word [bx+8]
		mov	dx,word [bx+10]
		mov	si,word [bx+12]
		mov	di,word [bx+14]
		cmp	cx,64
		jl	..@j149
		xor	ax,ax
		xor	dx,dx
		xor	si,si
		xor	di,di
		jmp	..@j151
..@j149:
		test	cx,cx
		je	..@j151
..@j150:
		shr	di,1
		rcr	si,1
		rcr	dx,1
		rcr	ax,1
		loop	..@j150
..@j151:
		mov	bx,word [bp+8]
		mov	word [bx+8],ax
		mov	word [bx+10],dx
		mov	word [bx+12],si
		mov	word [bx+14],di
		mov	sp,bp
		pop	bp
		ret	6
