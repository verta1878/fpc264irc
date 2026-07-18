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
	GLOBAL CLASSES$_$TSTRINGLIST_$__$$_GET$SMALLINT$$ANSISTRING
CLASSES$_$TSTRINGLIST_$__$$_GET$SMALLINT$$ANSISTRING:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jl	..@j9114
		jmp	..@j9116
..@j9116:
		mov	bx,word [bp+8]
		mov	ax,word [bx+22]
		cmp	ax,word [bp+4]
		jle	..@j9114
		jmp	..@j9115
..@j9114:
		push	word [bp+8]
		push	word [RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR+2]
		push	word [bp+4]
		call	CLASSES$_$TSTRINGS_$__$$_ERROR$ANSISTRING$SMALLINT
..@j9115:
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx+20]
		mov	ax,word [bp+4]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		push	word [bx+si]
		call	fpc_ansistr_assign
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_ansistr_assign
EXTERN	CLASSES$_$TSTRINGS_$__$$_ERROR$ANSISTRING$SMALLINT
EXTERN	RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR
