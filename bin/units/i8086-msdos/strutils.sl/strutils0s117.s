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
	GLOBAL STRUTILS_$$_ISWORDPRESENT$ANSISTRING$ANSISTRING$TSYSCHARSET$$BOOLEAN
STRUTILS_$$_ISWORDPRESENT$ANSISTRING$ANSISTRING$TSYSCHARSET$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	word [bp-8],0
		mov	byte [bp-1],0
		push	word [bp+6]
		mov	ax,word [bp+4]
		push	ax
		call	STRUTILS_$$_WORDCOUNT$ANSISTRING$TSYSCHARSET$$SMALLINT
		mov	word [bp-6],ax
		mov	word [bp-4],1
		jmp	..@j3291
	ALIGN 2
..@j3290:
		lea	ax,[bp-8]
		push	ax
		call	fpc_ansistr_decr_ref
		mov	ax,word [bp+4]
		mov	word [bp-12],ax
		lea	ax,[bp-8]
		push	ax
		push	word [bp-4]
		push	word [bp+6]
		push	word [bp-12]
		lea	ax,[bp-10]
		push	ax
		call	STRUTILS_$$_EXTRACTWORDPOS$SMALLINT$ANSISTRING$TSYSCHARSET$SMALLINT$$ANSISTRING
		push	word [bp-8]
		push	word [bp+8]
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j3294
		cmp	cx,0
		jne	..@j3294
		jmp	..@j3293
..@j3293:
		mov	byte [bp-1],1
		jmp	..@j3311
..@j3294:
		mov	byte [bp-1],0
..@j3311:
		inc	word [bp-4]
..@j3291:
		cmp	byte [bp-1],0
		je	..@j3312
		jmp	..@j3292
..@j3312:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jle	..@j3290
		jmp	..@j3292
..@j3292:
		lea	ax,[bp-8]
		push	ax
		call	fpc_ansistr_decr_ref
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_ansistr_compare_equal
EXTERN	STRUTILS_$$_EXTRACTWORDPOS$SMALLINT$ANSISTRING$TSYSCHARSET$SMALLINT$$ANSISTRING
EXTERN	fpc_ansistr_decr_ref
EXTERN	STRUTILS_$$_WORDCOUNT$ANSISTRING$TSYSCHARSET$$SMALLINT
