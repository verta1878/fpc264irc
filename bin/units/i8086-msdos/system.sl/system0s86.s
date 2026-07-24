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
	GLOBAL SYSTEM_$$_STRPAS$PCHAR$$SHORTSTRING
SYSTEM_$$_STRPAS$PCHAR$$SHORTSTRING:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+6]
		push	ax
		mov	ax,255
		push	ax
		push	word [bp+4]
		call	FPC_PCHAR_TO_SHORTSTR
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_PCHAR_TO_SHORTSTR
