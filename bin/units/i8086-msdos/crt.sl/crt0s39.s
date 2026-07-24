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
	GLOBAL CRT_$$_CRTWRITE$TEXTREC
CRT_$$_CRTWRITE$TEXTREC:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word U_$CRT_$$_CURRX
		push	ax
		mov	ax,word U_$CRT_$$_CURRY
		push	ax
		call	CRT_$$_GETSCREENCURSOR$SMALLINT$SMALLINT
		mov	bx,word [bp+4]
		mov	ax,word [bx+10]
		dec	ax
		mov	word [bp-4],ax
		mov	word [bp-2],0
		mov	ax,word [bp-4]
		cmp	ax,word [bp-2]
		jl	..@j475
		dec	word [bp-2]
	ALIGN 2
..@j476:
		inc	word [bp-2]
		mov	bx,word [bp+4]
		mov	si,word [bp-2]
		mov	al,byte [bx+si+572]
		mov	ah,0
		push	ax
		call	CRT_$$_WRITECHAR$CHAR
		mov	ax,word [bp-4]
		cmp	ax,word [bp-2]
		jg	..@j476
..@j475:
		push	word [U_$CRT_$$_CURRX]
		push	word [U_$CRT_$$_CURRY]
		call	CRT_$$_SETSCREENCURSOR$SMALLINT$SMALLINT
		mov	bx,word [bp+4]
		mov	word [bx+10],0
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CRT_$$_SETSCREENCURSOR$SMALLINT$SMALLINT
EXTERN	CRT_$$_WRITECHAR$CHAR
EXTERN	CRT_$$_GETSCREENCURSOR$SMALLINT$SMALLINT
EXTERN	U_$CRT_$$_CURRY
EXTERN	U_$CRT_$$_CURRX
