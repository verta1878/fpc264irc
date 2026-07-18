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
	GLOBAL OBJPAS_$$_CLOSEFILE$file
OBJPAS_$$_CLOSEFILE$file:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM_$$_CLOSE$file
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_CLOSE$file
