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
	GLOBAL STRUTILS_$$_REMOVELEADINGCHARS$ANSISTRING$TSYSCHARSET
STRUTILS_$$_REMOVELEADINGCHARS$ANSISTRING$TSYSCHARSET:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j4504
		mov	bx,word [bx-2]
..@j4504:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jg	..@j4505
		jl	..@j4506
		cmp	ax,0
		ja	..@j4505
		jmp	..@j4506
..@j4505:
		mov	word [bp-8],1
		mov	word [bp-6],0
		jmp	..@j4510
	ALIGN 2
..@j4509:
		add	word [bp-8],1
		adc	word [bp-6],0
..@j4510:
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		cmp	dx,word [bp-2]
		jl	..@j4512
		jg	..@j4511
		cmp	ax,word [bp-4]
		jbe	..@j4512
		jmp	..@j4511
		jmp	..@j4511
..@j4512:
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
		jbe	..@j4513
		test	al,0
		jmp	..@j4514
..@j4513:
		mov	ax,1
		shl	ax,cl
		mov	bx,word [bp-10]
		test	word [bx+si],ax
..@j4514:
		jne	..@j4509
		jmp	..@j4511
..@j4511:
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		cmp	dx,0
		jg	..@j4515
		jl	..@j4516
		cmp	ax,1
		ja	..@j4515
		jmp	..@j4516
..@j4515:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,1
		push	ax
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		sub	ax,1
		sbb	dx,0
		push	ax
		call	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
..@j4516:
..@j4506:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
