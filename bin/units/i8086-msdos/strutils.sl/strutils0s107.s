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
	GLOBAL STRUTILS_$$_COPY2SYMBDEL$ANSISTRING$CHAR$$ANSISTRING
STRUTILS_$$_COPY2SYMBDEL$ANSISTRING$CHAR$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	word [bp-4],0
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		mov	bx,word [bp+6]
		push	word [bx]
		call	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		je	..@j3017
		jmp	..@j3018
..@j3017:
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx]
		call	fpc_ansistr_assign
		mov	ax,word [bp+6]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		jmp	..@j3027
..@j3018:
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-4]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx]
		mov	ax,1
		push	ax
		mov	ax,word [bp-2]
		dec	ax
		push	ax
		call	fpc_ansistr_copy
		push	word [bp-4]
		call	fpc_ansistr_assign
		mov	ax,word [bp+6]
		push	ax
		mov	ax,1
		push	ax
		push	word [bp-2]
		call	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
..@j3027:
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_ansistr_decr_ref
EXTERN	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
EXTERN	fpc_ansistr_copy
EXTERN	fpc_ansistr_assign
EXTERN	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
