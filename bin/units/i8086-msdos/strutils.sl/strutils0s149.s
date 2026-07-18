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
	GLOBAL STRUTILS_$$_REMOVETRAILINGCHARS$ANSISTRING$TSYSCHARSET
STRUTILS_$$_REMOVETRAILINGCHARS$ANSISTRING$TSYSCHARSET:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j4537
		mov	bx,word [bx-2]
..@j4537:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jg	..@j4538
		jl	..@j4539
		cmp	ax,0
		ja	..@j4538
		jmp	..@j4539
..@j4538:
		mov	ax,word [bp-4]
		mov	word [bp-8],ax
		mov	ax,word [bp-2]
		mov	word [bp-6],ax
		jmp	..@j4543
	ALIGN 2
..@j4542:
		sub	word [bp-8],1
		sbb	word [bp-6],0
..@j4543:
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		cmp	dx,0
		jg	..@j4545
		jl	..@j4544
		cmp	ax,0
		ja	..@j4545
		jmp	..@j4544
..@j4545:
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	si,word [bp-8]
		mov	ax,word [bp+4]
		mov	word [bp-10],ax
		mov	al,byte [bx+si-1]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		test	ax,ax
		jbe	..@j4546
		test	al,0
		jmp	..@j4547
..@j4546:
		mov	ax,1
		shl	ax,cl
		mov	bx,word [bp-10]
		test	word [bx+si],ax
..@j4547:
		jne	..@j4542
		jmp	..@j4544
..@j4544:
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		cmp	dx,word [bp-2]
		jne	..@j4548
		cmp	ax,word [bp-4]
		jne	..@j4548
		jmp	..@j4549
		jmp	..@j4549
..@j4548:
		mov	ax,word [bp+6]
		push	ax
		push	word [bp-8]
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
..@j4549:
..@j4539:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_ansistr_setlength
