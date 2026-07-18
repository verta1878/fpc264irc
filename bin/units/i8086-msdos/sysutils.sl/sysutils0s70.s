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
	GLOBAL SYSUTILS_$$_FINDNEXT$TRAWBYTESEARCHREC$$LONGINT
SYSUTILS_$$_FINDNEXT$TRAWBYTESEARCHREC$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx+16]
		push	ax
		call	SYSUTILS_$$_INTERNALFINDNEXT$TABSTRACTSEARCHREC$RAWBYTESTRING$$LONGINT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jne	..@j2573
		cmp	ax,0
		jne	..@j2573
		jmp	..@j2572
..@j2572:
		mov	bx,word [bp+4]
		lea	ax,[bx+16]
		push	ax
		push	word [U_$SYSTEM_$$_DEFAULTRTLFILESYSTEMCODEPAGE]
		mov	ax,1
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
..@j2573:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
EXTERN	U_$SYSTEM_$$_DEFAULTRTLFILESYSTEMCODEPAGE
EXTERN	SYSUTILS_$$_INTERNALFINDNEXT$TABSTRACTSEARCHREC$RAWBYTESTRING$$LONGINT
