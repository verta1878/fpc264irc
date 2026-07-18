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
	GLOBAL STRUTILS_$$_SOUNDEXWORD$ANSISTRING$$WORD
STRUTILS_$$_SOUNDEXWORD$ANSISTRING$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	word [bp-4],0
		lea	ax,[bp-4]
		push	ax
		push	word [bp+4]
		mov	ax,4
		push	ax
		call	STRUTILS_$$_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING
		mov	bx,word [bp-4]
		mov	al,byte [bx]
		mov	ah,0
		sub	ax,65
		mov	word [bp-2],ax
		mov	ax,26
		mul	word [bp-2]
		mov	bx,word [bp-4]
		mov	dl,byte [bx+1]
		mov	dh,0
		add	dx,ax
		mov	ax,0
		sub	dx,48
		sbb	ax,0
		mov	word [bp-2],dx
		mov	ax,7
		mul	word [bp-2]
		mov	bx,word [bp-4]
		mov	dl,byte [bx+2]
		mov	dh,0
		add	dx,ax
		mov	ax,0
		sub	dx,48
		sbb	ax,0
		mov	word [bp-2],dx
		mov	ax,7
		mul	word [bp-2]
		mov	bx,word [bp-4]
		mov	dl,byte [bx+3]
		mov	dh,0
		add	dx,ax
		mov	ax,0
		sub	dx,48
		sbb	ax,0
		mov	word [bp-2],dx
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_ansistr_decr_ref
EXTERN	STRUTILS_$$_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING
