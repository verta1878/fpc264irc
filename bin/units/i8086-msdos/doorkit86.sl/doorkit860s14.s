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
	GLOBAL DOORKIT86_$$_DOORANSICLRSCR
DOORKIT86_$$_DOORANSICLRSCR:
		push	bp
		mov	bp,sp
		mov	ax,word _$DOORKIT86$_Ld10
		push	ax
		call	DOORKIT86_$$_DOORWRITE$SHORTSTRING
		mov	sp,bp
		pop	bp
		ret
EXTERN	DOORKIT86_$$_DOORWRITE$SHORTSTRING
EXTERN	_$DOORKIT86$_Ld10
