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
	GLOBAL SYSTEM_$$_DIY_UTIL_SHR$LONGWORD$QWORD$SMALLINT
SYSTEM_$$_DIY_UTIL_SHR$LONGWORD$QWORD$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		cmp	word [bp+4],0
		je	..@j4352
		jmp	..@j4353
..@j4352:
		jmp	..@j4350
..@j4353:
		cmp	word [bp+4],1
		je	..@j4354
		jmp	..@j4355
..@j4354:
		mov	bx,word [bp+6]
		mov	si,word [bx]
		mov	cx,word [bx+2]
		mov	dx,word [bx+4]
		mov	ax,word [bx+6]
		shr	ax,1
		rcr	dx,1
		rcr	cx,1
		rcr	si,1
		mov	bx,word [bp+6]
		mov	word [bx],si
		mov	word [bx+2],cx
		mov	word [bx+4],dx
		mov	word [bx+6],ax
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		and	ax,1
		test	ax,ax
		jne	..@j4358
		jmp	..@j4359
..@j4358:
		mov	bx,word [bp+6]
		mov	dx,word [bx]
		mov	si,word [bx+2]
		mov	cx,word [bx+4]
		mov	ax,word [bx+6]
		or	ax,-32768
		mov	bx,word [bp+6]
		mov	word [bx],dx
		mov	word [bx+2],si
		mov	word [bx+4],cx
		mov	word [bx+6],ax
..@j4359:
		mov	bx,word [bp+8]
		mov	dx,word [bx]
		mov	ax,word [bx+2]
		shr	ax,1
		rcr	dx,1
		mov	bx,word [bp+8]
		mov	word [bx],dx
		mov	word [bx+2],ax
		jmp	..@j4350
..@j4355:
		cmp	word [bp+4],64
		jl	..@j4364
		jmp	..@j4365
..@j4364:
		mov	bx,word [bp+8]
		mov	si,word [bx]
		mov	bx,word [bx+2]
		mov	ax,0
		mov	dx,0
		mov	cx,word [bp+4]
		neg	cx
		and	cx,63
		mov	word [bp-6],si
		mov	word [bp-4],bx
		mov	word [bp-2],ax
		cmp	cx,64
		jl	..@j4368
		mov	ax,word [bp-6]
		xor	ax,ax
		mov	word [bp-6],ax
		mov	ax,word [bp-4]
		xor	ax,ax
		mov	word [bp-4],ax
		mov	ax,word [bp-2]
		xor	ax,ax
		mov	word [bp-2],ax
		xor	dx,dx
		jmp	..@j4370
..@j4368:
		test	cx,cx
		je	..@j4370
..@j4369:
		shl	word [bp-6],1
		rcl	word [bp-4],1
		rcl	word [bp-2],1
		rcl	dx,1
		loop	..@j4369
..@j4370:
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		mov	si,word [bx+2]
		mov	di,word [bx+4]
		mov	bx,word [bx+6]
		mov	cx,word [bp+4]
		cmp	cx,64
		jl	..@j4371
		xor	ax,ax
		xor	si,si
		xor	di,di
		xor	bx,bx
		jmp	..@j4373
..@j4371:
		test	cx,cx
		je	..@j4373
..@j4372:
		shr	bx,1
		rcr	di,1
		rcr	si,1
		rcr	ax,1
		loop	..@j4372
..@j4373:
		or	word [bp-6],ax
		or	word [bp-4],si
		or	word [bp-2],di
		or	dx,bx
		mov	bx,word [bp+6]
		mov	ax,word [bp-6]
		mov	word [bx],ax
		mov	ax,word [bp-4]
		mov	word [bx+2],ax
		mov	ax,word [bp-2]
		mov	word [bx+4],ax
		mov	word [bx+6],dx
		cmp	word [bp+4],32
		jge	..@j4374
		jmp	..@j4375
..@j4374:
		mov	bx,word [bp+8]
		mov	word [bx],0
		mov	word [bx+2],0
		jmp	..@j4378
..@j4375:
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		mov	cx,word [bp+4]
		and	cx,31
		jz	..@j4381
..@j4382:
		shr	dx,1
		rcr	ax,1
		loop	..@j4382
..@j4381:
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	word [bx+2],dx
..@j4378:
		jmp	..@j4350
..@j4365:
		cmp	word [bp+4],96
		jl	..@j4383
		jmp	..@j4384
..@j4383:
		mov	bx,word [bp+8]
		mov	cx,word [bp+4]
		and	cx,63
		mov	dx,word [bx]
		mov	ax,word [bx+2]
		and	cx,31
		jz	..@j4387
..@j4388:
		shr	ax,1
		rcr	dx,1
		loop	..@j4388
..@j4387:
		mov	bx,dx
		mov	cx,ax
		mov	bx,dx
		mov	cx,ax
		mov	dx,0
		mov	ax,0
		mov	si,word [bp+6]
		mov	word [si],bx
		mov	word [si+2],cx
		mov	word [si+4],dx
		mov	word [si+6],ax
		jmp	..@j4389
..@j4384:
		mov	bx,word [bp+6]
		mov	word [bx],0
		mov	word [bx+2],0
		mov	word [bx+4],0
		mov	word [bx+6],0
..@j4389:
		mov	bx,word [bp+8]
		mov	word [bx],0
		mov	word [bx+2],0
..@j4350:
		mov	sp,bp
		pop	bp
		ret	6
