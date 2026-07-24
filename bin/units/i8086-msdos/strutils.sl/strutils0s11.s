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
	GLOBAL STRUTILS_$$_FINDMATCHESBOYERMOORECASEINSENSITIVE$PCHAR$PCHAR$SMALLINT$SMALLINT$SIZEINTARRAY$BOOLEAN
STRUTILS_$$_FINDMATCHESBOYERMOORECASEINSENSITIVE$PCHAR$PCHAR$SMALLINT$SMALLINT$SIZEINTARRAY$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,816
		mov	bx,word [bp+6]
		mov	word [bx],0
		mov	word [bp-2],0
		mov	word [bp-780],0
		mov	word [bp-804],0
		mov	word [bp-802],0
		mov	word [bp-800],0
		mov	ax,1
		push	ax
		lea	ax,[bp-794]
		push	ax
		lea	ax,[bp-788]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j246
		mov	word [bp-260],0
		mov	word [bp-262],0
		mov	ax,word [bp-260]
		mov	word [bp-798],ax
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word RTTI_$STRUTILS_$$_SIZEINTARRAY
		push	ax
		mov	ax,1
		push	ax
		lea	ax,[bp-798]
		push	ax
		call	fpc_dynarray_setlength
		cmp	word [bp+8],0
		je	..@j262
		jmp	..@j263
..@j262:
		jmp	..@j246
..@j263:
		mov	word [bp-266],0
		dec	word [bp-266]
	ALIGN 2
..@j266:
		inc	word [bp-266]
		lea	ax,[bp-800]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-802]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-802]
		push	ax
		lea	ax,[bp-804]
		push	ax
		mov	al,byte [bp-266]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		push	word [bp-804]
		call	fpc_ansistr_assign
		lea	ax,[bp-800]
		push	ax
		push	word [bp-802]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+16]
		call	ax
		mov	bx,word [bp-800]
		mov	si,word [bp-266]
		mov	al,byte [bx]
		mov	byte [bp+si-258],al
		cmp	word [bp-266],255
		jl	..@j266
		lea	ax,[bp-2]
		push	ax
		push	word [bp+8]
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	ax,word [bp+8]
		dec	ax
		mov	word [bp-816],ax
		mov	word [bp-266],0
		mov	ax,word [bp-816]
		cmp	ax,word [bp-266]
		jl	..@j292
		dec	word [bp-266]
	ALIGN 2
..@j293:
		inc	word [bp-266]
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_unique
		mov	word [bp-814],ax
		mov	ax,word [bp-266]
		mov	di,ax
		inc	di
		mov	bx,word [bp+12]
		mov	si,word [bp-266]
		mov	al,byte [bx+si]
		mov	byte [bp-812],al
		mov	byte [bp-811],0
		mov	si,word [bp-812]
		mov	al,byte [bp+si-258]
		mov	bx,word [bp-814]
		mov	byte [bx+di-1],al
		mov	ax,word [bp-816]
		cmp	ax,word [bp-266]
		jg	..@j293
..@j292:
		mov	ax,word [bp+8]
		mov	word [bp-798],ax
		lea	ax,[bp-780]
		push	ax
		mov	ax,word RTTI_$STRUTILS_$$_SIZEINTARRAY
		push	ax
		mov	ax,1
		push	ax
		lea	ax,[bp-798]
		push	ax
		call	fpc_dynarray_setlength
		push	bp
		lea	ax,[bp-778]
		push	ax
		mov	ax,word [bp-2]
		push	ax
		push	word [bp+8]
		call	STRUTILS$_$FINDMATCHESBOYERMOORECASEINSENSITIVE$crc25A3F47D_$$_MAKEDELTAJUMPTABLE1$crcA210156B
		push	bp
		lea	ax,[bp-780]
		push	ax
		mov	ax,word [bp-2]
		push	ax
		push	word [bp+8]
		call	STRUTILS$_$FINDMATCHESBOYERMOORECASEINSENSITIVE$crc25A3F47D_$$_MAKEDELTAJUMPTABLE2$crc8D20DCFF
		mov	ax,word [bp-2]
		mov	word [bp-782],ax
		mov	ax,word [bp+8]
		dec	ax
		mov	word [bp-264],ax
		jmp	..@j329
	ALIGN 2
..@j328:
		mov	ax,word [bp+8]
		dec	ax
		mov	word [bp-266],ax
		jmp	..@j334
	ALIGN 2
..@j333:
		dec	word [bp-264]
		dec	word [bp-266]
..@j334:
		cmp	word [bp-266],0
		jge	..@j336
		jmp	..@j335
..@j336:
		mov	bx,word [bp+14]
		mov	si,word [bp-264]
		mov	al,byte [bx+si]
		mov	byte [bp-810],al
		mov	byte [bp-809],0
		mov	bx,word [bp-782]
		mov	di,word [bp-266]
		mov	si,word [bp-810]
		mov	al,byte [bp+si-258]
		cmp	al,byte [bx+di]
		je	..@j333
		jmp	..@j335
..@j335:
		cmp	word [bp-266],0
		jl	..@j337
		jmp	..@j338
..@j337:
		mov	ax,word [bp-264]
		inc	ax
		mov	word [bp-798],ax
		mov	word [bp-806],bp
		mov	ax,word [bp-260]
		cmp	ax,word [bp-262]
		je	..@j344
		jmp	..@j345
..@j344:
		push	bp
		call	STRUTILS$_$FINDMATCHESBOYERMOORECASEINSENSITIVE$crc25A3F47D_$$_RESIZEALLOCATEDMATCHES
..@j345:
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bp-260]
		mov	si,ax
		shl	si,1
		mov	ax,word [bp-798]
		mov	word [bx+si],ax
		inc	word [bp-260]
		cmp	byte [bp+4],0
		je	..@j350
		jmp	..@j351
..@j350:
		jmp	..@j330
..@j351:
		mov	ax,word [bp+8]
		add	word [bp-264],ax
		mov	ax,word [bp+8]
		add	word [bp-264],ax
		jmp	..@j352
..@j338:
		push	bp
		mov	bx,word [bp+14]
		mov	si,word [bp-264]
		mov	al,byte [bx+si]
		mov	byte [bp-808],al
		mov	byte [bp-807],0
		mov	si,word [bp-808]
		mov	al,byte [bp+si-258]
		mov	ah,0
		mov	si,ax
		shl	si,1
		push	word [bp+si-778]
		mov	bx,word [bp-780]
		mov	ax,word [bp-266]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		call	STRUTILS$_$FINDMATCHESBOYERMOORECASEINSENSITIVE$crc25A3F47D_$$_MAX$SMALLINT$SMALLINT$$SMALLINT
		mov	dx,word [bp-264]
		add	ax,dx
		mov	word [bp-264],ax
..@j352:
..@j329:
		mov	ax,word [bp-264]
		cmp	ax,word [bp+10]
		jl	..@j328
		jmp	..@j330
..@j330:
		mov	ax,word [bp-260]
		mov	word [bp-806],ax
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word RTTI_$STRUTILS_$$_SIZEINTARRAY
		push	ax
		mov	ax,1
		push	ax
		lea	ax,[bp-806]
		push	ax
		call	fpc_dynarray_setlength
..@j246:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-804]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-802]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-800]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-780]
		push	ax
		mov	ax,word RTTI_$STRUTILS_$$_SIZEINTARRAY
		push	ax
		call	fpc_finalize
		pop	ax
		test	ax,ax
		je	..@j247
		call	FPC_RERAISE
..@j247:
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	FPC_RERAISE
EXTERN	fpc_finalize
EXTERN	FPC_POPADDRSTACK
EXTERN	STRUTILS$_$FINDMATCHESBOYERMOORECASEINSENSITIVE$crc25A3F47D_$$_MAX$SMALLINT$SMALLINT$$SMALLINT
EXTERN	STRUTILS$_$FINDMATCHESBOYERMOORECASEINSENSITIVE$crc25A3F47D_$$_RESIZEALLOCATEDMATCHES
EXTERN	STRUTILS$_$FINDMATCHESBOYERMOORECASEINSENSITIVE$crc25A3F47D_$$_MAKEDELTAJUMPTABLE2$crc8D20DCFF
EXTERN	STRUTILS$_$FINDMATCHESBOYERMOORECASEINSENSITIVE$crc25A3F47D_$$_MAKEDELTAJUMPTABLE1$crcA210156B
EXTERN	fpc_ansistr_unique
EXTERN	fpc_ansistr_setlength
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	fpc_ansistr_assign
EXTERN	fpc_char_to_ansistr
EXTERN	fpc_ansistr_decr_ref
EXTERN	fpc_dynarray_setlength
EXTERN	RTTI_$STRUTILS_$$_SIZEINTARRAY
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
