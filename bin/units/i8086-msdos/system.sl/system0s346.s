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
	GLOBAL fpc_div_qword
fpc_div_qword:
	GLOBAL FPC_DIV_QWORD
FPC_DIV_QWORD:
		push	bp
		mov	bp,sp
		sub	sp,24
		mov	byte [bp-9],3
		mov	dx,word [bp+12]
		mov	cx,word [bp+14]
		mov	bx,word [bp+16]
		mov	ax,word [bp+18]
		mov	di,ax
		or	di,bx
		or	di,cx
		jnz	..@j8306
		or	di,dx
		jz	..@j8307
		mov	byte [bp-9],al
		mov	dx,word [bp+10]
		cmp	dx,di
		jc	..@j8308
		xchg	ax,dx
		div	di
..@j8308:
		mov	word [bp-2],ax
		mov	ax,word [bp+8]
		div	di
		mov	word [bp-4],ax
		mov	ax,word [bp+6]
		div	di
		mov	word [bp-6],ax
		mov	ax,word [bp+4]
		div	di
		mov	word [bp-8],ax
		jmp	..@j8307
..@j8306:
		xor	si,si
		cmp	word [bp+4],dx
		mov	di,word [bp+6]
		sbb	di,cx
		mov	di,word [bp+8]
		sbb	di,bx
		mov	di,word [bp+10]
		sbb	di,ax
		jnc	..@j8309
		mov	byte [bp-9],0
		mov	word [bp-8],si
		mov	word [bp-6],si
		mov	word [bp-4],si
		mov	word [bp-2],si
		jmp	..@j8307
..@j8309:
		mov	word [bp-2],si
		mov	di,si
		test	ax,ax
		jnz	..@j8310
..@j8311:
		add	si,16
		or	ax,bx
		mov	bx,cx
		mov	cx,dx
		mov	dx,di
		jz	..@j8311
..@j8310:
		test	ah,ah
		jnz	..@j8312
		add	si,8
		or	ah,al
		mov	al,bh
		mov	bh,bl
		mov	bl,ch
		mov	ch,cl
		mov	cl,dh
		mov	dh,dl
		mov	dl,0
		js	..@j8313
..@j8314:
		inc	si
		shl	dx,1
		rcl	cx,1
		rcl	bx,1
		adc	ax,ax
..@j8312:
		jns	..@j8314
..@j8313:
		mov	word [bp+12],dx
		mov	word [bp+14],cx
		mov	word [bp+16],bx
		mov	word [bp+18],ax
		mov	dx,word [bp+4]
		mov	cx,word [bp+6]
		mov	bx,word [bp+8]
		mov	ax,word [bp+10]
		push	bp
		mov	bp,si
		test	si,8
		jz	..@j8315
		xchg	al,ah
		mov	di,ax
		and	di,255
		mov	al,bh
		mov	bh,bl
		mov	bl,ch
		mov	ch,cl
		mov	cl,dh
		mov	dh,dl
		xor	dl,dl
..@j8315:
		and	si,7
		jz	..@j8316
..@j8317:
		shl	dx,1
		rcl	cx,1
		rcl	bx,1
		rcl	ax,1
		rcl	di,1
		dec	si
		jnz	..@j8317
..@j8316:
		sub	bp,16
		jc	..@j8318
		sub	bp,16
		jc	..@j8319
		pop	bp
		mov	word [bp-24],si
		mov	word [bp-22],si
		mov	word [bp-20],dx
		mov	word [bp-18],cx
		mov	word [bp-16],bx
		mov	word [bp-14],ax
		mov	word [bp-12],di
		jmp	..@j8320
..@j8319:
		pop	bp
		mov	word [bp-24],si
		mov	word [bp-22],dx
		mov	word [bp-20],cx
		mov	word [bp-18],bx
		mov	word [bp-16],ax
		mov	word [bp-14],di
		mov	word [bp-12],si
		jmp	..@j8320
..@j8318:
		pop	bp
		mov	word [bp-24],dx
		mov	word [bp-22],cx
		mov	word [bp-20],bx
		mov	word [bp-18],ax
		mov	word [bp-16],di
		mov	word [bp-14],si
		mov	word [bp-12],si
..@j8320:
		lea	si,[bp-20]
		lea	bx,[bp-4]
..@j8321:
		push	bx
		mov	ax,-1
		mov	dx,word [ss:si+8]
		mov	di,word [bp+18]
		cmp	dx,di
		jnc	..@j8322
		mov	ax,word [ss:si+6]
		div	di
..@j8322:
		push	ax
		push	si
		mov	si,ax
		mul	word [bp+12]
		mov	bx,ax
		mov	cx,dx
		mov	ax,word [bp+14]
		mul	si
		add	cx,ax
		adc	dx,0
		mov	di,dx
		mov	ax,word [bp+16]
		mul	si
		add	di,ax
		adc	dx,0
		xchg	dx,si
		mov	ax,word [bp+18]
		mul	dx
		add	ax,si
		pop	si
		adc	dx,0
		sub	word [ss:si],bx
		sbb	word [ss:si+2],cx
		sbb	word [ss:si+4],di
		sbb	word [ss:si+6],ax
		sbb	word [ss:si+8],dx
		pop	di
		jnc	..@j8323
		mov	dx,word [bp+12]
		mov	cx,word [bp+14]
		mov	bx,word [bp+16]
		mov	ax,word [bp+18]
..@j8324:
		dec	di
		add	word [ss:si],dx
		adc	word [ss:si+2],cx
		adc	word [ss:si+4],bx
		adc	word [ss:si+6],ax
		adc	word [ss:si+8],0
		jnc	..@j8324
..@j8323:
		pop	bx
		dec	si
		dec	si
		mov	word [ss:bx],di
		dec	bx
		dec	bx
		dec	byte [bp-9]
		jnz	..@j8321
..@j8307:
		cmp	byte [bp-9],0
		jne	..@j8325
		jmp	..@j8326
..@j8325:
		mov	ax,0
		push	ax
		mov	ax,200
		push	ax
		call	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
		push	ax
		push	bp
		call	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
..@j8326:
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
EXTERN	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
