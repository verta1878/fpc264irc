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
	GLOBAL SYSTEM_$$_INSERT$SHORTSTRING$OPENSTRING$SMALLINT
SYSTEM_$$_INSERT$SHORTSTRING$OPENSTRING$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,24
		cmp	word [bp+4],1
		jl	..@j3740
		jmp	..@j3741
..@j3740:
		mov	word [bp+4],1
..@j3741:
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	ah,0
		cmp	ax,word [bp+4]
		jl	..@j3744
		jmp	..@j3745
..@j3744:
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	ah,0
		inc	ax
		mov	word [bp+4],ax
		mov	ax,word [bp+4]
		cmp	ax,word [bp+6]
		jg	..@j3748
		jmp	..@j3749
..@j3748:
		jmp	..@j3738
..@j3749:
..@j3745:
		mov	bx,word [bp+8]
		mov	dl,byte [bx]
		mov	dh,0
		mov	ax,word [bp+4]
		sub	dx,ax
		inc	dx
		mov	word [bp-6],dx
		mov	bx,word [bp+10]
		mov	al,byte [bx]
		mov	ah,0
		mov	word [bp-4],ax
		mov	bx,word [bp+10]
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,word [bp+8]
		mov	dl,byte [bx]
		mov	dh,0
		add	dx,ax
		mov	ax,word [bp+6]
		inc	ax
		cmp	dx,ax
		jge	..@j3754
		jmp	..@j3755
..@j3754:
		mov	bx,word [bp+10]
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,word [bp+8]
		mov	dl,byte [bx]
		mov	dh,0
		add	dx,ax
		mov	ax,word [bp+6]
		inc	ax
		sub	dx,ax
		inc	dx
		mov	word [bp-2],dx
		mov	ax,word [bp-2]
		cmp	ax,word [bp-6]
		jg	..@j3758
		jmp	..@j3759
..@j3758:
		mov	ax,word [bp-2]
		mov	dx,word [bp-6]
		sub	ax,dx
		sub	word [bp-4],ax
		mov	word [bp-6],0
		jmp	..@j3762
..@j3759:
		mov	ax,word [bp-2]
		sub	word [bp-6],ax
..@j3762:
..@j3755:
		mov	al,byte [bp-6]
		mov	byte [bp-7],al
		mov	ax,word [bp+4]
		mov	dx,word [bp-4]
		add	dx,ax
		mov	byte [bp-8],dl
		mov	dx,word [bp+8]
		mov	al,byte [bp+4]
		mov	byte [bp-9],al
		mov	ax,word [bp+8]
		mov	word [bp-24],ax
		mov	al,byte [bp-9]
		mov	byte [bp-20],al
		mov	byte [bp-19],0
		mov	bx,word [bp-24]
		mov	si,word [bp-20]
		lea	ax,[bx+si]
		push	ax
		mov	word [bp-16],dx
		mov	al,byte [bp-8]
		mov	byte [bp-14],al
		mov	byte [bp-13],0
		mov	bx,word [bp-16]
		mov	si,word [bp-14]
		lea	ax,[bx+si]
		push	ax
		mov	al,byte [bp-7]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	al,byte [bp-4]
		mov	byte [bp-9],al
		mov	al,byte [bp+4]
		mov	byte [bp-7],al
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		mov	word [bp-22],dx
		mov	bx,word [bp-22]
		lea	dx,[bx+1]
		push	dx
		mov	word [bp-18],ax
		mov	al,byte [bp-7]
		mov	byte [bp-12],al
		mov	byte [bp-11],0
		mov	bx,word [bp-18]
		mov	si,word [bp-12]
		lea	ax,[bx+si]
		push	ax
		mov	al,byte [bp-9]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	ax,word [bp+4]
		mov	dx,word [bp-4]
		add	dx,ax
		mov	ax,word [bp-6]
		add	ax,dx
		dec	ax
		mov	bx,word [bp+8]
		mov	byte [bx],al
..@j3738:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
