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
	GLOBAL SYSUTILS_$$_FINDFIRST$RAWBYTESTRING$LONGINT$TRAWBYTESEARCHREC$$LONGINT
SYSUTILS_$$_FINDFIRST$RAWBYTESTRING$LONGINT$TRAWBYTESEARCHREC$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC
		push	ax
		call	fpc_initialize
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		mov	ax,word [bp+4]
		mov	word [bp-6],ax
		push	word [bp-6]
		mov	ax,word INIT_$SYSUTILS_$$_TABSTRACTSEARCHREC
		push	ax
		call	fpc_finalize
		push	word [bp-6]
		mov	bx,word [bp+4]
		lea	ax,[bx+16]
		push	ax
		call	SYSUTILS_$$_INTERNALFINDFIRST$RAWBYTESTRING$LONGINT$TABSTRACTSEARCHREC$RAWBYTESTRING$$LONGINT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jne	..@j2557
		cmp	ax,0
		jne	..@j2557
		jmp	..@j2556
..@j2556:
		mov	bx,word [bp+4]
		lea	ax,[bx+16]
		push	ax
		push	word [U_$SYSTEM_$$_DEFAULTRTLFILESYSTEMCODEPAGE]
		mov	ax,1
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
..@j2557:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
EXTERN	U_$SYSTEM_$$_DEFAULTRTLFILESYSTEMCODEPAGE
EXTERN	SYSUTILS_$$_INTERNALFINDFIRST$RAWBYTESTRING$LONGINT$TABSTRACTSEARCHREC$RAWBYTESTRING$$LONGINT
EXTERN	fpc_finalize
EXTERN	INIT_$SYSUTILS_$$_TABSTRACTSEARCHREC
EXTERN	fpc_initialize
EXTERN	INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC
