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
	GLOBAL CLASSES$_$TSTRINGLIST_$__$$_PUTOBJECT$SMALLINT$TOBJECT
CLASSES$_$TSTRINGLIST_$__$$_PUTOBJECT$SMALLINT$TOBJECT:
		push	bp
		mov	bp,sp
		cmp	word [bp+6],0
		jl	..@j9179
		jmp	..@j9181
..@j9181:
		mov	bx,word [bp+8]
		mov	ax,word [bx+22]
		cmp	ax,word [bp+6]
		jle	..@j9179
		jmp	..@j9180
..@j9179:
		push	word [bp+8]
		push	word [RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR+2]
		push	word [bp+6]
		call	CLASSES$_$TSTRINGS_$__$$_ERROR$ANSISTRING$SMALLINT
..@j9180:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+124]
		call	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx+20]
		mov	ax,word [bp+6]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bp+4]
		mov	word [bx+si+2],ax
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+122]
		call	ax
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	CLASSES$_$TSTRINGS_$__$$_ERROR$ANSISTRING$SMALLINT
EXTERN	RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR
