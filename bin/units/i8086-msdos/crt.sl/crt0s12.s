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
	GLOBAL CRT_$$_TEXTCOLOR$BYTE
CRT_$$_TEXTCOLOR$BYTE:
		push	bp
		mov	bp,sp
		mov	al,byte [bp+4]
		mov	ah,0
		and	ax,15
		mov	dl,byte [TC_$CRT_$$_TEXTATTR]
		mov	dh,0
		and	dx,112
		or	dx,ax
		mov	byte [TC_$CRT_$$_TEXTATTR],dl
		cmp	byte [bp+4],15
		ja	..@j124
		jmp	..@j125
..@j124:
		mov	al,byte [TC_$CRT_$$_TEXTATTR]
		or	al,128
		mov	byte [TC_$CRT_$$_TEXTATTR],al
..@j125:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	TC_$CRT_$$_TEXTATTR
