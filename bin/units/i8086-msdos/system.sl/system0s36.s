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
	GLOBAL fpc_div_dword
fpc_div_dword:
	GLOBAL FPC_DIV_DWORD
FPC_DIV_DWORD:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	word [bp-4],0
		mov	word [bp-2],0
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		cmp	dx,0
		jne	..@j194
		cmp	ax,0
		jne	..@j194
		jmp	..@j193
..@j193:
		mov	ax,0
		push	ax
		mov	ax,200
		push	ax
		call	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
		push	ax
		push	bp
		call	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
..@j194:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	bx,word [bp+8]
		mov	cx,word [bp+10]
		mov	si,dx
		cmp	ax,bx
		sbb	si,cx
		jc	..@j187
		test	cx,cx
		jnz	..@j188
		cmp	dx,bx
		jnc	..@j189
		div	bx
		mov	word [bp-4],ax
		jmp	..@j187
..@j189:
		xchg	ax,cx
		xchg	ax,dx
		div	bx
		xchg	ax,cx
		div	bx
		mov	word [bp-4],ax
		mov	word [bp-2],cx
		jmp	..@j187
..@j188:
		mov	si,bx
		mov	di,cx
		test	ch,ch
		jz	..@j190
		mov	bl,bh
		mov	bh,cl
		mov	cl,ch
		mov	al,ah
		mov	ah,dl
		mov	dl,dh
		xor	dh,dh
..@j190:
		shr	cl,1
		rcr	bx,1
		shr	dx,1
		rcr	ax,1
		test	cl,cl
		jnz	..@j190
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
		sub	si,bx
		mov	si,word [bp+6]
		sbb	si,ax
		sbb	di,dx
		sbb	cx,0
		mov	word [bp-4],cx
..@j187:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
EXTERN	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
