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
	GLOBAL CRT_$$_DELLINE
CRT_$$_DELLINE:
		push	bp
		mov	bp,sp
		call	CRT_$$_WHEREY$$TCRTCOORD
		mov	ah,0
		push	ax
		call	CRT_$$_REMOVELINE$WORD
		mov	sp,bp
		pop	bp
		ret
EXTERN	CRT_$$_REMOVELINE$WORD
EXTERN	CRT_$$_WHEREY$$TCRTCOORD
