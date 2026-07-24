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
	GLOBAL MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R4$crc6649ABE3
MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R4$crc6649ABE3:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+14]
		mov	dx,word [bp+16]
		not	ax
		not	dx
		mov	cx,word [bp+22]
		mov	bx,word [bp+24]
		or	cx,ax
		or	bx,dx
		mov	ax,word [bp+18]
		mov	dx,word [bp+20]
		xor	ax,cx
		xor	dx,bx
		mov	bx,word [bp+26]
		mov	cx,word [bx]
		mov	bx,word [bx+2]
		add	cx,ax
		adc	bx,dx
		mov	ax,word [bp+10]
		mov	dx,word [bp+12]
		add	ax,cx
		adc	dx,bx
		mov	cx,word [bp+4]
		mov	bx,word [bp+6]
		add	cx,ax
		adc	bx,dx
		mov	word [bp-4],cx
		mov	word [bp-2],bx
		mov	al,byte [bp+8]
		mov	ah,0
		and	ax,31
		mov	cx,32
		sub	cx,ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		and	cx,31
		jz	..@j1852
..@j1853:
		shr	dx,1
		rcr	ax,1
		loop	..@j1853
..@j1852:
		mov	cl,byte [bp+8]
		mov	ch,0
		and	cx,31
		mov	bx,word [bp-4]
		mov	si,word [bp-2]
		and	cx,31
		jz	..@j1854
..@j1855:
		shl	bx,1
		rcl	si,1
		loop	..@j1855
..@j1854:
		or	bx,ax
		or	si,dx
		mov	ax,word [bp+22]
		mov	dx,word [bp+24]
		add	ax,bx
		adc	dx,si
		mov	bx,word [bp+26]
		mov	word [bx],ax
		mov	word [bx+2],dx
		mov	sp,bp
		pop	bp
		ret	26
