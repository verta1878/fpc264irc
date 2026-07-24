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
	GLOBAL fpc_hugeptr_sub_hugeptr
fpc_hugeptr_sub_hugeptr:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+8]
		mov	bx,word [bp+10]
		mov	si,0
		mov	cx,4
..@j278:
		shl	bx,1
		rcl	si,1
		loop	..@j278
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		mov	cx,0
		mov	dx,ax
		mov	ax,cx
		add	dx,bx
		adc	ax,si
		mov	cx,word [bp+4]
		mov	bx,word [bp+6]
		mov	cx,0
		mov	si,cx
		mov	cx,4
..@j279:
		shl	bx,1
		rcl	si,1
		loop	..@j279
		mov	di,word [bp+4]
		mov	cx,word [bp+6]
		mov	cx,0
		add	di,bx
		adc	cx,si
		sub	dx,di
		sbb	ax,cx
		mov	word [bp-4],dx
		mov	word [bp-2],ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
