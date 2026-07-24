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
	GLOBAL SYSUTILS_$$_STRTOTIME$ANSISTRING$$TDATETIME
SYSUTILS_$$_STRTOTIME$ANSISTRING$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	ax,word [bp+4]
		test	ax,ax
		jne	..@j10871
		mov	ax,word FPC_EMPTYCHAR
..@j10871:
		push	ax
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j10874
		mov	bx,word [bx-2]
..@j10874:
		push	bx
		mov	ax,0
		push	ax
		call	SYSUTILS_$$_STRTOTIME$PCHAR$SMALLINT$CHAR$$TDATETIME
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSUTILS_$$_STRTOTIME$PCHAR$SMALLINT$CHAR$$TDATETIME
EXTERN	FPC_EMPTYCHAR
