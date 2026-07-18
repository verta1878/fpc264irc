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
	GLOBAL TYPES_$$_INTERSECTRECT$TRECT$TRECT$TRECT$$BOOLEAN
TYPES_$$_INTERSECTRECT$TRECT$TRECT$TRECT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,18
		mov	ax,word [bp+6]
		lea	di,[bp-18]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,8
		rep
		movsw
		mov	si,word [bp+4]
		mov	bx,word [bp+6]
		mov	dx,word [si]
		mov	ax,word [si+2]
		cmp	ax,word [bx+2]
		jg	..@j601
		jl	..@j602
		cmp	dx,word [bx]
		ja	..@j601
		jmp	..@j602
		jmp	..@j602
..@j601:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-18],ax
		mov	ax,word [bx+2]
		mov	word [bp-16],ax
..@j602:
		mov	si,word [bp+4]
		mov	bx,word [bp+6]
		mov	dx,word [si+4]
		mov	ax,word [si+6]
		cmp	ax,word [bx+6]
		jg	..@j605
		jl	..@j606
		cmp	dx,word [bx+4]
		ja	..@j605
		jmp	..@j606
		jmp	..@j606
..@j605:
		mov	bx,word [bp+4]
		mov	ax,word [bx+4]
		mov	word [bp-14],ax
		mov	ax,word [bx+6]
		mov	word [bp-12],ax
..@j606:
		mov	si,word [bp+4]
		mov	bx,word [bp+6]
		mov	dx,word [si+8]
		mov	ax,word [si+10]
		cmp	ax,word [bx+10]
		jl	..@j609
		jg	..@j610
		cmp	dx,word [bx+8]
		jb	..@j609
		jmp	..@j610
		jmp	..@j610
..@j609:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-10],ax
		mov	ax,word [bx+10]
		mov	word [bp-8],ax
..@j610:
		mov	si,word [bp+4]
		mov	bx,word [bp+6]
		mov	dx,word [si+12]
		mov	ax,word [si+14]
		cmp	ax,word [bx+14]
		jl	..@j613
		jg	..@j614
		cmp	dx,word [bx+12]
		jb	..@j613
		jmp	..@j614
		jmp	..@j614
..@j613:
		mov	bx,word [bp+4]
		mov	ax,word [bx+12]
		mov	word [bp-6],ax
		mov	ax,word [bx+14]
		mov	word [bp-4],ax
..@j614:
		lea	ax,[bp-18]
		push	ax
		call	TYPES_$$_ISRECTEMPTY$TRECT$$BOOLEAN
		test	al,al
		jne	..@j617
		jmp	..@j618
..@j617:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,16
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
		mov	byte [bp-1],0
		jmp	..@j629
..@j618:
		mov	byte [bp-1],1
		mov	di,word [bp+8]
		push	ds
		pop	es
		lea	si,[bp-18]
		cld
		mov	cx,8
		rep
		movsw
..@j629:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
EXTERN	TYPES_$$_ISRECTEMPTY$TRECT$$BOOLEAN
