BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES_$$_BINTOHEX$PCHAR$PCHAR$SMALLINT
CLASSES_$$_BINTOHEX$PCHAR$PCHAR$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+4]
		dec	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	di,cx
		mov	word [bp-4],0
		mov	word [bp-2],0
		cmp	ax,word [bp-2]
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
		mov	bx,word [bp+8]
		mov	dl,byte [bx]
		mov	dh,0
		mov	cl,4
		shr	dx,cl
		inc	dx
		mov	bl,dl
		mov	bh,0
		mov	si,word [bp+6]
		mov	dl,byte [_$CLASSES$_Ld1+bx]
		mov	byte [si],dl
		mov	bx,word [bp+8]
		mov	dl,byte [bx]
		mov	dh,0
		and	dx,15
		inc	dx
		mov	bl,dl
		mov	bh,0
		mov	si,word [bp+6]
		mov	dl,byte [_$CLASSES$_Ld1+bx]
		mov	byte [si+1],dl
		add	word [bp+6],2
		inc	word [bp+8]
		cmp	ax,word [bp-2]
		jg	..@j9
		jl	..@j15
		cmp	di,word [bp-4]
		ja	..@j9
..@j15:
..@j8:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	_$CLASSES$_Ld1
