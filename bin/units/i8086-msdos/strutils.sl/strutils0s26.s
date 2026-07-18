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
	GLOBAL STRUTILS_$$_FINDMATCHESBOYERMOORECASESENSITIVE$ANSISTRING$ANSISTRING$SIZEINTARRAY$BOOLEAN
STRUTILS_$$_FINDMATCHESBOYERMOORECASESENSITIVE$ANSISTRING$ANSISTRING$SIZEINTARRAY$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+6]
		mov	word [bx],0
		mov	ax,word [bp+10]
		test	ax,ax
		jne	..@j924
		mov	ax,word FPC_EMPTYCHAR
..@j924:
		push	ax
		mov	ax,word [bp+8]
		test	ax,ax
		jne	..@j927
		mov	ax,word FPC_EMPTYCHAR
..@j927:
		push	ax
		mov	bx,word [bp+10]
		test	bx,bx
		je	..@j930
		mov	bx,word [bx-2]
..@j930:
		push	bx
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j933
		mov	bx,word [bx-2]
..@j933:
		push	bx
		mov	ax,word [bp+6]
		mov	word [bp-4],ax
		push	word [bp-4]
		mov	ax,word RTTI_$STRUTILS_$$_SIZEINTARRAY
		push	ax
		call	fpc_dynarray_clear
		push	word [bp-4]
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		call	STRUTILS_$$_FINDMATCHESBOYERMOORECASESENSITIVE$PCHAR$PCHAR$SMALLINT$SMALLINT$SIZEINTARRAY$BOOLEAN
		mov	bx,word [bp+6]
		mov	di,word [bx]
		test	di,di
		je	..@j940
		mov	di,word [di-2]
		inc	di
..@j940:
		dec	di
		mov	word [bp-2],0
		cmp	di,word [bp-2]
		jl	..@j942
		dec	word [bp-2]
	ALIGN 2
..@j943:
		inc	word [bp-2]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bp-2]
		mov	si,ax
		shl	si,1
		inc	word [bx+si]
		cmp	di,word [bp-2]
		jg	..@j943
..@j942:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	STRUTILS_$$_FINDMATCHESBOYERMOORECASESENSITIVE$PCHAR$PCHAR$SMALLINT$SMALLINT$SIZEINTARRAY$BOOLEAN
EXTERN	fpc_dynarray_clear
EXTERN	RTTI_$STRUTILS_$$_SIZEINTARRAY
EXTERN	FPC_EMPTYCHAR
