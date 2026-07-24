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
	GLOBAL SYSUTILS_$$_STRTOTIME$SHORTSTRING$$TDATETIME
SYSUTILS_$$_STRTOTIME$SHORTSTRING$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+4]
		lea	ax,[bx+1]
		push	ax
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		mov	ah,0
		push	ax
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
