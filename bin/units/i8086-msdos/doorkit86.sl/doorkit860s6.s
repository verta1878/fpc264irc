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
	GLOBAL DOORKIT86_$$_FOSSILWRITE$WORD$CHAR
DOORKIT86_$$_FOSSILWRITE$WORD$CHAR:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	byte [bp-19],1
		mov	al,byte [bp+4]
		mov	byte [bp-20],al
		mov	ax,word [bp+6]
		mov	word [bp-14],ax
		mov	ax,20
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_INTR
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_INTR
