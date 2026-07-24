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
	GLOBAL CRT_$$_CURSOROFF
CRT_$$_CURSOROFF:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	word [bp-20],256
		mov	word [bp-16],8192
		mov	ax,16
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_INTR
		mov	sp,bp
		pop	bp
		ret
EXTERN	FPC_INTR
