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
	GLOBAL MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R2$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R2$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	cx,word [bp+18]
		mov	si,word [bp+20]
		mov	dx,word [bp+14]
		mov	ax,word [bp+16]
		mov	bx,dx
		and	bx,cx
		and	ax,si
		mov	di,word [bp+18]
		mov	si,word [bp+20]
		mov	dx,word [bp+10]
		mov	cx,word [bp+12]
		and	dx,di
		and	cx,si
		or	dx,bx
		or	cx,ax
		mov	bx,word [bp+14]
		mov	di,word [bp+16]
		mov	ax,word [bp+10]
		mov	si,word [bp+12]
		and	ax,bx
		and	si,di
		or	ax,dx
		or	si,cx
		mov	bx,word [bp+22]
		mov	dx,word [bx]
		mov	cx,word [bx+2]
		add	dx,ax
		adc	cx,si
		mov	ax,word [bp+6]
		mov	bx,word [bp+8]
		add	ax,dx
		adc	bx,cx
		add	ax,31129
		adc	bx,23170
		mov	word [bp-4],ax
		mov	word [bp-2],bx
		mov	al,byte [bp+4]
		mov	ah,0
		and	ax,31
		mov	cx,32
		sub	cx,ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		and	cx,31
		jz	..@j784
..@j785:
		shr	dx,1
		rcr	ax,1
		loop	..@j785
..@j784:
		mov	cl,byte [bp+4]
		mov	ch,0
		and	cx,31
		mov	bx,word [bp-4]
		mov	si,word [bp-2]
		and	cx,31
		jz	..@j786
..@j787:
		shl	bx,1
		rcl	si,1
		loop	..@j787
..@j786:
		or	bx,ax
		or	si,dx
		mov	di,word [bp+22]
		mov	word [di],bx
		mov	word [di+2],si
		mov	sp,bp
		pop	bp
		ret	22
