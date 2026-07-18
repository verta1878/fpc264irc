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
	GLOBAL fpc_hugeptr_add_longint_normalized
fpc_hugeptr_add_longint_normalized:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	ax,word [bp+8]
		mov	ax,word [bp+10]
		mov	dx,0
		mov	cx,4
..@j238:
		shl	ax,1
		rcl	dx,1
		loop	..@j238
		mov	cx,word [bp+8]
		mov	bx,word [bp+10]
		mov	bx,0
		add	cx,ax
		adc	bx,dx
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		add	ax,cx
		adc	dx,bx
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		mov	cx,4
..@j243:
		shr	dx,1
		rcr	ax,1
		loop	..@j243
		push	ax
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		and	ax,15
		mov	dx,0
		push	ax
		call	SYSTEM_$$_PTR$WORD$WORD$$FARPOINTER
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_PTR$WORD$WORD$$FARPOINTER
