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
	GLOBAL CRT_$$_CLREOL
CRT_$$_CLREOL:
		push	bp
		mov	bp,sp
		sub	sp,6
		lea	ax,[bp-2]
		push	ax
		lea	ax,[bp-4]
		push	ax
		call	CRT_$$_GETSCREENCURSOR$SMALLINT$SMALLINT
		mov	al,byte [TC_$CRT_$$_TEXTATTR]
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		or	ax,32
		mov	word [bp-6],ax
		mov	al,byte [TC_$CRT_$$_WINDMAX]
		mov	ah,0
		inc	ax
		cmp	ax,word [bp-2]
		jge	..@j212
		jmp	..@j213
..@j212:
		push	word [U_$CRT_$$_VIDSEG]
		mov	dx,word [bp-4]
		dec	dx
		mov	ax,word [U_$CRT_$$_SCREENWIDTH]
		mul	dx
		mov	dx,word [bp-2]
		dec	dx
		add	dx,ax
		shl	dx,1
		push	dx
		mov	al,byte [TC_$CRT_$$_WINDMAX]
		mov	ah,0
		mov	dx,word [bp-2]
		sub	ax,dx
		add	ax,2
		push	ax
		push	word [bp-6]
		call	CRT_$$_DOSMEMFILLWORD$WORD$WORD$WORD$WORD
..@j213:
		mov	sp,bp
		pop	bp
		ret
EXTERN	CRT_$$_DOSMEMFILLWORD$WORD$WORD$WORD$WORD
EXTERN	U_$CRT_$$_SCREENWIDTH
EXTERN	U_$CRT_$$_VIDSEG
EXTERN	TC_$CRT_$$_WINDMAX
EXTERN	TC_$CRT_$$_TEXTATTR
EXTERN	CRT_$$_GETSCREENCURSOR$SMALLINT$SMALLINT
