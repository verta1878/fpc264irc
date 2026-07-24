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
	GLOBAL TYPINFO_$$_GETMETHODPROP$TOBJECT$PPROPINFO$$TMETHOD
TYPINFO_$$_GETMETHODPROP$TOBJECT$PPROPINFO$$TMETHOD:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+8]
		mov	word [bx],0
		mov	bx,word [bp+8]
		mov	word [bx+2],0
		mov	bx,word [bp+4]
		mov	al,byte [bx+16]
		mov	ah,0
		and	ax,3
		test	ax,ax
		jl	..@j2321
		test	ax,ax
		je	..@j2322
		dec	ax
		jl	..@j2321
		dec	ax
		jle	..@j2323
		jmp	..@j2321
..@j2322:
		mov	bx,word [bp+4]
		mov	dx,word [bx+2]
		mov	ax,word [bp+6]
		add	ax,dx
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jne	..@j2326
		jmp	..@j2327
..@j2326:
		mov	bx,word [bp+8]
		mov	si,word [bp-2]
		mov	ax,word [si]
		mov	word [bx],ax
		mov	ax,word [si+2]
		mov	word [bx+2],ax
..@j2327:
		jmp	..@j2320
..@j2323:
		mov	bx,word [bp+4]
		mov	al,byte [bx+16]
		mov	ah,0
		and	ax,3
		cmp	ax,1
		je	..@j2330
		jmp	..@j2331
..@j2330:
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		mov	word [bp-6],ax
		jmp	..@j2334
..@j2331:
		mov	si,word [bp+4]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [si+2]
		add	bx,ax
		mov	ax,word [bx]
		mov	word [bp-6],ax
..@j2334:
		mov	ax,word [bp+6]
		mov	word [bp-4],ax
		mov	bx,word [bp+4]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,6
		shr	ax,cl
		and	ax,1
		test	ax,ax
		jne	..@j2341
		jmp	..@j2342
..@j2341:
		push	word [bp-4]
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		cwd
		push	dx
		push	ax
		mov	ax,word [bp-6]
		call	ax
		jmp	..@j2349
..@j2342:
		push	word [bp-4]
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp-6]
		call	ax
..@j2349:
		jmp	..@j2320
..@j2321:
..@j2320:
		mov	sp,bp
		pop	bp
		ret	6
