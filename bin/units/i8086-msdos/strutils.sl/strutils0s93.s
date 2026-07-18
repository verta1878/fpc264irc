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
	GLOBAL STRUTILS_$$_SOUNDEXCOMPARE$ANSISTRING$ANSISTRING$TSOUNDEXLENGTH$$SMALLINT
STRUTILS_$$_SOUNDEXCOMPARE$ANSISTRING$ANSISTRING$TSOUNDEXLENGTH$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	word [bp-8],0
		mov	word [bp-6],0
		mov	word [bp-4],0
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-4]
		push	ax
		lea	ax,[bp-6]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		call	STRUTILS_$$_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING
		push	word [bp-6]
		call	fpc_ansistr_assign
		lea	ax,[bp-6]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-6]
		push	ax
		lea	ax,[bp-8]
		push	ax
		push	word [bp+8]
		push	word [bp+4]
		call	STRUTILS_$$_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING
		push	word [bp-8]
		call	fpc_ansistr_assign
		push	word [bp-6]
		push	word [bp-4]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+18]
		call	ax
		mov	word [bp-2],ax
		lea	ax,[bp-8]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-6]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	fpc_ansistr_assign
EXTERN	STRUTILS_$$_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING
EXTERN	fpc_ansistr_decr_ref
