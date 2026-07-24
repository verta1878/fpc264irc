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
	GLOBAL CRT_$$_SETSCREENMODE$BYTE
CRT_$$_SETSCREENMODE$BYTE:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	al,byte [bp+4]
		mov	ah,0
		mov	word [bp-20],ax
		mov	ax,16
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_INTR
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_INTR
