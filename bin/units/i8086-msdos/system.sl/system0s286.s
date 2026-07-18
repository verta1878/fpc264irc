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
	GLOBAL SYSTEM_$$_DIY_UTIL_SHL$LONGWORD$QWORD$SMALLINT
SYSTEM_$$_DIY_UTIL_SHL$LONGWORD$QWORD$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,26
		cmp	word [bp+4],0
		je	..@j4284
		jmp	..@j4285
..@j4284:
		jmp	..@j4282
..@j4285:
		cmp	word [bp+4],1
		je	..@j4286
		jmp	..@j4287
..@j4286:
		mov	ax,word [bp+6]
		lea	di,[bp-8]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	word [bp-12],ax
		mov	ax,word [bx+2]
		mov	word [bp-10],ax
		mov	ax,word [bp+6]
		mov	word [bp-24],ax
		mov	ax,word [bp+8]
		mov	word [bp-22],ax
		mov	bx,word [bp-24]
		mov	cx,word [bx]
		mov	bx,word [bp-24]
		mov	si,word [bx+2]
		mov	bx,word [bp-24]
		mov	dx,word [bx+4]
		mov	bx,word [bp-24]
		mov	ax,word [bx+6]
		add	cx,word [bp-8]
		adc	si,word [bp-6]
		adc	dx,word [bp-4]
		adc	ax,word [bp-2]
		mov	word [bp-20],cx
		mov	word [bp-18],si
		mov	word [bp-16],dx
		mov	word [bp-14],ax
		mov	bx,word [bp-22]
		mov	si,word [bx]
		mov	di,word [bp-22]
		mov	bx,word [di+2]
		mov	dx,word [bp-12]
		mov	ax,word [bp-10]
		mov	word [bp-26],dx
		mov	cx,ax
		add	word [bp-26],si
		adc	cx,bx
		mov	dx,word [bp-20]
		mov	ax,word [bp-18]
		mov	si,word [bp-16]
		mov	di,word [bp-14]
		mov	bx,word [bp-24]
		cmp	di,word [bx+6]
		jb	..@j4301
		ja	..@j4302
		mov	bx,word [bp-24]
		cmp	si,word [bx+4]
		jb	..@j4301
		ja	..@j4302
		mov	bx,word [bp-24]
		cmp	ax,word [bx+2]
		jb	..@j4301
		ja	..@j4302
		mov	bx,word [bp-24]
		cmp	dx,word [bx]
		jb	..@j4301
		jmp	..@j4302
		jmp	..@j4302
..@j4301:
		mov	dl,1
		jmp	..@j4303
..@j4302:
		mov	dl,0
..@j4303:
		mov	ax,0
		mov	dh,0
		add	dx,word [bp-26]
		adc	ax,cx
		mov	bx,word [bp-22]
		mov	word [bx],dx
		mov	bx,word [bp-22]
		mov	word [bx+2],ax
		mov	di,word [bp-24]
		push	ds
		pop	es
		lea	si,[bp-20]
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j4282
..@j4287:
		cmp	word [bp+4],64
		jge	..@j4306
		jmp	..@j4307
..@j4306:
		cmp	word [bp+4],64
		jg	..@j4308
		jmp	..@j4309
..@j4308:
		mov	bx,word [bp+6]
		mov	cx,word [bp+4]
		sub	cx,64
		mov	dx,word [bx]
		mov	ax,word [bx+2]
		mov	si,word [bx+4]
		mov	bx,word [bx+6]
		cmp	cx,64
		jl	..@j4312
		xor	dx,dx
		xor	ax,ax
		xor	si,si
		xor	bx,bx
		jmp	..@j4314
..@j4312:
		test	cx,cx
		je	..@j4314
..@j4313:
		shl	dx,1
		rcl	ax,1
		rcl	si,1
		rcl	bx,1
		loop	..@j4313
..@j4314:
		mov	bx,word [bp+8]
		mov	word [bx],dx
		mov	word [bx+2],ax
		jmp	..@j4315
..@j4309:
		mov	si,word [bp+6]
		mov	bx,word [bp+8]
		mov	ax,word [si]
		mov	word [bx],ax
		mov	ax,word [si+2]
		mov	word [bx+2],ax
..@j4315:
		mov	bx,word [bp+6]
		mov	word [bx],0
		mov	word [bx+2],0
		mov	word [bx+4],0
		mov	word [bx+6],0
		jmp	..@j4282
..@j4307:
		cmp	word [bp+4],32
		je	..@j4320
		jmp	..@j4321
..@j4320:
		mov	bx,word [bp+6]
		mov	si,word [bx]
		mov	dx,word [bx+2]
		mov	di,word [bx+4]
		mov	ax,word [bx+6]
		mov	cx,32
..@j4325:
		shr	ax,1
		rcr	di,1
		rcr	dx,1
		rcr	si,1
		loop	..@j4325
		mov	bx,word [bp+8]
		mov	word [bx],si
		mov	word [bx+2],dx
		jmp	..@j4327
..@j4321:
		cmp	word [bp+4],32
		jl	..@j4328
		jmp	..@j4329
..@j4328:
		mov	bx,word [bp+6]
		mov	si,word [bx]
		mov	dx,word [bx+2]
		mov	di,word [bx+4]
		mov	ax,word [bx+6]
		mov	cx,32
..@j4333:
		shr	ax,1
		rcr	di,1
		rcr	dx,1
		rcr	si,1
		loop	..@j4333
		mov	ax,word [bp+4]
		mov	cx,32
		sub	cx,ax
		and	cx,31
		jz	..@j4335
..@j4336:
		shr	dx,1
		rcr	si,1
		loop	..@j4336
..@j4335:
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	di,word [bx+2]
		mov	cx,word [bp+4]
		and	cx,31
		jz	..@j4337
..@j4338:
		shl	ax,1
		rcl	di,1
		loop	..@j4338
..@j4337:
		add	ax,si
		adc	di,dx
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	word [bx+2],di
		jmp	..@j4339
..@j4329:
		mov	bx,word [bp+6]
		mov	ax,word [bp+4]
		mov	cx,64
		sub	cx,ax
		mov	dx,word [bx]
		mov	ax,word [bx+2]
		mov	si,word [bx+4]
		mov	bx,word [bx+6]
		cmp	cx,64
		jl	..@j4342
		xor	dx,dx
		xor	ax,ax
		xor	si,si
		xor	bx,bx
		jmp	..@j4344
..@j4342:
		test	cx,cx
		je	..@j4344
..@j4343:
		shr	bx,1
		rcr	si,1
		rcr	ax,1
		rcr	dx,1
		loop	..@j4343
..@j4344:
		mov	bx,word [bp+8]
		mov	word [bx],dx
		mov	word [bx+2],ax
..@j4339:
..@j4327:
		mov	bx,word [bp+6]
		mov	dx,word [bx]
		mov	si,word [bx+2]
		mov	ax,word [bx+4]
		mov	di,word [bx+6]
		mov	cx,word [bp+4]
		cmp	cx,64
		jl	..@j4347
		xor	dx,dx
		xor	si,si
		xor	ax,ax
		xor	di,di
		jmp	..@j4349
..@j4347:
		test	cx,cx
		je	..@j4349
..@j4348:
		shl	dx,1
		rcl	si,1
		rcl	ax,1
		rcl	di,1
		loop	..@j4348
..@j4349:
		mov	bx,word [bp+6]
		mov	word [bx],dx
		mov	word [bx+2],si
		mov	word [bx+4],ax
		mov	word [bx+6],di
..@j4282:
		mov	sp,bp
		pop	bp
		ret	6
