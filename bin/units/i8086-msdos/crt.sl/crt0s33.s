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
	GLOBAL CRT_$$_INSLINE
CRT_$$_INSLINE:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	al,byte [TC_$CRT_$$_TEXTATTR]
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		or	ax,32
		mov	word [bp-6],ax
		call	CRT_$$_WHEREY$$TCRTCOORD
		mov	ah,0
		mov	word [bp-4],ax
		mov	al,byte [TC_$CRT_$$_WINDMAX+1]
		mov	ah,0
		mov	dl,byte [TC_$CRT_$$_WINDMIN+1]
		mov	dh,0
		sub	ax,dx
		mov	word [bp-2],ax
		jmp	..@j372
	ALIGN 2
..@j371:
		push	word [U_$CRT_$$_VIDSEG]
		mov	al,byte [TC_$CRT_$$_WINDMIN+1]
		mov	ah,0
		mov	dx,word [bp-2]
		add	dx,ax
		dec	dx
		mov	ax,word [U_$CRT_$$_SCREENWIDTH]
		mul	dx
		mov	dl,byte [TC_$CRT_$$_WINDMIN]
		mov	dh,0
		add	dx,ax
		shl	dx,1
		push	dx
		push	word [U_$CRT_$$_VIDSEG]
		mov	al,byte [TC_$CRT_$$_WINDMIN+1]
		mov	ah,0
		mov	dx,word [bp-2]
		add	dx,ax
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
		shl	ax,1
		push	ax
		call	CRT_$$_DOSMEMMOVE$WORD$WORD$WORD$WORD$WORD
		dec	word [bp-2]
..@j372:
		mov	ax,word [bp-2]
		cmp	ax,word [bp-4]
		jge	..@j371
		jmp	..@j373
..@j373:
		push	word [U_$CRT_$$_VIDSEG]
		mov	al,byte [TC_$CRT_$$_WINDMIN+1]
		mov	ah,0
		mov	dx,word [bp-4]
		add	dx,ax
		dec	dx
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
		push	word [bp-6]
		call	CRT_$$_DOSMEMFILLWORD$WORD$WORD$WORD$WORD
		mov	sp,bp
		pop	bp
		ret
EXTERN	CRT_$$_DOSMEMFILLWORD$WORD$WORD$WORD$WORD
EXTERN	CRT_$$_DOSMEMMOVE$WORD$WORD$WORD$WORD$WORD
EXTERN	U_$CRT_$$_SCREENWIDTH
EXTERN	U_$CRT_$$_VIDSEG
EXTERN	TC_$CRT_$$_WINDMIN
EXTERN	TC_$CRT_$$_WINDMAX
EXTERN	CRT_$$_WHEREY$$TCRTCOORD
EXTERN	TC_$CRT_$$_TEXTATTR
