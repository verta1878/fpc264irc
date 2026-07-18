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
	GLOBAL VARUTILS_$$_LSTRTOBOOLEAN$POINTER$$BOOLEAN
VARUTILS_$$_LSTRTOBOOLEAN$POINTER$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+4]
		lea	ax,[bp-1]
		push	ax
		call	SYSUTILS_$$_TRYSTRTOBOOL$ANSISTRING$BOOLEAN$$BOOLEAN
		test	al,al
		je	..@j1886
		jmp	..@j1887
..@j1886:
		mov	ax,256
		push	ax
		mov	ax,11
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j1887:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
EXTERN	SYSUTILS_$$_TRYSTRTOBOOL$ANSISTRING$BOOLEAN$$BOOLEAN
