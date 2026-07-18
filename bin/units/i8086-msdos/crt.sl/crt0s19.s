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
	GLOBAL CRT_$$_CLRSCR
CRT_$$_CLRSCR:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	al,byte [TC_$CRT_$$_TEXTATTR]
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		or	ax,32
		mov	word [bp-2],ax
		call	CRT_$$_FULLWIN$$BOOLEAN
		test	al,al
		jne	..@j176
		jmp	..@j177
..@j176:
		push	word [U_$CRT_$$_VIDSEG]
		mov	ax,0
		push	ax
		mov	ax,word [U_$CRT_$$_SCREENWIDTH]
		mul	word [U_$CRT_$$_SCREENHEIGHT]
		push	ax
		push	word [bp-2]
		call	CRT_$$_DOSMEMFILLWORD$WORD$WORD$WORD$WORD
		jmp	..@j186
..@j177:
		mov	al,byte [TC_$CRT_$$_WINDMAX+1]
		mov	ah,0
		mov	word [bp-6],ax
		mov	al,byte [TC_$CRT_$$_WINDMIN+1]
		mov	ah,0
		mov	word [bp-4],ax
		mov	ax,word [bp-6]
		cmp	ax,word [bp-4]
		jb	..@j190
		dec	word [bp-4]
	ALIGN 2
..@j191:
		inc	word [bp-4]
		push	word [U_$CRT_$$_VIDSEG]
		mov	ax,word [U_$CRT_$$_SCREENWIDTH]
		mul	word [bp-4]
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
		mov	ax,word [bp-6]
		cmp	ax,word [bp-4]
		ja	..@j191
..@j190:
..@j186:
		mov	ax,1
		push	ax
		mov	ax,1
		push	ax
		call	CRT_$$_GOTOXY$TCRTCOORD$TCRTCOORD
		mov	sp,bp
		pop	bp
		ret
EXTERN	CRT_$$_GOTOXY$TCRTCOORD$TCRTCOORD
EXTERN	TC_$CRT_$$_WINDMIN
EXTERN	TC_$CRT_$$_WINDMAX
EXTERN	CRT_$$_DOSMEMFILLWORD$WORD$WORD$WORD$WORD
EXTERN	U_$CRT_$$_SCREENHEIGHT
EXTERN	U_$CRT_$$_SCREENWIDTH
EXTERN	U_$CRT_$$_VIDSEG
EXTERN	CRT_$$_FULLWIN$$BOOLEAN
EXTERN	TC_$CRT_$$_TEXTATTR
