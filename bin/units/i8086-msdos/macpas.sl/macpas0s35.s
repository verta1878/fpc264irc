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
	GLOBAL MACPAS_$$_BSET$INT64$LONGWORD
MACPAS_$$_BSET$INT64$LONGWORD:
		push	bp
		mov	bp,sp
		mov	di,1
		mov	ax,0
		mov	dx,0
		mov	si,0
		mov	cx,word [bp+4]
		cmp	cx,64
		jl	..@j179
		xor	di,di
		xor	ax,ax
		xor	dx,dx
		xor	si,si
		jmp	..@j181
..@j179:
		test	cx,cx
		je	..@j181
..@j180:
		shl	di,1
		rcl	ax,1
		rcl	dx,1
		rcl	si,1
		loop	..@j180
..@j181:
		mov	bx,word [bp+8]
		or	di,word [bx]
		or	ax,word [bx+2]
		or	dx,word [bx+4]
		or	si,word [bx+6]
		mov	bx,word [bp+8]
		mov	word [bx],di
		mov	word [bx+2],ax
		mov	word [bx+4],dx
		mov	word [bx+6],si
		mov	sp,bp
		pop	bp
		ret	6
