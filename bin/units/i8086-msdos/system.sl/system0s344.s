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
	GLOBAL fpc_mul_qword
fpc_mul_qword:
	GLOBAL FPC_MUL_QWORD
FPC_MUL_QWORD:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	di,word [bp+16]
		mov	bx,word [bp+18]
		mov	si,word [bp+8]
		mov	ax,word [bp+10]
		push	bp
		mov	cx,ax
		mul	bx
		xchg	ax,bx
		mov	bp,dx
		mul	si
		xchg	ax,cx
		add	bx,dx
		adc	bp,0
		mul	di
		add	cx,ax
		adc	bx,dx
		adc	bp,0
		mov	ax,di
		mul	si
		add	cx,dx
		adc	bx,0
		adc	bp,0
		mov	dx,bp
		pop	bp
		mov	word [bp-8],ax
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],dx
		mov	si,word [bp+20]
		mov	ax,word [bp+22]
		mov	bx,word [bp+4]
		or	bx,word [bp+6]
		jnz	..@j8288
		mov	di,word [bp+8]
		mul	di
		mov	cx,ax
		mov	ax,word [bp+10]
		mul	si
		add	cx,ax
		mov	ax,di
		mul	si
		mov	bx,ax
		add	cx,dx
		mov	si,word [bp+12]
		mov	ax,word [bp+14]
		mov	di,word [bp+16]
		mul	di
		add	cx,ax
		mov	ax,word [bp+18]
		mul	si
		add	cx,ax
		mov	ax,di
		mul	si
		add	bx,ax
		adc	cx,dx
		add	word [bp-4],bx
		adc	word [bp-2],cx
		jmp	..@j8289
..@j8288:
		mov	bx,word [bp+14]
		mov	cx,ax
		or	cx,si
		jz	..@j8290
		mov	cx,word [bp+12]
		or	cx,bx
		jnz	..@j8289
..@j8290:
		test	bx,bx
		jz	..@j8291
		mov	bx,word [bp+18]
		test	bx,bx
		jnz	..@j8289
..@j8291:
		test	ax,ax
		jz	..@j8292
		or	bx,word [bp+10]
		jnz	..@j8289
..@j8292:
		mov	di,word [bp+8]
		mul	di
		test	dx,dx
		jnz	..@j8289
		mov	cx,ax
		mov	ax,word [bp+10]
		mul	si
		test	dx,dx
		jnz	..@j8289
		add	cx,ax
		jc	..@j8289
		mov	ax,di
		mul	si
		mov	bx,ax
		add	cx,dx
		jc	..@j8289
		mov	si,word [bp+12]
		mov	ax,word [bp+14]
		mov	di,word [bp+16]
		mul	di
		test	dx,dx
		jnz	..@j8289
		add	cx,ax
		jc	..@j8289
		mov	ax,word [bp+18]
		mul	si
		test	dx,dx
		jnz	..@j8289
		add	cx,ax
		jc	..@j8289
		mov	ax,di
		mul	si
		add	bx,ax
		adc	cx,dx
		jc	..@j8289
		add	word [bp-4],bx
		adc	word [bp-2],cx
		jc	..@j8289
		xor	ax,ax
		mov	word [bp+4],ax
		mov	word [bp+6],ax
..@j8289:
		cmp	word [bp+6],0
		jne	..@j8293
		cmp	word [bp+4],0
		jne	..@j8293
		jmp	..@j8294
..@j8293:
		mov	ax,0
		push	ax
		mov	ax,215
		push	ax
		call	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
		push	ax
		push	bp
		call	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
..@j8294:
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	20
EXTERN	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
EXTERN	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
