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
	GLOBAL fpc_hugeptr_dec_longint_normalized
fpc_hugeptr_dec_longint_normalized:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	ax,word [bx+2]
		mov	dx,0
		mov	cx,4
..@j328:
		shl	ax,1
		rcl	dx,1
		loop	..@j328
		mov	bx,word [bp+8]
		mov	cx,word [bx]
		mov	bx,word [bx+2]
		mov	bx,0
		add	cx,ax
		adc	bx,dx
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		sub	cx,ax
		sbb	bx,dx
		mov	word [bp-4],cx
		mov	word [bp-2],bx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	cx,4
..@j333:
		shr	dx,1
		rcr	ax,1
		loop	..@j333
		push	ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		and	ax,15
		mov	dx,0
		push	ax
		call	SYSTEM_$$_PTR$WORD$WORD$$FARPOINTER
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	word [bx+2],dx
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_PTR$WORD$WORD$$FARPOINTER
