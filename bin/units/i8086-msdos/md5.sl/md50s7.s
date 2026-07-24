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
	GLOBAL MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R1$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE
MD5$_$MD4TRANSFORM$TMDCONTEXT$POINTER_$$_R1$LONGWORD$LONGWORD$LONGWORD$LONGWORD$LONGWORD$BYTE:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+18]
		mov	bx,word [bp+20]
		not	ax
		not	bx
		mov	dx,word [bp+10]
		mov	cx,word [bp+12]
		and	dx,ax
		and	cx,bx
		mov	di,word [bp+18]
		mov	si,word [bp+20]
		mov	ax,word [bp+14]
		mov	bx,word [bp+16]
		and	ax,di
		and	bx,si
		or	ax,dx
		or	bx,cx
		mov	si,word [bp+22]
		mov	dx,word [si]
		mov	cx,word [si+2]
		add	dx,ax
		adc	cx,bx
		mov	ax,word [bp+6]
		mov	bx,word [bp+8]
		add	ax,dx
		adc	bx,cx
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
		jz	..@j794
..@j795:
		shr	dx,1
		rcr	ax,1
		loop	..@j795
..@j794:
		mov	cl,byte [bp+4]
		mov	ch,0
		and	cx,31
		mov	bx,word [bp-4]
		mov	si,word [bp-2]
		and	cx,31
		jz	..@j796
..@j797:
		shl	bx,1
		rcl	si,1
		loop	..@j797
..@j796:
		or	bx,ax
		or	si,dx
		mov	di,word [bp+22]
		mov	word [di],bx
		mov	word [di+2],si
		mov	sp,bp
		pop	bp
		ret	22
