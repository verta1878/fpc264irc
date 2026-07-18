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
	GLOBAL STRUTILS_$$_SOUNDEXPROC$ANSISTRING$ANSISTRING$$BOOLEAN
STRUTILS_$$_SOUNDEXPROC$ANSISTRING$ANSISTRING$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	word [bp-6],0
		mov	word [bp-4],0
		lea	ax,[bp-4]
		push	ax
		push	word [bp+6]
		mov	ax,4
		push	ax
		call	STRUTILS_$$_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING
		push	word [bp-4]
		lea	ax,[bp-6]
		push	ax
		push	word [bp+4]
		mov	ax,4
		push	ax
		call	STRUTILS_$$_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING
		push	word [bp-6]
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j2762
		cmp	cx,0
		jne	..@j2762
		jmp	..@j2761
..@j2761:
		mov	al,1
		jmp	..@j2779
..@j2762:
		mov	al,0
..@j2779:
		mov	byte [bp-1],al
		lea	ax,[bp-6]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_ansistr_decr_ref
EXTERN	fpc_ansistr_compare_equal
EXTERN	STRUTILS_$$_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING
