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
	GLOBAL CRT_$$_GETSCREENCURSOR$SMALLINT$SMALLINT
CRT_$$_GETSCREENCURSOR$SMALLINT$SMALLINT:
		push	bp
		mov	bp,sp
		mov	ax,64
		mov	es,ax
		mov	al,byte [es:+80]
		mov	ah,0
		inc	ax
		mov	bx,word [bp+6]
		mov	word [bx],ax
		mov	ax,64
		mov	es,ax
		mov	al,byte [es:+81]
		mov	ah,0
		inc	ax
		mov	bx,word [bp+4]
		mov	word [bx],ax
		mov	sp,bp
		pop	bp
		ret	4
