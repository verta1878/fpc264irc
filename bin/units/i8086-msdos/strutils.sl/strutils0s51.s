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
	GLOBAL STRUTILS$_$NATURALCOMPARETEXT$crc79D5E46B_$$_GETCHARS
STRUTILS$_$NATURALCOMPARETEXT$crc79D5E46B_$$_GETCHARS:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		mov	word [bx-28],0
		jmp	..@j1555
	ALIGN 2
..@j1554:
		mov	bx,word [bp+4]
		inc	word [bx-28]
..@j1555:
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx-20]
		mov	bx,word [si-28]
		add	bx,ax
		mov	al,byte [bx]
		mov	ah,0
		sub	ax,48
		cmp	ax,10
		jb	..@j1558
..@j1558:
		jnc	..@j1557
		jmp	..@j1556
..@j1557:
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx-20]
		mov	bx,word [si-28]
		add	bx,ax
		cmp	byte [bx],0
		jne	..@j1554
		jmp	..@j1556
..@j1556:
		mov	bx,word [bp+4]
		lea	ax,[bx-32]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx-28]
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	bx,word [bp+4]
		mov	word [bx-36],1
		mov	bx,word [bp+4]
		mov	word [bx-38],0
		jmp	..@j1570
	ALIGN 2
..@j1569:
		mov	bx,word [bp+4]
		lea	ax,[bx-32]
		push	ax
		call	fpc_ansistr_unique
		mov	word [bp-4],ax
		mov	bx,word [bp+4]
		mov	si,word [bx-36]
		mov	di,word [bp+4]
		mov	bx,word [bp+4]
		mov	ax,word [di-20]
		mov	bx,word [bx-38]
		add	bx,ax
		mov	al,byte [bx]
		mov	bx,word [bp-4]
		mov	byte [bx+si-1],al
		mov	bx,word [bp+4]
		inc	word [bx-36]
		mov	bx,word [bp+4]
		inc	word [bx-38]
..@j1570:
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx-36]
		cmp	ax,word [si-28]
		jle	..@j1569
		jmp	..@j1571
..@j1571:
		mov	bx,word [bp+4]
		mov	word [bx-30],0
		jmp	..@j1579
	ALIGN 2
..@j1578:
		mov	bx,word [bp+4]
		inc	word [bx-30]
..@j1579:
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx-22]
		mov	bx,word [si-30]
		add	bx,ax
		mov	al,byte [bx]
		mov	ah,0
		sub	ax,48
		cmp	ax,10
		jb	..@j1582
..@j1582:
		jnc	..@j1581
		jmp	..@j1580
..@j1581:
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx-22]
		mov	bx,word [si-30]
		add	bx,ax
		cmp	byte [bx],0
		jne	..@j1578
		jmp	..@j1580
..@j1580:
		mov	bx,word [bp+4]
		lea	ax,[bx-34]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx-30]
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	bx,word [bp+4]
		mov	word [bx-36],1
		mov	bx,word [bp+4]
		mov	word [bx-38],0
		jmp	..@j1594
	ALIGN 2
..@j1593:
		mov	bx,word [bp+4]
		lea	ax,[bx-34]
		push	ax
		call	fpc_ansistr_unique
		mov	word [bp-2],ax
		mov	bx,word [bp+4]
		mov	si,word [bx-36]
		mov	di,word [bp+4]
		mov	bx,word [bp+4]
		mov	ax,word [di-22]
		mov	bx,word [bx-38]
		add	bx,ax
		mov	al,byte [bx]
		mov	bx,word [bp-2]
		mov	byte [bx+si-1],al
		mov	bx,word [bp+4]
		inc	word [bx-36]
		mov	bx,word [bp+4]
		inc	word [bx-38]
..@j1594:
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx-36]
		cmp	ax,word [si-30]
		jle	..@j1593
		jmp	..@j1595
..@j1595:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_ansistr_unique
EXTERN	fpc_ansistr_setlength
