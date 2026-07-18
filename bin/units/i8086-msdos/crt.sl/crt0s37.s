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
	GLOBAL CRT_$$_VIDMEMWRITEWORD$WORD$WORD
CRT_$$_VIDMEMWRITEWORD$WORD$WORD:
		push	bp
		mov	bp,sp
		mov	di,word [bp+6]
		xor	ax,ax
		mov	es,ax
		mov	dx,word [es:+1123]
		add	dx,6
		mov	ax,word [U_$CRT_$$_VIDSEG]
		mov	es,ax
		test	byte [U_$CRT_$$_CHECKSNOW],1
		jz	..@j429
		mov	bx,word [bp+4]
		cli
..@j430:
		in	al,dx
		shr	al,1
		jc	..@j430
..@j431:
		in	al,dx
		shr	al,1
		jnc	..@j431
		xchg	ax,bx
		stosw
		sti
		jmp	..@j432
..@j429:
		mov	ax,word [bp+4]
		stosw
..@j432:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	U_$CRT_$$_CHECKSNOW
EXTERN	U_$CRT_$$_VIDSEG
