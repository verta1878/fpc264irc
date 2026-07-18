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
	GLOBAL FGL$_$TFPSLIST_$__$$_EXCHANGE$SMALLINT$SMALLINT
FGL$_$TFPSLIST_$__$$_EXCHANGE$SMALLINT$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,256
		cmp	word [bp+6],0
		jl	..@j416
		jmp	..@j418
..@j418:
		mov	bx,word [bp+8]
		mov	ax,word [bx+4]
		cmp	ax,word [bp+6]
		jle	..@j416
		jmp	..@j417
..@j416:
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR+2]
		call	fpc_ansistr_to_shortstr
		lea	ax,[bp-256]
		push	ax
		push	word [bp+6]
		call	FGL$_$TFPSLIST_$__$$_ERROR$SHORTSTRING$SMALLINT
..@j417:
		cmp	word [bp+4],0
		jl	..@j431
		jmp	..@j433
..@j433:
		mov	bx,word [bp+8]
		mov	ax,word [bx+4]
		cmp	ax,word [bp+4]
		jle	..@j431
		jmp	..@j432
..@j431:
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR+2]
		call	fpc_ansistr_to_shortstr
		lea	ax,[bp-256]
		push	ax
		push	word [bp+4]
		call	FGL$_$TFPSLIST_$__$$_ERROR$SHORTSTRING$SMALLINT
..@j432:
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		call	FGL$_$TFPSLIST_$__$$_INTERNALEXCHANGE$SMALLINT$SMALLINT
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FGL$_$TFPSLIST_$__$$_INTERNALEXCHANGE$SMALLINT$SMALLINT
EXTERN	FGL$_$TFPSLIST_$__$$_ERROR$SHORTSTRING$SMALLINT
EXTERN	fpc_ansistr_to_shortstr
EXTERN	RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR
