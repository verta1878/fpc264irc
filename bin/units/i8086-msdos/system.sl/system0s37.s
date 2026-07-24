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
	GLOBAL fpc_mod_dword
fpc_mod_dword:
	GLOBAL FPC_MOD_DWORD
FPC_MOD_DWORD:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+4]
		mov	word [bp-4],ax
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		cmp	dx,0
		jne	..@j211
		cmp	ax,0
		jne	..@j211
		jmp	..@j210
..@j210:
		mov	ax,0
		push	ax
		mov	ax,200
		push	ax
		call	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
		push	ax
		push	bp
		call	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
..@j211:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	bx,word [bp+8]
		mov	cx,word [bp+10]
		mov	si,dx
		cmp	ax,bx
		sbb	si,cx
		jc	..@j203
		test	cx,cx
		jnz	..@j204
		cmp	dx,bx
		jnc	..@j205
		div	bx
		jmp	..@j206
..@j205:
		xchg	ax,cx
		xchg	ax,dx
		div	bx
		mov	ax,cx
		xor	cx,cx
		div	bx
		jmp	..@j206
..@j204:
		mov	si,bx
		mov	di,cx
		test	ch,ch
		jz	..@j207
		mov	bl,bh
		mov	bh,cl
		mov	cl,ch
		mov	al,ah
		mov	ah,dl
		mov	dl,dh
		xor	dh,dh
..@j207:
		shr	cl,1
		rcr	bx,1
		shr	dx,1
		rcr	ax,1
		test	cl,cl
		jnz	..@j207
		div	bx
		mov	cx,ax
		mul	si
		mov	bx,ax
		mov	si,dx
		mov	ax,cx
		mul	di
		xor	di,di
		add	ax,si
		adc	dx,di
		mov	si,word [bp+4]
		mov	cx,word [bp+6]
		sub	si,bx
		sbb	cx,ax
		sbb	di,dx
		mov	dx,si
		jnc	..@j206
		add	dx,word [bp+8]
		adc	cx,word [bp+10]
..@j206:
		mov	word [bp-4],dx
		mov	word [bp-2],cx
..@j203:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
EXTERN	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
