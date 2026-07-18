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
	GLOBAL fpc_mod_qword
fpc_mod_qword:
	GLOBAL FPC_MOD_QWORD
FPC_MOD_QWORD:
		push	bp
		mov	bp,sp
		sub	sp,26
		mov	byte [bp-9],3
		mov	dx,word [bp+12]
		mov	cx,word [bp+14]
		mov	bx,word [bp+16]
		mov	ax,word [bp+18]
		mov	di,ax
		or	di,bx
		or	di,cx
		jnz	..@j8335
		or	di,dx
		jz	..@j8336
		mov	byte [bp-9],al
		mov	dx,word [bp+10]
		cmp	dx,di
		jc	..@j8337
		xchg	ax,dx
		div	di
..@j8337:
		mov	ax,word [bp+8]
		div	di
		mov	ax,word [bp+6]
		div	di
		mov	ax,word [bp+4]
		div	di
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],cx
		mov	word [bp-2],cx
		jmp	..@j8336
..@j8335:
		xor	si,si
		cmp	word [bp+4],dx
		mov	di,word [bp+6]
		sbb	di,cx
		mov	di,word [bp+8]
		sbb	di,bx
		mov	di,word [bp+10]
		sbb	di,ax
		jnc	..@j8338
		mov	byte [bp-9],0
		mov	dx,word [bp+4]
		mov	cx,word [bp+6]
		mov	bx,word [bp+8]
		mov	ax,word [bp+10]
		jmp	..@j8339
..@j8338:
		mov	di,si
		test	ax,ax
		jnz	..@j8340
..@j8341:
		add	si,16
		or	ax,bx
		mov	bx,cx
		mov	cx,dx
		mov	dx,di
		jz	..@j8341
..@j8340:
		test	ah,ah
		jnz	..@j8342
		add	si,8
		or	ah,al
		mov	al,bh
		mov	bh,bl
		mov	bl,ch
		mov	ch,cl
		mov	cl,dh
		mov	dh,dl
		mov	dl,0
		js	..@j8343
..@j8344:
		inc	si
		shl	dx,1
		rcl	cx,1
		rcl	bx,1
		adc	ax,ax
..@j8342:
		jns	..@j8344
..@j8343:
		mov	word [bp+12],dx
		mov	word [bp+14],cx
		mov	word [bp+16],bx
		mov	word [bp+18],ax
		mov	word [bp-12],si
		mov	dx,word [bp+4]
		mov	cx,word [bp+6]
		mov	bx,word [bp+8]
		mov	ax,word [bp+10]
		push	bp
		mov	bp,si
		test	si,8
		jz	..@j8345
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
..@j8345:
		and	si,7
		jz	..@j8346
..@j8347:
		shl	dx,1
		rcl	cx,1
		rcl	bx,1
		rcl	ax,1
		rcl	di,1
		dec	si
		jnz	..@j8347
..@j8346:
		sub	bp,16
		jc	..@j8348
		sub	bp,16
		jc	..@j8349
		pop	bp
		mov	word [bp-26],si
		mov	word [bp-24],si
		mov	word [bp-22],dx
		mov	word [bp-20],cx
		mov	word [bp-18],bx
		mov	word [bp-16],ax
		mov	word [bp-14],di
		jmp	..@j8350
..@j8349:
		pop	bp
		mov	word [bp-26],si
		mov	word [bp-24],dx
		mov	word [bp-22],cx
		mov	word [bp-20],bx
		mov	word [bp-18],ax
		mov	word [bp-16],di
		mov	word [bp-14],si
		jmp	..@j8350
..@j8348:
		pop	bp
		mov	word [bp-26],dx
		mov	word [bp-24],cx
		mov	word [bp-22],bx
		mov	word [bp-20],ax
		mov	word [bp-18],di
		mov	word [bp-16],si
		mov	word [bp-14],si
..@j8350:
		lea	si,[bp-22]
..@j8351:
		mov	ax,-1
		mov	dx,word [ss:si+8]
		mov	di,word [bp+18]
		cmp	dx,di
		jnc	..@j8352
		mov	ax,word [ss:si+6]
		div	di
..@j8352:
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
		mov	di,word [ss:si+8]
		sbb	di,dx
		jnc	..@j8353
		mov	dx,word [bp+12]
		mov	cx,word [bp+14]
		mov	bx,word [bp+16]
		mov	ax,word [bp+18]
..@j8354:
		add	word [ss:si],dx
		adc	word [ss:si+2],cx
		adc	word [ss:si+4],bx
		adc	word [ss:si+6],ax
		adc	di,0
		jnc	..@j8354
..@j8353:
		dec	si
		dec	si
		dec	byte [bp-9]
		jnz	..@j8351
		xor	ax,ax
		mov	si,word [bp-12]
		sub	si,16
		jc	..@j8355
		sub	si,16
		jc	..@j8356
		mov	bx,ax
		mov	cx,word [bp-20]
		mov	dx,word [bp-22]
		jmp	..@j8357
..@j8356:
		mov	bx,word [bp-20]
		mov	cx,word [bp-22]
		mov	dx,word [bp-24]
		jmp	..@j8357
..@j8355:
		mov	ax,word [bp-20]
		mov	bx,word [bp-22]
		mov	cx,word [bp-24]
		mov	dx,word [bp-26]
..@j8357:
		and	si,15
		sub	si,8
		jc	..@j8358
		mov	dl,dh
		mov	dh,cl
		mov	cl,ch
		mov	ch,bl
		mov	bl,bh
		mov	bh,al
		mov	al,ah
		xor	ah,ah
..@j8358:
		and	si,7
		jz	..@j8339
..@j8359:
		shr	ax,1
		rcr	bx,1
		rcr	cx,1
		rcr	dx,1
		dec	si
		jnz	..@j8359
..@j8339:
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
..@j8336:
		cmp	byte [bp-9],0
		jne	..@j8360
		jmp	..@j8361
..@j8360:
		mov	ax,0
		push	ax
		mov	ax,200
		push	ax
		call	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
		push	ax
		push	bp
		call	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
..@j8361:
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
EXTERN	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
