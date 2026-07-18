BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TSTRINGLIST_$__$$_INSERT$SMALLINT$ANSISTRING
CLASSES$_$TSTRINGLIST_$__$$_INSERT$SMALLINT$ANSISTRING:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+8]
		cmp	word [bx+39],2
		je	..@j9570
		jmp	..@j9571
..@j9570:
		push	word [bp+8]
		push	word [RESSTR_$RTLCONSTS_$$_SSORTEDLISTERROR+2]
		mov	ax,0
		push	ax
		call	CLASSES$_$TSTRINGS_$__$$_ERROR$ANSISTRING$SMALLINT
		jmp	..@j9578
..@j9571:
		cmp	word [bp+6],0
		jl	..@j9579
		jmp	..@j9581
..@j9581:
		mov	bx,word [bp+8]
		mov	ax,word [bx+22]
		cmp	ax,word [bp+6]
		jl	..@j9579
		jmp	..@j9580
..@j9579:
		push	word [bp+8]
		push	word [RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR+2]
		push	word [bp+6]
		call	CLASSES$_$TSTRINGS_$__$$_ERROR$ANSISTRING$SMALLINT
		jmp	..@j9588
..@j9580:
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+126]
		call	ax
..@j9588:
..@j9578:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR
EXTERN	CLASSES$_$TSTRINGS_$__$$_ERROR$ANSISTRING$SMALLINT
EXTERN	RESSTR_$RTLCONSTS_$$_SSORTEDLISTERROR
