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
	GLOBAL STRUTILS_$$_SOUNDEXSIMILAR$ANSISTRING$ANSISTRING$TSOUNDEXLENGTH$$BOOLEAN
STRUTILS_$$_SOUNDEXSIMILAR$ANSISTRING$ANSISTRING$TSOUNDEXLENGTH$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	word [bp-6],0
		mov	word [bp-4],0
		lea	ax,[bp-4]
		push	ax
		push	word [bp+8]
		push	word [bp+4]
		call	STRUTILS_$$_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING
		push	word [bp-4]
		lea	ax,[bp-6]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		call	STRUTILS_$$_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING
		push	word [bp-6]
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j2652
		cmp	cx,0
		jne	..@j2652
		jmp	..@j2651
..@j2651:
		mov	byte [bp-1],1
		jmp	..@j2669
..@j2652:
		mov	byte [bp-1],0
..@j2669:
		lea	ax,[bp-6]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_ansistr_decr_ref
EXTERN	fpc_ansistr_compare_equal
EXTERN	STRUTILS_$$_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING
