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
	GLOBAL SYSUTILS_$$_SAFELOADLIBRARY$ANSISTRING$LONGWORD$$WORD
SYSUTILS_$$_SAFELOADLIBRARY$ANSISTRING$LONGWORD$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	ax,1
		push	ax
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-8]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j15109
		mov	word [bp-2],0
..@j15109:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j15110
		call	FPC_RERAISE
..@j15110:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
