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
	GLOBAL CLASSES$_$TSTRINGLIST_$__$$_PUT$SMALLINT$ANSISTRING
CLASSES$_$TSTRINGLIST_$__$$_PUT$SMALLINT$ANSISTRING:
		push	bp
		mov	bp,sp
		push	word [bp+8]
		call	CLASSES$_$TSTRINGLIST_$__$$_GETSORTED$$BOOLEAN
		test	al,al
		jne	..@j9150
		jmp	..@j9151
..@j9150:
		push	word [bp+8]
		push	word [RESSTR_$RTLCONSTS_$$_SSORTEDLISTERROR+2]
		mov	ax,0
		push	ax
		call	CLASSES$_$TSTRINGS_$__$$_ERROR$ANSISTRING$SMALLINT
..@j9151:
		cmp	word [bp+6],0
		jl	..@j9160
		jmp	..@j9162
..@j9162:
		mov	bx,word [bp+8]
		mov	ax,word [bx+22]
		cmp	ax,word [bp+6]
		jle	..@j9160
		jmp	..@j9161
..@j9160:
		push	word [bp+8]
		push	word [RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR+2]
		push	word [bp+6]
		call	CLASSES$_$TSTRINGS_$__$$_ERROR$ANSISTRING$SMALLINT
..@j9161:
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
		lea	ax,[bx+si]
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_assign
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+122]
		call	ax
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_ansistr_assign
EXTERN	RESSTR_$RTLCONSTS_$$_SLISTINDEXERROR
EXTERN	CLASSES$_$TSTRINGS_$__$$_ERROR$ANSISTRING$SMALLINT
EXTERN	RESSTR_$RTLCONSTS_$$_SSORTEDLISTERROR
EXTERN	CLASSES$_$TSTRINGLIST_$__$$_GETSORTED$$BOOLEAN
