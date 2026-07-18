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
	GLOBAL SYSTEM_$$_POS$SHORTSTRING$SHORTSTRING$$SMALLINT
SYSTEM_$$_POS$SHORTSTRING$SHORTSTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	word [bp-2],0
		mov	bx,word [bp+6]
		cmp	byte [bx],0
		ja	..@j3836
		jmp	..@j3837
..@j3836:
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,word [bp+6]
		mov	dl,byte [bx]
		mov	dh,0
		sub	ax,dx
		mov	word [bp-6],ax
		mov	word [bp-4],0
		mov	bx,word [bp+4]
		lea	ax,[bx+1]
		mov	word [bp-8],ax
		jmp	..@j3845
	ALIGN 2
..@j3844:
		inc	word [bp-4]
		mov	bx,word [bp+6]
		mov	si,word [bp-8]
		mov	al,byte [bx+1]
		cmp	al,byte [si]
		je	..@j3849
		jmp	..@j3848
..@j3849:
		mov	bx,word [bp+6]
		lea	ax,[bx+1]
		push	ax
		mov	ax,word [bp-8]
		push	ax
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_COMPARECHAR$formal$formal$SMALLINT$$SMALLINT
		test	ax,ax
		je	..@j3847
		jmp	..@j3848
..@j3847:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		jmp	..@j3832
..@j3848:
		inc	word [bp-8]
..@j3845:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jle	..@j3844
		jmp	..@j3846
..@j3846:
..@j3837:
..@j3832:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_COMPARECHAR$formal$formal$SMALLINT$$SMALLINT
