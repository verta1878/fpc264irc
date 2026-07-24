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
	GLOBAL MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R1$crc6649ABE3
MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R1$crc6649ABE3:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+22]
		mov	bx,word [bp+24]
		not	ax
		not	bx
		mov	dx,word [bp+14]
		mov	cx,word [bp+16]
		and	dx,ax
		and	cx,bx
		mov	di,word [bp+22]
		mov	si,word [bp+24]
		mov	ax,word [bp+18]
		mov	bx,word [bp+20]
		and	ax,di
		and	bx,si
		or	ax,dx
		or	bx,cx
		mov	si,word [bp+26]
		mov	dx,word [si]
		mov	cx,word [si+2]
		add	dx,ax
		adc	cx,bx
		mov	ax,word [bp+10]
		mov	bx,word [bp+12]
		add	ax,dx
		adc	bx,cx
		mov	dx,word [bp+4]
		mov	cx,word [bp+6]
		add	dx,ax
		adc	cx,bx
		mov	word [bp-4],dx
		mov	word [bp-2],cx
		mov	al,byte [bp+8]
		mov	ah,0
		and	ax,31
		mov	cx,32
		sub	cx,ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		and	cx,31
		jz	..@j1882
..@j1883:
		shr	dx,1
		rcr	ax,1
		loop	..@j1883
..@j1882:
		mov	cl,byte [bp+8]
		mov	ch,0
		and	cx,31
		mov	bx,word [bp-4]
		mov	si,word [bp-2]
		and	cx,31
		jz	..@j1884
..@j1885:
		shl	bx,1
		rcl	si,1
		loop	..@j1885
..@j1884:
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
