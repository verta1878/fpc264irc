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
	GLOBAL SYSUTILS_$$_LASTDELIMITER$ANSISTRING$ANSISTRING$$SMALLINT
SYSUTILS_$$_LASTDELIMITER$ANSISTRING$ANSISTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,38
		lea	di,[bp-34]
		push	ss
		pop	es
		mov	si,word _$SYSUTILS$_Ld642
		cld
		mov	cx,16
		rep
		movsw
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j8650
		mov	bx,word [bx-2]
..@j8650:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	di,cx
		mov	dx,ax
		mov	word [bp-38],1
		mov	word [bp-36],0
		cmp	dx,word [bp-36]
		jl	..@j8652
		jg	..@j8654
		cmp	di,word [bp-38]
		jb	..@j8652
..@j8654:
		sub	word [bp-38],1
		sbb	word [bp-36],0
	ALIGN 2
..@j8653:
		add	word [bp-38],1
		adc	word [bp-36],0
		mov	bx,word [bp+6]
		mov	si,word [bp-38]
		mov	ax,0
		mov	al,byte [bx+si-1]
		mov	ah,0
		mov	si,ax
		mov	cl,3
		shr	si,cl
		mov	cx,ax
		and	cx,7
		mov	al,byte [bp+si-34]
		mov	ah,0
		mov	bx,1
		shl	bx,cl
		or	ax,bx
		mov	byte [bp+si-34],al
		cmp	dx,word [bp-36]
		jg	..@j8653
		jl	..@j8655
		cmp	di,word [bp-38]
		ja	..@j8653
..@j8655:
..@j8652:
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j8658
		mov	bx,word [bx-2]
..@j8658:
		mov	word [bp-2],bx
		jmp	..@j8660
	ALIGN 2
..@j8659:
		dec	word [bp-2]
..@j8660:
		cmp	word [bp-2],0
		jg	..@j8662
		jmp	..@j8661
..@j8662:
		mov	bx,word [bp+4]
		mov	si,word [bp-2]
		mov	al,byte [bx+si-1]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		mov	ax,1
		shl	ax,cl
		test	word [bp+si-34],ax
		je	..@j8659
		jmp	..@j8661
..@j8661:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	_$SYSUTILS$_Ld642
