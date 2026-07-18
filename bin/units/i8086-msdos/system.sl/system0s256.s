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
	GLOBAL SYSTEM_$$_DELETE$OPENSTRING$SMALLINT$SMALLINT
SYSTEM_$$_DELETE$OPENSTRING$SMALLINT$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,12
		cmp	word [bp+6],0
		jle	..@j3709
		jmp	..@j3710
..@j3709:
		jmp	..@j3707
..@j3710:
		mov	bx,word [bp+10]
		mov	al,byte [bx]
		mov	ah,0
		cmp	ax,word [bp+6]
		jge	..@j3713
		jmp	..@j3712
..@j3713:
		cmp	word [bp+4],0
		jg	..@j3711
		jmp	..@j3712
..@j3711:
		mov	bx,word [bp+10]
		mov	dl,byte [bx]
		mov	dh,0
		mov	ax,word [bp+6]
		sub	dx,ax
		cmp	dx,word [bp+4]
		jl	..@j3714
		jmp	..@j3715
..@j3714:
		mov	bx,word [bp+10]
		mov	dl,byte [bx]
		mov	dh,0
		mov	ax,word [bp+6]
		sub	dx,ax
		inc	dx
		mov	word [bp+4],dx
..@j3715:
		mov	bx,word [bp+10]
		mov	dl,byte [bx]
		mov	dh,0
		mov	ax,word [bp+4]
		sub	dx,ax
		mov	bx,word [bp+10]
		mov	byte [bx],dl
		mov	bx,word [bp+10]
		mov	al,byte [bx]
		mov	ah,0
		cmp	ax,word [bp+6]
		jge	..@j3720
		jmp	..@j3721
..@j3720:
		mov	bx,word [bp+10]
		mov	dl,byte [bx]
		mov	dh,0
		mov	ax,word [bp+6]
		sub	dx,ax
		inc	dx
		mov	byte [bp-1],dl
		mov	al,byte [bp+6]
		mov	byte [bp-2],al
		mov	ax,word [bp+10]
		mov	word [bp-12],ax
		mov	ax,word [bp+6]
		mov	dx,word [bp+4]
		add	dx,ax
		mov	byte [bp-3],dl
		mov	ax,word [bp+10]
		mov	word [bp-10],ax
		mov	al,byte [bp-3]
		mov	byte [bp-6],al
		mov	byte [bp-5],0
		mov	bx,word [bp-10]
		mov	si,word [bp-6]
		lea	ax,[bx+si]
		push	ax
		mov	al,byte [bp-2]
		mov	byte [bp-8],al
		mov	byte [bp-7],0
		mov	bx,word [bp-12]
		mov	si,word [bp-8]
		lea	ax,[bx+si]
		push	ax
		mov	al,byte [bp-1]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j3721:
..@j3712:
..@j3707:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
