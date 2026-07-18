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
	GLOBAL SHA1_$$_SHA1STRING$ANSISTRING$$TSHA1DIGEST
SHA1_$$_SHA1STRING$ANSISTRING$$TSHA1DIGEST:
		push	bp
		mov	bp,sp
		sub	sp,94
		lea	ax,[bp-94]
		push	ax
		call	SHA1_$$_SHA1INIT$TSHA1CONTEXT
		lea	ax,[bp-94]
		push	ax
		mov	ax,word [bp+4]
		test	ax,ax
		jne	..@j259
		mov	ax,word FPC_EMPTYCHAR
..@j259:
		push	ax
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j262
		mov	bx,word [bx-2]
..@j262:
		push	bx
		call	SHA1_$$_SHA1UPDATE$TSHA1CONTEXT$formal$WORD
		lea	ax,[bp-94]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		call	SHA1_$$_SHA1FINAL$TSHA1CONTEXT$TSHA1DIGEST
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SHA1_$$_SHA1FINAL$TSHA1CONTEXT$TSHA1DIGEST
EXTERN	SHA1_$$_SHA1UPDATE$TSHA1CONTEXT$formal$WORD
EXTERN	FPC_EMPTYCHAR
EXTERN	SHA1_$$_SHA1INIT$TSHA1CONTEXT
