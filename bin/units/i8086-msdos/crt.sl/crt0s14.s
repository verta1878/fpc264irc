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
	GLOBAL CRT_$$_HIGHVIDEO
CRT_$$_HIGHVIDEO:
		push	bp
		mov	bp,sp
		mov	al,byte [TC_$CRT_$$_TEXTATTR]
		mov	ah,0
		or	ax,8
		push	ax
		call	CRT_$$_TEXTCOLOR$BYTE
		mov	sp,bp
		pop	bp
		ret
EXTERN	CRT_$$_TEXTCOLOR$BYTE
EXTERN	TC_$CRT_$$_TEXTATTR
