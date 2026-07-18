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
	GLOBAL CRT_$$_TEXTBACKGROUND$BYTE
CRT_$$_TEXTBACKGROUND$BYTE:
		push	bp
		mov	bp,sp
		mov	al,byte [bp+4]
		mov	ah,0
		mov	cl,4
		shl	ax,cl
		and	ax,112
		mov	dl,byte [TC_$CRT_$$_TEXTATTR]
		and	dl,143
		mov	dh,0
		or	dx,ax
		mov	byte [TC_$CRT_$$_TEXTATTR],dl
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	TC_$CRT_$$_TEXTATTR
