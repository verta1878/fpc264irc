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
	GLOBAL CLASSES$_$TSTRINGLIST_$__$$_GETOBJECT$SMALLINT$$TOBJECT
CLASSES$_$TSTRINGLIST_$__$$_GETOBJECT$SMALLINT$$TOBJECT:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+4],0
		jl	..@j9137
		jmp	..@j9139
..@j9139:
		mov	bx,word [bp+6]
		mov	ax,word [bx+22]
		cmp	ax,word [bp+4]
		jle	..@j9137
		jmp	..@j9138
..@j9137:
		push	word [bp+6]
		push	word [RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR+2]
		push	word [bp+4]
		call	CLASSES$_$TSTRINGS_$__$$_ERROR$ANSISTRING$SMALLINT
..@j9138:
		mov	bx,word [bp+6]
		mov	bx,word [bx+20]
		mov	ax,word [bp+4]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bx+si+2]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TSTRINGS_$__$$_ERROR$ANSISTRING$SMALLINT
EXTERN	RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR
