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
	GLOBAL OBJPAS_$$_ASSIGNFILE$file$CHAR
OBJPAS_$$_ASSIGNFILE$file$CHAR:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+6]
		push	ax
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_ASSIGN$file$CHAR
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_ASSIGN$file$CHAR
