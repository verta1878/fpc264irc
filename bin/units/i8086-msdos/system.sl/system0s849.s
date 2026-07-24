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
	GLOBAL SYSTEM_$$_ERROR$TRUNTIMEERROR
SYSTEM_$$_ERROR$TRUNTIMEERROR:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		mov	al,byte [TC_$SYSTEM_$$_RUNTIMEERROREXITCODES+bx]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_RUNERROR$WORD
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_RUNERROR$WORD
EXTERN	TC_$SYSTEM_$$_RUNTIMEERROREXITCODES
