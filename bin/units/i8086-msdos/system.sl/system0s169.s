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
	GLOBAL fpc_sarint64
fpc_sarint64:
	GLOBAL FPC_SARINT64
FPC_SARINT64:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	si,word [bp+6]
		mov	ax,word [bp+8]
		mov	bx,word [bp+10]
		mov	dx,word [bp+12]
		mov	cx,63
..@j2227:
		shr	dx,1
		rcr	bx,1
		rcr	ax,1
		rcr	si,1
		loop	..@j2227
		mov	word [bp-20],si
		mov	word [bp-18],ax
		mov	word [bp-16],bx
		mov	bx,dx
		not	word [bp-16]
		not	bx
		not	word [bp-18]
		neg	word [bp-20]
		sbb	word [bp-18],-1
		sbb	word [bp-16],-1
		sbb	bx,-1
		mov	al,byte [bp+4]
		mov	ah,0
		and	ax,63
		test	ax,ax
		mov	al,0
		je	..@j2231
		inc	ax
..@j2231:
		mov	ah,0
		mov	cx,ax
		neg	cx
		mov	ax,cx
		cwd
		mov	si,ax
		mov	di,dx
		mov	ax,cx
		cwd
		mov	si,ax
		mov	di,dx
		mov	dx,si
		mov	ax,di
		mov	cl,15
		sar	ax,cl
		mov	dx,ax
		and	word [bp-20],si
		and	word [bp-18],di
		and	word [bp-16],dx
		and	bx,ax
		mov	al,byte [bp+4]
		mov	ah,0
		mov	dx,ax
		and	dx,63
		mov	ax,64
		mov	cx,ax
		sub	cx,dx
		mov	ax,word [bp-20]
		mov	word [bp-14],ax
		mov	ax,word [bp-18]
		mov	word [bp-12],ax
		mov	ax,word [bp-16]
		mov	word [bp-10],ax
		mov	di,bx
		cmp	cx,64
		jl	..@j2232
		mov	ax,word [bp-14]
		xor	ax,ax
		mov	word [bp-14],ax
		mov	ax,word [bp-12]
		xor	ax,ax
		mov	word [bp-12],ax
		mov	ax,word [bp-10]
		xor	ax,ax
		mov	word [bp-10],ax
		xor	di,di
		jmp	..@j2234
..@j2232:
		test	cx,cx
		je	..@j2234
..@j2233:
		shl	word [bp-14],1
		rcl	word [bp-12],1
		rcl	word [bp-10],1
		rcl	di,1
		loop	..@j2233
..@j2234:
		mov	cl,byte [bp+4]
		mov	ch,0
		and	cx,63
		mov	bx,word [bp+6]
		mov	ax,word [bp+8]
		mov	si,word [bp+10]
		mov	dx,word [bp+12]
		cmp	cx,64
		jl	..@j2235
		xor	bx,bx
		xor	ax,ax
		xor	si,si
		xor	dx,dx
		jmp	..@j2237
..@j2235:
		test	cx,cx
		je	..@j2237
..@j2236:
		shr	dx,1
		rcr	si,1
		rcr	ax,1
		rcr	bx,1
		loop	..@j2236
..@j2237:
		or	word [bp-14],bx
		or	word [bp-12],ax
		or	word [bp-10],si
		or	di,dx
		mov	ax,word [bp-14]
		mov	word [bp-8],ax
		mov	ax,word [bp-12]
		mov	word [bp-6],ax
		mov	ax,word [bp-10]
		mov	word [bp-4],ax
		mov	word [bp-2],di
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	10
