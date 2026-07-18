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
	GLOBAL SYSTEM_$$_RANDOM$LONGINT$$LONGINT
SYSTEM_$$_RANDOM$LONGINT$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		jl	..@j17507
		jg	..@j17508
		cmp	ax,0
		jb	..@j17507
		jmp	..@j17508
..@j17507:
		add	word [bp+4],1
		adc	word [bp+6],0
..@j17508:
		call	SYSTEM_$$_GENRAND_MT19937$$LONGINT
		mov	cx,ax
		mov	bx,dx
		mov	cx,ax
		mov	bx,dx
		mov	ax,0
		mov	dx,0
		push	dx
		push	ax
		push	bx
		push	cx
		mov	dx,word [bp+4]
		mov	si,word [bp+6]
		mov	ax,dx
		mov	bx,si
		mov	cl,15
		sar	bx,cl
		mov	ax,bx
		push	bx
		push	ax
		push	si
		push	dx
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_int64
		mov	si,cx
		mov	cx,32
..@j17518:
		shr	ax,1
		rcr	bx,1
		rcr	si,1
		rcr	dx,1
		loop	..@j17518
		mov	word [bp-4],dx
		mov	word [bp-2],si
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_mul_int64
EXTERN	SYSTEM_$$_GENRAND_MT19937$$LONGINT
