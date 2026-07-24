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
	GLOBAL CRT_$$_WHEREX$$TCRTCOORD
CRT_$$_WHEREX$$TCRTCOORD:
		push	bp
		mov	bp,sp
		sub	sp,6
		lea	ax,[bp-4]
		push	ax
		lea	ax,[bp-6]
		push	ax
		call	CRT_$$_GETSCREENCURSOR$SMALLINT$SMALLINT
		mov	dl,byte [TC_$CRT_$$_WINDMIN]
		mov	dh,0
		mov	ax,word [bp-4]
		sub	ax,dx
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret
EXTERN	TC_$CRT_$$_WINDMIN
EXTERN	CRT_$$_GETSCREENCURSOR$SMALLINT$SMALLINT
