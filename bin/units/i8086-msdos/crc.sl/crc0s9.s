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
	GLOBAL CRC_$$_xor$U128$BYTE$$U128
CRC_$$_xor$U128$BYTE$$U128:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		mov	dx,0
		mov	al,byte [bp+4]
		mov	ah,0
		mov	si,0
		mov	cx,0
		xor	ax,word [bx]
		xor	dx,word [bx+2]
		xor	si,word [bx+4]
		xor	cx,word [bx+6]
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	word [bx+2],dx
		mov	word [bx+4],si
		mov	word [bx+6],cx
		mov	si,word [bp+8]
		mov	bx,word [bp+6]
		lea	di,[si+8]
		push	ds
		pop	es
		lea	si,[bx+8]
		cld
		mov	cx,4
		rep
		movsw
		mov	sp,bp
		pop	bp
		ret	6
