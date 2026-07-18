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
	GLOBAL VARUTILS_$$_USTRTOBYTE$POINTER$$BYTE
VARUTILS_$$_USTRTOBYTE$POINTER$$BYTE:
		push	bp
		mov	bp,sp
		sub	sp,4
		push	word [bp+4]
		lea	ax,[bp-4]
		push	ax
		call	fpc_val_uint_unicodestr
		mov	byte [bp-1],al
		cmp	word [bp-4],0
		jne	..@j2138
		jmp	..@j2139
..@j2138:
		mov	ax,258
		push	ax
		mov	ax,17
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j2139:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
EXTERN	fpc_val_uint_unicodestr
