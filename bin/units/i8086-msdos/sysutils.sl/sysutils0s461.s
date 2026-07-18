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
	GLOBAL SYSUTILS_$$_OUTOFMEMORYERROR
SYSUTILS_$$_OUTOFMEMORYERROR:
		push	bp
		mov	bp,sp
..@j15028:
		push	word [U_$SYSUTILS_$$_OUTOFMEMORY]
		mov	ax,word ..@j15028
		push	ax
		push	bp
		call	fpc_raiseexception
		mov	sp,bp
		pop	bp
		ret
EXTERN	fpc_raiseexception
EXTERN	U_$SYSUTILS_$$_OUTOFMEMORY
