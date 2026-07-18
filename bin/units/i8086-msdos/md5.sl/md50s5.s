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
	GLOBAL MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R3$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R3$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	cx,word [bp+18]
		mov	bx,word [bp+20]
		mov	ax,word [bp+14]
		mov	dx,word [bp+16]
		xor	ax,cx
		xor	dx,bx
		mov	cx,word [bp+10]
		mov	bx,word [bp+12]
		xor	cx,ax
		xor	bx,dx
		mov	si,word [bp+22]
		mov	ax,word [si]
		mov	dx,word [si+2]
		add	ax,cx
		adc	dx,bx
		mov	cx,word [bp+6]
		mov	bx,word [bp+8]
		add	cx,ax
		adc	bx,dx
		add	cx,-5215
		adc	bx,28377
		mov	word [bp-4],cx
		mov	word [bp-2],bx
		mov	al,byte [bp+4]
		mov	ah,0
		and	ax,31
		mov	cx,32
		sub	cx,ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		and	cx,31
		jz	..@j774
..@j775:
		shr	dx,1
		rcr	ax,1
		loop	..@j775
..@j774:
		mov	cl,byte [bp+4]
		mov	ch,0
		and	cx,31
		mov	bx,word [bp-4]
		mov	si,word [bp-2]
		and	cx,31
		jz	..@j776
..@j777:
		shl	bx,1
		rcl	si,1
		loop	..@j777
..@j776:
		or	bx,ax
		or	si,dx
		mov	di,word [bp+22]
		mov	word [di],bx
		mov	word [di+2],si
		mov	sp,bp
		pop	bp
		ret	22
