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
	GLOBAL DOS_$$_DODIRSEPARATORS$PCHAR
DOS_$$_DODIRSEPARATORS$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,4
		push	word [bp+4]
		call	FPC_PCHAR_LENGTH
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	di,cx
		mov	word [bp-4],0
		mov	word [bp-2],0
		cmp	ax,word [bp-2]
		jl	..@j25
		jg	..@j27
		cmp	di,word [bp-4]
		jb	..@j25
..@j27:
		sub	word [bp-4],1
		sbb	word [bp-2],0
	ALIGN 2
..@j26:
		add	word [bp-4],1
		adc	word [bp-2],0
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		mov	dl,byte [bx+si]
		mov	dh,0
		mov	bx,dx
		mov	cl,4
		shr	bx,cl
		shl	bx,1
		mov	cx,dx
		and	cl,15
		test	dx,dx
		jbe	..@j30
		test	al,0
		jmp	..@j31
..@j30:
		mov	dx,1
		shl	dx,cl
		test	word [TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS+bx],dx
..@j31:
		jne	..@j28
		jmp	..@j29
..@j28:
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		mov	byte [bx+si],92
..@j29:
		cmp	ax,word [bp-2]
		jg	..@j26
		jl	..@j34
		cmp	di,word [bp-4]
		ja	..@j26
..@j34:
..@j25:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS
EXTERN	FPC_PCHAR_LENGTH
