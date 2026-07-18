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
	GLOBAL SYSTEM_$$_INSERT$CHAR$OPENSTRING$SMALLINT
SYSTEM_$$_INSERT$CHAR$OPENSTRING$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,16
		cmp	word [bp+4],1
		jl	..@j3797
		jmp	..@j3798
..@j3797:
		mov	word [bp+4],1
..@j3798:
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	ah,0
		cmp	ax,word [bp+4]
		jl	..@j3801
		jmp	..@j3802
..@j3801:
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	ah,0
		inc	ax
		mov	word [bp+4],ax
		mov	ax,word [bp+4]
		cmp	ax,word [bp+6]
		jg	..@j3805
		jmp	..@j3806
..@j3805:
		jmp	..@j3795
..@j3806:
..@j3802:
		mov	bx,word [bp+8]
		mov	dl,byte [bx]
		mov	dh,0
		mov	ax,word [bp+4]
		sub	dx,ax
		inc	dx
		mov	word [bp-2],dx
		mov	bx,word [bp+8]
		mov	dl,byte [bx]
		mov	dh,0
		inc	dx
		mov	ax,word [bp+6]
		inc	ax
		cmp	dx,ax
		je	..@j3811
		jmp	..@j3810
..@j3811:
		cmp	word [bp-2],0
		jg	..@j3809
		jmp	..@j3810
..@j3809:
		dec	word [bp-2]
..@j3810:
		mov	al,byte [bp-2]
		mov	byte [bp-3],al
		mov	ax,word [bp+4]
		inc	ax
		mov	byte [bp-4],al
		mov	dx,word [bp+8]
		mov	al,byte [bp+4]
		mov	byte [bp-5],al
		mov	ax,word [bp+8]
		mov	word [bp-16],ax
		mov	al,byte [bp-5]
		mov	byte [bp-14],al
		mov	byte [bp-13],0
		mov	bx,word [bp-16]
		mov	si,word [bp-14]
		lea	ax,[bx+si]
		push	ax
		mov	word [bp-12],dx
		mov	al,byte [bp-4]
		mov	byte [bp-8],al
		mov	byte [bp-7],0
		mov	bx,word [bp-12]
		mov	si,word [bp-8]
		lea	ax,[bx+si]
		push	ax
		mov	al,byte [bp-3]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp+8]
		mov	al,byte [bp+4]
		mov	byte [bp-10],al
		mov	byte [bp-9],0
		mov	al,byte [bp+10]
		mov	si,word [bp-10]
		mov	byte [bx+si],al
		mov	ax,word [bp+4]
		mov	dx,word [bp-2]
		add	dx,ax
		mov	bx,word [bp+8]
		mov	byte [bx],dl
..@j3795:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
