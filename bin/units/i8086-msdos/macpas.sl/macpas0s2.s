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
	GLOBAL MACPAS_$$_FCC$SHORTSTRING$$LONGWORD
MACPAS_$$_FCC$SHORTSTRING$$LONGWORD:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		mov	al,byte [bx+1]
		mov	ah,0
		mov	cl,24
		shl	ax,cl
		mov	bx,word [bp+4]
		mov	dl,byte [bx+2]
		mov	dh,0
		mov	cl,16
		shl	dx,cl
		or	dx,ax
		mov	bx,word [bp+4]
		mov	al,byte [bx+3]
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		or	ax,dx
		mov	bx,word [bp+4]
		mov	dl,byte [bx+4]
		mov	dh,0
		or	dx,ax
		mov	ax,0
		mov	word [bp-4],dx
		mov	word [bp-2],ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
