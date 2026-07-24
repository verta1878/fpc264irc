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
	GLOBAL TYPINFO_$$_SETMETHODPROP$TOBJECT$PPROPINFO$TMETHOD
TYPINFO_$$_SETMETHODPROP$TOBJECT$PPROPINFO$TMETHOD:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+6]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,2
		shr	ax,cl
		and	ax,3
		test	ax,ax
		je	..@j2358
		sub	ax,1
		jb	..@j2357
		sub	ax,1
		jbe	..@j2359
		jmp	..@j2357
..@j2358:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	bx,word [bp+8]
		add	bx,ax
		mov	si,word [bp+4]
		mov	ax,word [si]
		mov	word [bx],ax
		mov	ax,word [si+2]
		mov	word [bx+2],ax
		jmp	..@j2356
..@j2359:
		mov	bx,word [bp+6]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,2
		shr	ax,cl
		and	ax,3
		cmp	ax,1
		je	..@j2362
		jmp	..@j2363
..@j2362:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	word [bp-4],ax
		jmp	..@j2366
..@j2363:
		mov	si,word [bp+6]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [si+4]
		add	bx,ax
		mov	ax,word [bx]
		mov	word [bp-4],ax
..@j2366:
		mov	ax,word [bp+8]
		mov	word [bp-2],ax
		mov	bx,word [bp+6]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,6
		shr	ax,cl
		and	ax,1
		test	ax,ax
		jne	..@j2373
		jmp	..@j2374
..@j2373:
		push	word [bp-2]
		mov	bx,word [bp+6]
		mov	ax,word [bx+8]
		cwd
		push	dx
		push	ax
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [bp-4]
		call	ax
		jmp	..@j2381
..@j2374:
		push	word [bp-2]
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [bp-4]
		call	ax
..@j2381:
		jmp	..@j2356
..@j2357:
..@j2356:
		mov	sp,bp
		pop	bp
		ret	6
