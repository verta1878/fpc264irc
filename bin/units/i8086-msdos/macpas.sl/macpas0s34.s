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
	GLOBAL MACPAS_$$_BSET$LONGWORD$LONGWORD
MACPAS_$$_BSET$LONGWORD$LONGWORD:
		push	bp
		mov	bp,sp
		mov	ax,1
		mov	dx,0
		mov	cx,word [bp+4]
		and	cx,31
		jz	..@j173
..@j174:
		shl	ax,1
		rcl	dx,1
		loop	..@j174
..@j173:
		mov	bx,word [bp+8]
		mov	cx,word [bx]
		mov	bx,word [bx+2]
		or	cx,ax
		or	bx,dx
		mov	si,word [bp+8]
		mov	word [si],cx
		mov	word [si+2],bx
		mov	sp,bp
		pop	bp
		ret	6
