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
	GLOBAL CRT_$$_WINDOW$BYTE$BYTE$BYTE$BYTE
CRT_$$_WINDOW$BYTE$BYTE$BYTE$BYTE:
		push	bp
		mov	bp,sp
		mov	al,byte [bp+10]
		cmp	al,byte [bp+6]
		ja	..@j159
		jmp	..@j163
..@j163:
		mov	al,byte [bp+6]
		mov	ah,0
		cmp	ax,word [U_$CRT_$$_SCREENWIDTH]
		ja	..@j159
		jmp	..@j162
..@j162:
		mov	al,byte [bp+8]
		cmp	al,byte [bp+4]
		ja	..@j159
		jmp	..@j161
..@j161:
		mov	al,byte [bp+4]
		mov	ah,0
		cmp	ax,word [U_$CRT_$$_SCREENHEIGHT]
		ja	..@j159
		jmp	..@j160
..@j159:
		jmp	..@j157
..@j160:
		mov	al,byte [bp+8]
		mov	ah,0
		dec	ax
		mov	cl,8
		shl	ax,cl
		mov	dl,byte [bp+10]
		mov	dh,0
		dec	dx
		add	dx,ax
		mov	word [TC_$CRT_$$_WINDMIN],dx
		mov	al,byte [bp+4]
		mov	ah,0
		dec	ax
		mov	cl,8
		shl	ax,cl
		mov	dl,byte [bp+6]
		mov	dh,0
		dec	dx
		add	dx,ax
		mov	word [TC_$CRT_$$_WINDMAX],dx
		mov	ax,1
		push	ax
		mov	ax,1
		push	ax
		call	CRT_$$_GOTOXY$TCRTCOORD$TCRTCOORD
..@j157:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	CRT_$$_GOTOXY$TCRTCOORD$TCRTCOORD
EXTERN	TC_$CRT_$$_WINDMAX
EXTERN	TC_$CRT_$$_WINDMIN
EXTERN	U_$CRT_$$_SCREENHEIGHT
EXTERN	U_$CRT_$$_SCREENWIDTH
