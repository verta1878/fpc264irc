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
	GLOBAL STRUTILS_$$_FINDMATCHESBOYERMOORECASESENSITIVE$PCHAR$PCHAR$SMALLINT$SMALLINT$SIZEINTARRAY$BOOLEAN
STRUTILS_$$_FINDMATCHESBOYERMOORECASESENSITIVE$PCHAR$PCHAR$SMALLINT$SMALLINT$SIZEINTARRAY$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,542
		mov	bx,word [bp+6]
		mov	word [bx],0
		mov	word [bp-522],0
		mov	ax,1
		push	ax
		lea	ax,[bp-534]
		push	ax
		lea	ax,[bp-528]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j37
		mov	word [bp-2],0
		mov	word [bp-4],0
		mov	ax,word [bp-2]
		mov	word [bp-538],ax
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word RTTI_$STRUTILS_$$_SIZEINTARRAY
		push	ax
		mov	ax,1
		push	ax
		lea	ax,[bp-538]
		push	ax
		call	fpc_dynarray_setlength
		cmp	word [bp+8],0
		je	..@j53
		jmp	..@j54
..@j53:
		jmp	..@j37
..@j54:
		mov	ax,word [bp+8]
		mov	word [bp-538],ax
		lea	ax,[bp-522]
		push	ax
		mov	ax,word RTTI_$STRUTILS_$$_SIZEINTARRAY
		push	ax
		mov	ax,1
		push	ax
		lea	ax,[bp-538]
		push	ax
		call	fpc_dynarray_setlength
		push	bp
		lea	ax,[bp-520]
		push	ax
		push	word [bp+12]
		push	word [bp+8]
		call	STRUTILS$_$FINDMATCHESBOYERMOORECASESENSITIVE$crc25A3F47D_$$_MAKEDELTAJUMPTABLE1$crcA210156B
		push	bp
		lea	ax,[bp-522]
		push	ax
		push	word [bp+12]
		push	word [bp+8]
		call	STRUTILS$_$FINDMATCHESBOYERMOORECASESENSITIVE$crc25A3F47D_$$_MAKEDELTAJUMPTABLE2$crc8D20DCFF
		mov	ax,word [bp+8]
		dec	ax
		mov	word [bp-6],ax
		jmp	..@j84
	ALIGN 2
..@j83:
		mov	ax,word [bp+8]
		dec	ax
		mov	word [bp-8],ax
		jmp	..@j89
	ALIGN 2
..@j88:
		dec	word [bp-6]
		dec	word [bp-8]
..@j89:
		cmp	word [bp-8],0
		jge	..@j91
		jmp	..@j90
..@j91:
		mov	bx,word [bp+14]
		mov	si,word [bp-6]
		mov	ax,word [bp+12]
		mov	word [bp-542],ax
		mov	di,word [bp-8]
		mov	al,byte [bx+si]
		mov	bx,word [bp-542]
		cmp	al,byte [bx+di]
		je	..@j88
		jmp	..@j90
..@j90:
		cmp	word [bp-8],0
		jl	..@j92
		jmp	..@j93
..@j92:
		mov	ax,word [bp-6]
		inc	ax
		mov	word [bp-538],ax
		mov	word [bp-540],bp
		mov	ax,word [bp-2]
		cmp	ax,word [bp-4]
		je	..@j99
		jmp	..@j100
..@j99:
		push	bp
		call	STRUTILS$_$FINDMATCHESBOYERMOORECASESENSITIVE$crc25A3F47D_$$_RESIZEALLOCATEDMATCHES
..@j100:
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bp-2]
		mov	si,ax
		shl	si,1
		mov	ax,word [bp-538]
		mov	word [bx+si],ax
		inc	word [bp-2]
		cmp	byte [bp+4],0
		je	..@j105
		jmp	..@j106
..@j105:
		jmp	..@j85
..@j106:
		mov	ax,word [bp+8]
		add	word [bp-6],ax
		mov	ax,word [bp+8]
		add	word [bp-6],ax
		jmp	..@j107
..@j93:
		push	bp
		mov	bx,word [bp+14]
		mov	si,word [bp-6]
		mov	al,byte [bx+si]
		mov	ah,0
		mov	si,ax
		shl	si,1
		push	word [bp+si-520]
		mov	bx,word [bp-522]
		mov	ax,word [bp-8]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		call	STRUTILS$_$FINDMATCHESBOYERMOORECASESENSITIVE$crc25A3F47D_$$_MAX$SMALLINT$SMALLINT$$SMALLINT
		mov	dx,word [bp-6]
		add	ax,dx
		mov	word [bp-6],ax
..@j107:
..@j84:
		mov	ax,word [bp-6]
		cmp	ax,word [bp+10]
		jl	..@j83
		jmp	..@j85
..@j85:
		mov	ax,word [bp-2]
		mov	word [bp-538],ax
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word RTTI_$STRUTILS_$$_SIZEINTARRAY
		push	ax
		mov	ax,1
		push	ax
		lea	ax,[bp-538]
		push	ax
		call	fpc_dynarray_setlength
..@j37:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-522]
		push	ax
		mov	ax,word RTTI_$STRUTILS_$$_SIZEINTARRAY
		push	ax
		call	fpc_finalize
		pop	ax
		test	ax,ax
		je	..@j38
		call	FPC_RERAISE
..@j38:
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	FPC_RERAISE
EXTERN	fpc_finalize
EXTERN	FPC_POPADDRSTACK
EXTERN	STRUTILS$_$FINDMATCHESBOYERMOORECASESENSITIVE$crc25A3F47D_$$_MAX$SMALLINT$SMALLINT$$SMALLINT
EXTERN	STRUTILS$_$FINDMATCHESBOYERMOORECASESENSITIVE$crc25A3F47D_$$_RESIZEALLOCATEDMATCHES
EXTERN	STRUTILS$_$FINDMATCHESBOYERMOORECASESENSITIVE$crc25A3F47D_$$_MAKEDELTAJUMPTABLE2$crc8D20DCFF
EXTERN	STRUTILS$_$FINDMATCHESBOYERMOORECASESENSITIVE$crc25A3F47D_$$_MAKEDELTAJUMPTABLE1$crcA210156B
EXTERN	fpc_dynarray_setlength
EXTERN	RTTI_$STRUTILS_$$_SIZEINTARRAY
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
