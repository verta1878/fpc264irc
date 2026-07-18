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
	GLOBAL STRUTILS_$$_ANSICONTAINSTEXT$ANSISTRING$ANSISTRING$$BOOLEAN
STRUTILS_$$_ANSICONTAINSTEXT$ANSISTRING$ANSISTRING$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	word [bp-6],0
		mov	word [bp-4],0
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-4]
		push	ax
		push	word [bp+4]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+14]
		call	ax
		push	word [bp-4]
		lea	ax,[bp-6]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-6]
		push	ax
		push	word [bp+6]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+14]
		call	ax
		push	word [bp-6]
		call	SYSUTILS_$$_ANSIPOS$ANSISTRING$ANSISTRING$$SMALLINT
		cmp	ax,0
		mov	al,0
		jle	..@j1028
		inc	ax
..@j1028:
		mov	byte [bp-1],al
		lea	ax,[bp-6]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSUTILS_$$_ANSIPOS$ANSISTRING$ANSISTRING$$SMALLINT
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	fpc_ansistr_decr_ref
