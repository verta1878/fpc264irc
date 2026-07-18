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
	GLOBAL SYSUTILS_$$_STRPCOPY$PCHAR$ANSISTRING$$PCHAR
SYSUTILS_$$_STRPCOPY$PCHAR$ANSISTRING$$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+6]
		mov	ax,word [bp+4]
		test	ax,ax
		jne	..@j12848
		mov	ax,word FPC_EMPTYCHAR
..@j12848:
		push	ax
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j12851
		mov	bx,word [bx-2]
..@j12851:
		inc	bx
		push	bx
		call	SYSUTILS_$$_STRMOVE$PCHAR$PCHAR$SMALLINT$$PCHAR
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSUTILS_$$_STRMOVE$PCHAR$PCHAR$SMALLINT$$PCHAR
EXTERN	FPC_EMPTYCHAR
