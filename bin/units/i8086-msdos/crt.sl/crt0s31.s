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
	GLOBAL CRT_$$_REMOVELINE$WORD
CRT_$$_REMOVELINE$WORD:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	al,byte [TC_$CRT_$$_TEXTATTR]
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		or	ax,32
		mov	word [bp-2],ax
		mov	dl,byte [TC_$CRT_$$_WINDMIN+1]
		mov	dh,0
		mov	ax,word [bp+4]
		add	ax,dx
		mov	word [bp+4],ax
		jmp	..@j333
	ALIGN 2
..@j332:
		push	word [U_$CRT_$$_VIDSEG]
		mov	ax,word [U_$CRT_$$_SCREENWIDTH]
		mul	word [bp+4]
		mov	dl,byte [TC_$CRT_$$_WINDMIN]
		mov	dh,0
		add	dx,ax
		shl	dx,1
		push	dx
		push	word [U_$CRT_$$_VIDSEG]
		mov	ax,word [bp+4]
		mov	dx,0
		sub	ax,1
		sbb	dx,0
		push	dx
		push	ax
		mov	dx,word [U_$CRT_$$_SCREENWIDTH]
		mov	ax,0
		push	ax
		push	dx
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		mov	cl,byte [TC_$CRT_$$_WINDMIN]
		mov	ch,0
		mov	bx,0
		add	cx,ax
		adc	bx,dx
		shl	cx,1
		rcl	bx,1
		push	cx
		mov	al,byte [TC_$CRT_$$_WINDMAX]
		mov	ah,0
		mov	dl,byte [TC_$CRT_$$_WINDMIN]
		mov	dh,0
		sub	ax,dx
		inc	ax
		shl	ax,1
		push	ax
		call	CRT_$$_DOSMEMMOVE$WORD$WORD$WORD$WORD$WORD
		inc	word [bp+4]
..@j333:
		mov	al,byte [TC_$CRT_$$_WINDMAX+1]
		mov	ah,0
		cmp	ax,word [bp+4]
		jae	..@j332
		jmp	..@j334
..@j334:
		push	word [U_$CRT_$$_VIDSEG]
		mov	dl,byte [TC_$CRT_$$_WINDMAX+1]
		mov	dh,0
		mov	ax,word [U_$CRT_$$_SCREENWIDTH]
		mul	dx
		mov	dl,byte [TC_$CRT_$$_WINDMIN]
		mov	dh,0
		add	dx,ax
		shl	dx,1
		push	dx
		mov	al,byte [TC_$CRT_$$_WINDMAX]
		mov	ah,0
		mov	dl,byte [TC_$CRT_$$_WINDMIN]
		mov	dh,0
		sub	ax,dx
		inc	ax
		push	ax
		push	word [bp-2]
		call	CRT_$$_DOSMEMFILLWORD$WORD$WORD$WORD$WORD
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CRT_$$_DOSMEMFILLWORD$WORD$WORD$WORD$WORD
EXTERN	CRT_$$_DOSMEMMOVE$WORD$WORD$WORD$WORD$WORD
EXTERN	TC_$CRT_$$_WINDMAX
EXTERN	fpc_mul_longint
EXTERN	U_$CRT_$$_SCREENWIDTH
EXTERN	U_$CRT_$$_VIDSEG
EXTERN	TC_$CRT_$$_WINDMIN
EXTERN	TC_$CRT_$$_TEXTATTR
