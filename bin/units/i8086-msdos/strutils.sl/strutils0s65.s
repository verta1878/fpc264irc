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
	GLOBAL STRUTILS_$$_LEFTSTR$WIDESTRING$SMALLINT$$WIDESTRING
STRUTILS_$$_LEFTSTR$WIDESTRING$SMALLINT$$WIDESTRING:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	word [bp-2],0
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-2]
		push	ax
		push	word [bp+6]
		mov	ax,1
		push	ax
		push	word [bp+4]
		call	fpc_unicodestr_copy
		push	word [bp-2]
		call	fpc_unicodestr_assign
		lea	ax,[bp-2]
		push	ax
		call	fpc_unicodestr_decr_ref
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_unicodestr_decr_ref
EXTERN	fpc_unicodestr_assign
EXTERN	fpc_unicodestr_copy
