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
	GLOBAL MACPAS_$$_BCLR$INT64$LONGWORD
MACPAS_$$_BCLR$INT64$LONGWORD:
		push	bp
		mov	bp,sp
		mov	dx,1
		mov	ax,0
		mov	si,0
		mov	bx,0
		mov	cx,word [bp+4]
		cmp	cx,64
		jl	..@j201
		xor	dx,dx
		xor	ax,ax
		xor	si,si
		xor	bx,bx
		jmp	..@j203
..@j201:
		test	cx,cx
		je	..@j203
..@j202:
		shl	dx,1
		rcl	ax,1
		rcl	si,1
		rcl	bx,1
		loop	..@j202
..@j203:
		mov	cx,si
		mov	si,bx
		not	dx
		not	ax
		not	cx
		not	si
		mov	bx,word [bp+8]
		and	dx,word [bx]
		and	ax,word [bx+2]
		and	cx,word [bx+4]
		and	si,word [bx+6]
		mov	bx,word [bp+8]
		mov	word [bx],dx
		mov	word [bx+2],ax
		mov	word [bx+4],cx
		mov	word [bx+6],si
		mov	sp,bp
		pop	bp
		ret	6
