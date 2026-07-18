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
	GLOBAL CRC_$$_and$U128$U128$$U128
CRC_$$_and$U128$U128$$U128:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	dx,word [bx]
		mov	cx,word [bx+2]
		mov	ax,word [bx+4]
		mov	di,word [bx+6]
		and	dx,word [si]
		and	cx,word [si+2]
		and	ax,word [si+4]
		and	di,word [si+6]
		mov	bx,word [bp+8]
		mov	word [bx],dx
		mov	word [bx+2],cx
		mov	word [bx+4],ax
		mov	word [bx+6],di
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	dx,word [bx+8]
		mov	cx,word [bx+10]
		mov	ax,word [bx+12]
		mov	di,word [bx+14]
		and	dx,word [si+8]
		and	cx,word [si+10]
		and	ax,word [si+12]
		and	di,word [si+14]
		mov	bx,word [bp+8]
		mov	word [bx+8],dx
		mov	word [bx+10],cx
		mov	word [bx+12],ax
		mov	word [bx+14],di
		mov	sp,bp
		pop	bp
		ret	6
