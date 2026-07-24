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
	GLOBAL SYSTEM_$$_SGENRAND_MT19937$LONGINT
SYSTEM_$$_SGENRAND_MT19937$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+4]
		mov	word [U_$SYSTEM_$$_MT],ax
		mov	ax,word [bp+6]
		mov	word [U_$SYSTEM_$$_MT+2],ax
		mov	word [bp-4],1
		mov	word [bp-2],0
		sub	word [bp-4],1
		sbb	word [bp-2],0
	ALIGN 2
..@j17440:
		add	word [bp-4],1
		adc	word [bp-2],0
		mov	ax,27655
		push	ax
		mov	ax,-30363
		push	ax
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		sub	bx,1
		sbb	ax,0
		mov	cl,2
		shl	bx,cl
		mov	ax,word [U_$SYSTEM_$$_MT+bx]
		mov	dx,word [U_$SYSTEM_$$_MT+bx+2]
		mov	ax,dx
		mov	dx,0
		mov	cl,14
		shr	ax,cl
		mov	bx,word [bp-4]
		mov	cx,word [bp-2]
		sub	bx,1
		sbb	cx,0
		mov	cl,2
		shl	bx,cl
		mov	cx,word [U_$SYSTEM_$$_MT+bx]
		mov	bx,word [U_$SYSTEM_$$_MT+bx+2]
		xor	cx,ax
		xor	bx,dx
		push	bx
		push	cx
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		mov	bx,word [bp-4]
		mov	si,word [bp-2]
		add	bx,ax
		adc	si,dx
		mov	di,word [bp-4]
		mov	cl,2
		shl	di,cl
		mov	word [U_$SYSTEM_$$_MT+di],bx
		mov	word [U_$SYSTEM_$$_MT+di+2],si
		cmp	word [bp-2],0
		jl	..@j17440
		jg	..@j17449
		cmp	word [bp-4],623
		jb	..@j17440
..@j17449:
		mov	word [TC_$SYSTEM_$$_MTI],624
		mov	word [TC_$SYSTEM_$$_MTI+2],0
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	TC_$SYSTEM_$$_MTI
EXTERN	fpc_mul_longint
EXTERN	U_$SYSTEM_$$_MT
