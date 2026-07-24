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
	GLOBAL DOS_$$_DODIRSEPARATORS$SHORTSTRING
DOS_$$_DODIRSEPARATORS$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+4]
		mov	ax,0
		mov	dl,byte [bx]
		mov	dh,0
		mov	di,dx
		mov	dx,ax
		mov	word [bp-4],1
		mov	word [bp-2],0
		cmp	dx,word [bp-2]
		jl	..@j8
		jg	..@j10
		cmp	di,word [bp-4]
		jb	..@j8
..@j10:
		sub	word [bp-4],1
		sbb	word [bp-2],0
	ALIGN 2
..@j9:
		add	word [bp-4],1
		adc	word [bp-2],0
		mov	bx,word [bp+4]
		mov	al,byte [bp-4]
		mov	byte [bp-6],al
		mov	byte [bp-5],0
		mov	si,word [bp-6]
		mov	al,byte [bx+si]
		mov	ah,0
		mov	bx,ax
		mov	cl,4
		shr	bx,cl
		shl	bx,1
		mov	cx,ax
		and	cl,15
		test	ax,ax
		jbe	..@j13
		test	al,0
		jmp	..@j14
..@j13:
		mov	ax,1
		shl	ax,cl
		test	word [TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS+bx],ax
..@j14:
		jne	..@j11
		jmp	..@j12
..@j11:
		mov	bx,word [bp+4]
		mov	al,byte [bp-4]
		mov	byte [bp-8],al
		mov	byte [bp-7],0
		mov	si,word [bp-8]
		mov	byte [bx+si],92
..@j12:
		cmp	dx,word [bp-2]
		jg	..@j9
		jl	..@j17
		cmp	di,word [bp-4]
		ja	..@j9
..@j17:
..@j8:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS
