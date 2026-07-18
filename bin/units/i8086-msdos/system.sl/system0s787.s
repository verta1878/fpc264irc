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
	GLOBAL SYSTEM_$$_SETVARIANTMANAGER$TVARIANTMANAGER
SYSTEM_$$_SETVARIANTMANAGER$TVARIANTMANAGER:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+4]
		mov	di,word U_$SYSTEM_$$_VARIANTMANAGER
		push	ds
		pop	es
		mov	si,ax
		cld
		mov	cx,46
		rep
		movsw
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	U_$SYSTEM_$$_VARIANTMANAGER
