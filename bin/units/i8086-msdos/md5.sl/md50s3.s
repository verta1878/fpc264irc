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
	GLOBAL MD5_$$_MD2TRANSFORM$TMDCONTEXT$POINTER
MD5_$$_MD2TRANSFORM$TMDCONTEXT$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,64
		mov	bx,word [bp+6]
		lea	ax,[bx+8]
		push	ax
		lea	ax,[bp-60]
		push	ax
		mov	ax,16
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-44]
		push	ax
		mov	ax,16
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	word [bp-4],0
		mov	word [bp-2],0
		sub	word [bp-4],1
		sbb	word [bp-2],0
	ALIGN 2
..@j32:
		add	word [bp-4],1
		adc	word [bp-2],0
		mov	bx,word [bp+6]
		lea	bx,[bx+8]
		mov	si,word [bp-4]
		mov	ax,word [bp+4]
		mov	word [bp-62],ax
		mov	di,word [bp-4]
		mov	dl,byte [bx+si]
		mov	bx,word [bp-62]
		mov	al,byte [bx+di]
		xor	al,dl
		mov	dx,word [bp-4]
		mov	cx,word [bp-2]
		add	dx,32
		adc	cx,0
		mov	si,dx
		mov	byte [bp+si-60],al
		cmp	word [bp-2],0
		jb	..@j32
		ja	..@j35
		cmp	word [bp-4],15
		jb	..@j32
..@j35:
		mov	word [bp-12],0
		mov	word [bp-10],0
		mov	word [bp-4],0
		mov	word [bp-2],0
		sub	word [bp-4],1
		sbb	word [bp-2],0
	ALIGN 2
..@j40:
		add	word [bp-4],1
		adc	word [bp-2],0
		mov	word [bp-8],0
		mov	word [bp-6],0
		sub	word [bp-8],1
		sbb	word [bp-6],0
	ALIGN 2
..@j43:
		add	word [bp-8],1
		adc	word [bp-6],0
		mov	si,word [bp-8]
		mov	bx,word [bp-12]
		mov	dl,byte [bp+si-60]
		mov	al,byte [TC_$MD5$_$MD2TRANSFORM$TMDCONTEXT$POINTER_$$_PI_SUBST+bx]
		xor	al,dl
		mov	si,word [bp-8]
		mov	byte [bp+si-60],al
		mov	si,word [bp-8]
		mov	ax,0
		mov	dl,byte [bp+si-60]
		mov	dh,0
		mov	word [bp-12],dx
		mov	word [bp-10],ax
		cmp	word [bp-6],0
		jb	..@j43
		ja	..@j48
		cmp	word [bp-8],47
		jb	..@j43
..@j48:
		mov	cx,word [bp-12]
		mov	bx,word [bp-10]
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		add	ax,cx
		adc	dx,bx
		and	ax,255
		mov	dx,0
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		cmp	word [bp-2],0
		jb	..@j40
		ja	..@j51
		cmp	word [bp-4],17
		jb	..@j40
..@j51:
		lea	ax,[bp-60]
		push	ax
		mov	bx,word [bp+6]
		lea	ax,[bx+8]
		push	ax
		mov	ax,16
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp+6]
		mov	ax,0
		mov	dl,byte [bx+111]
		mov	dh,0
		mov	word [bp-12],dx
		mov	word [bp-10],ax
		mov	word [bp-4],0
		mov	word [bp-2],0
		sub	word [bp-4],1
		sbb	word [bp-2],0
	ALIGN 2
..@j62:
		add	word [bp-4],1
		adc	word [bp-2],0
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		mov	dx,0
		mov	al,byte [bx+si]
		mov	ah,0
		mov	bx,word [bp-12]
		mov	cx,word [bp-10]
		xor	bx,ax
		xor	cx,dx
		mov	ax,word [bp+6]
		mov	word [bp-64],ax
		mov	si,word [bp-4]
		mov	dl,byte [TC_$MD5$_$MD2TRANSFORM$TMDCONTEXT$POINTER_$$_PI_SUBST+bx]
		mov	bx,word [bp-64]
		mov	al,byte [bx+si+96]
		xor	al,dl
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		mov	byte [bx+si+96],al
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		mov	ax,0
		mov	dl,byte [bx+si+96]
		mov	dh,0
		mov	word [bp-12],dx
		mov	word [bp-10],ax
		cmp	word [bp-2],0
		jb	..@j62
		ja	..@j67
		cmp	word [bp-4],15
		jb	..@j62
..@j67:
		lea	ax,[bp-60]
		push	ax
		mov	ax,48
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
EXTERN	TC_$MD5$_$MD2TRANSFORM$TMDCONTEXT$POINTER_$$_PI_SUBST
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
