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
	GLOBAL STRUTILS_$$_SOUNDEXINT$ANSISTRING$TSOUNDEXINTLENGTH$$SMALLINT
STRUTILS_$$_SOUNDEXINT$ANSISTRING$TSOUNDEXINTLENGTH$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	word [bp-4],0
		mov	word [bp-2],-1
		lea	ax,[bp-4]
		push	ax
		push	word [bp+6]
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		call	STRUTILS_$$_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING
		mov	bx,word [bp-4]
		test	bx,bx
		je	..@j2486
		mov	bx,word [bx-2]
..@j2486:
		cmp	bx,0
		jg	..@j2484
		jmp	..@j2485
..@j2484:
		mov	bx,word [bp-4]
		mov	al,byte [bx]
		mov	ah,0
		sub	ax,65
		mov	word [bp-2],ax
		cmp	byte [bp+4],1
		ja	..@j2489
		jmp	..@j2490
..@j2489:
		mov	ax,26
		mul	word [bp-2]
		mov	bx,word [bp-4]
		mov	dl,byte [bx+1]
		mov	dh,0
		sub	dx,48
		add	dx,ax
		mov	word [bp-2],dx
		mov	al,byte [bp+4]
		mov	ah,0
		mov	cx,ax
		mov	word [bp-6],3
		cmp	cx,word [bp-6]
		jl	..@j2496
		dec	word [bp-6]
	ALIGN 2
..@j2497:
		inc	word [bp-6]
		mov	ax,7
		mul	word [bp-2]
		mov	bx,word [bp-4]
		mov	si,word [bp-6]
		mov	dl,byte [bx+si-1]
		mov	dh,0
		sub	dx,48
		add	dx,ax
		mov	word [bp-2],dx
		cmp	cx,word [bp-6]
		jg	..@j2497
..@j2496:
..@j2490:
		mov	ax,9
		mul	word [bp-2]
		mov	dl,byte [bp+4]
		mov	dh,0
		add	dx,ax
		mov	word [bp-2],dx
..@j2485:
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_ansistr_decr_ref
EXTERN	STRUTILS_$$_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING
