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
	GLOBAL MD5_$$_MDSTRING$ANSISTRING$TMDVERSION$$TMDDIGEST
MD5_$$_MDSTRING$ANSISTRING$TMDVERSION$$TMDDIGEST:
		push	bp
		mov	bp,sp
		sub	sp,112
		lea	ax,[bp-112]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		call	MD5_$$_MDINIT$TMDCONTEXT$TMDVERSION
		lea	ax,[bp-112]
		push	ax
		mov	ax,word [bp+8]
		test	ax,ax
		jne	..@j2073
		mov	ax,word FPC_EMPTYCHAR
..@j2073:
		push	ax
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j2076
		mov	bx,word [bx-2]
..@j2076:
		push	bx
		call	MD5_$$_MDUPDATE$TMDCONTEXT$formal$WORD
		lea	ax,[bp-112]
		push	ax
		mov	ax,word [bp+10]
		push	ax
		call	MD5_$$_MDFINAL$TMDCONTEXT$TMDDIGEST
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	MD5_$$_MDFINAL$TMDCONTEXT$TMDDIGEST
EXTERN	MD5_$$_MDUPDATE$TMDCONTEXT$formal$WORD
EXTERN	FPC_EMPTYCHAR
EXTERN	MD5_$$_MDINIT$TMDCONTEXT$TMDVERSION
