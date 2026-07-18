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
	GLOBAL VARUTILS_$$_USTRTOLONGINT$POINTER$$LONGINT
VARUTILS_$$_USTRTOLONGINT$POINTER$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		push	word [bp+4]
		lea	ax,[bp-6]
		push	ax
		call	fpc_val_longint_unicodestr
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		cmp	word [bp-6],0
		jne	..@j486
		jmp	..@j487
..@j486:
		mov	ax,258
		push	ax
		mov	ax,3
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j487:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
EXTERN	fpc_val_longint_unicodestr
