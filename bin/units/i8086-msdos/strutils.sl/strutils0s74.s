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
	GLOBAL STRUTILS_$$_SEARCHBUF$PCHAR$SMALLINT$SMALLINT$SMALLINT$ANSISTRING$$PCHAR
STRUTILS_$$_SEARCHBUF$PCHAR$SMALLINT$SMALLINT$SMALLINT$ANSISTRING$$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+4]
		call	fpc_ansistr_incr_ref
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,1
		push	ax
		call	STRUTILS_$$_SEARCHBUF$crcF3608A10
		mov	word [bp-2],ax
		lea	ax,[bp+4]
		push	ax
		call	fpc_ansistr_decr_ref
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	fpc_ansistr_decr_ref
EXTERN	STRUTILS_$$_SEARCHBUF$crcF3608A10
EXTERN	fpc_ansistr_incr_ref
