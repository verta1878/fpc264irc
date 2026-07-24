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
	GLOBAL CRT_$$_GOTOXY$TCRTCOORD$TCRTCOORD
CRT_$$_GOTOXY$TCRTCOORD$TCRTCOORD:
		push	bp
		mov	bp,sp
		jmp	..@j152
..@j152:
		mov	al,byte [TC_$CRT_$$_WINDMAX]
		mov	ah,0
		mov	dl,byte [TC_$CRT_$$_WINDMIN]
		mov	dh,0
		sub	ax,dx
		inc	ax
		mov	dl,byte [bp+6]
		mov	dh,0
		cmp	ax,dx
		jge	..@j151
		jmp	..@j149
..@j151:
		jmp	..@j150
..@j150:
		mov	al,byte [TC_$CRT_$$_WINDMAX+1]
		mov	ah,0
		mov	dl,byte [TC_$CRT_$$_WINDMIN+1]
		mov	dh,0
		sub	ax,dx
		inc	ax
		mov	dl,byte [bp+4]
		mov	dh,0
		cmp	ax,dx
		jge	..@j148
		jmp	..@j149
..@j148:
		mov	al,byte [TC_$CRT_$$_WINDMIN]
		add	byte [bp+6],al
		mov	al,byte [TC_$CRT_$$_WINDMIN+1]
		add	byte [bp+4],al
		mov	al,byte [bp+6]
		mov	ah,0
		push	ax
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		call	CRT_$$_SETSCREENCURSOR$SMALLINT$SMALLINT
..@j149:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CRT_$$_SETSCREENCURSOR$SMALLINT$SMALLINT
EXTERN	TC_$CRT_$$_WINDMIN
EXTERN	TC_$CRT_$$_WINDMAX
