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
	GLOBAL CRT_$$_WRITECHAR$CHAR
CRT_$$_WRITECHAR$CHAR:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	al,byte [bp+4]
		cmp	al,7
		jb	..@j436
		sub	al,7
		je	..@j440
		dec	al
		je	..@j439
		sub	al,2
		je	..@j437
		sub	al,3
		je	..@j438
		jmp	..@j436
..@j437:
		inc	word [U_$CRT_$$_CURRY]
		jmp	..@j435
..@j438:
		mov	al,byte [TC_$CRT_$$_WINDMIN]
		mov	ah,0
		inc	ax
		mov	word [U_$CRT_$$_CURRX],ax
		jmp	..@j435
..@j439:
		mov	al,byte [TC_$CRT_$$_WINDMIN]
		mov	ah,0
		inc	ax
		cmp	ax,word [U_$CRT_$$_CURRX]
		jl	..@j443
		jmp	..@j444
..@j443:
		dec	word [U_$CRT_$$_CURRX]
..@j444:
		jmp	..@j435
..@j440:
		mov	byte [bp-14],7
		mov	byte [bp-19],2
		mov	ax,33
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_INTR
		jmp	..@j435
..@j436:
		mov	dx,word [U_$CRT_$$_CURRY]
		dec	dx
		mov	ax,word [U_$CRT_$$_SCREENWIDTH]
		mul	dx
		mov	dx,word [U_$CRT_$$_CURRX]
		dec	dx
		add	dx,ax
		shl	dx,1
		push	dx
		mov	al,byte [TC_$CRT_$$_TEXTATTR]
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		mov	dl,byte [bp+4]
		mov	dh,0
		or	dx,ax
		push	dx
		call	CRT_$$_VIDMEMWRITEWORD$WORD$WORD
		inc	word [U_$CRT_$$_CURRX]
..@j435:
		mov	al,byte [TC_$CRT_$$_WINDMAX]
		mov	ah,0
		inc	ax
		cmp	ax,word [U_$CRT_$$_CURRX]
		jl	..@j457
		jmp	..@j458
..@j457:
		mov	al,byte [TC_$CRT_$$_WINDMIN]
		mov	ah,0
		inc	ax
		mov	word [U_$CRT_$$_CURRX],ax
		inc	word [U_$CRT_$$_CURRY]
..@j458:
		jmp	..@j462
	ALIGN 2
..@j461:
		mov	ax,1
		push	ax
		call	CRT_$$_REMOVELINE$WORD
		dec	word [U_$CRT_$$_CURRY]
..@j462:
		mov	al,byte [TC_$CRT_$$_WINDMAX+1]
		mov	ah,0
		inc	ax
		cmp	ax,word [U_$CRT_$$_CURRY]
		jl	..@j461
		jmp	..@j463
..@j463:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CRT_$$_REMOVELINE$WORD
EXTERN	TC_$CRT_$$_WINDMAX
EXTERN	CRT_$$_VIDMEMWRITEWORD$WORD$WORD
EXTERN	TC_$CRT_$$_TEXTATTR
EXTERN	U_$CRT_$$_SCREENWIDTH
EXTERN	FPC_INTR
EXTERN	U_$CRT_$$_CURRX
EXTERN	TC_$CRT_$$_WINDMIN
EXTERN	U_$CRT_$$_CURRY
