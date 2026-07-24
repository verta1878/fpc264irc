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
	GLOBAL SYSUTILS_$$_FORMATFLOAT$ANSISTRING$EXTENDED$TFORMATSETTINGS$$ANSISTRING
SYSUTILS_$$_FORMATFLOAT$ANSISTRING$EXTENDED$TFORMATSETTINGS$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,1026
		lea	ax,[bp-1025]
		push	ax
		push	word [bp+14]
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		mov	ax,word [bp+16]
		test	ax,ax
		jne	..@j8535
		mov	ax,word FPC_EMPTYCHAR
..@j8535:
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	SYSUTILS_$$_FLOATTOTEXTFMT$PCHAR$EXTENDED$PCHAR$TFORMATSETTINGS$$SMALLINT
		mov	si,ax
		mov	byte [bp+si-1025],0
		mov	ax,word [bp+18]
		push	ax
		lea	ax,[bp-1025]
		push	ax
		call	SYSUTILS_$$_STRPAS$PCHAR$$ANSISTRING
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	SYSUTILS_$$_STRPAS$PCHAR$$ANSISTRING
EXTERN	SYSUTILS_$$_FLOATTOTEXTFMT$PCHAR$EXTENDED$PCHAR$TFORMATSETTINGS$$SMALLINT
EXTERN	FPC_EMPTYCHAR
