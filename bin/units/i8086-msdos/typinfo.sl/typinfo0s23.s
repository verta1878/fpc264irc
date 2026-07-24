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
	GLOBAL TYPINFO_$$_ISSTOREDPROP$TOBJECT$PPROPINFO$$BOOLEAN
TYPINFO_$$_ISSTOREDPROP$TOBJECT$PPROPINFO$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+4]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,4
		shr	ax,cl
		and	ax,3
		test	ax,ax
		je	..@j559
		sub	ax,1
		jb	..@j558
		sub	ax,1
		jbe	..@j561
		dec	ax
		je	..@j560
		jmp	..@j558
..@j559:
		mov	bx,word [bp+4]
		mov	ax,word [bx+6]
		mov	bx,word [bp+6]
		add	bx,ax
		mov	al,byte [bx]
		mov	byte [bp-1],al
		jmp	..@j557
..@j560:
		mov	bx,word [bp+4]
		mov	ax,word [bx+6]
		mov	dx,0
		or	dx,ax
		mov	al,0
		je	..@j568
		inc	ax
..@j568:
		mov	byte [bp-1],al
		jmp	..@j557
..@j561:
		mov	bx,word [bp+4]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,4
		shr	ax,cl
		and	ax,3
		cmp	ax,1
		je	..@j569
		jmp	..@j570
..@j569:
		mov	bx,word [bp+4]
		mov	ax,word [bx+6]
		mov	word [bp-6],ax
		jmp	..@j573
..@j570:
		mov	si,word [bp+4]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [si+6]
		add	bx,ax
		mov	ax,word [bx]
		mov	word [bp-6],ax
..@j573:
		mov	ax,word [bp+6]
		mov	word [bp-4],ax
		mov	bx,word [bp+4]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,6
		shr	ax,cl
		and	ax,1
		test	ax,ax
		jne	..@j580
		jmp	..@j581
..@j580:
		push	word [bp-4]
		mov	bx,word [bp+4]
		push	word [bx+8]
		mov	ax,word [bp-6]
		call	ax
		mov	byte [bp-1],al
		jmp	..@j588
..@j581:
		push	word [bp-4]
		mov	ax,word [bp-6]
		call	ax
		mov	byte [bp-1],al
..@j588:
		jmp	..@j557
..@j558:
..@j557:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
