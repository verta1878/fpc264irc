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
	GLOBAL VARUTILS_$$_USTRTOSMALLINT$POINTER$$SMALLINT
VARUTILS_$$_USTRTOSMALLINT$POINTER$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,2
		push	ax
		push	word [bp+4]
		lea	ax,[bp-4]
		push	ax
		call	fpc_val_sint_unicodestr
		mov	word [bp-2],ax
		cmp	word [bp-4],0
		jne	..@j88
		jmp	..@j89
..@j88:
		mov	ax,258
		push	ax
		mov	ax,2
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j89:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
EXTERN	fpc_val_sint_unicodestr
