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
	GLOBAL SYSUTILS_$$_STRTODATE$SHORTSTRING$CHAR$$TDATETIME
SYSUTILS_$$_STRTODATE$SHORTSTRING$CHAR$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+6]
		lea	ax,[bx+1]
		push	ax
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		push	ax
		push	word [TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS+10]
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		call	SYSUTILS_$$_STRTODATE$PCHAR$SMALLINT$ANSISTRING$CHAR$$TDATETIME
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSUTILS_$$_STRTODATE$PCHAR$SMALLINT$ANSISTRING$CHAR$$TDATETIME
EXTERN	TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS
