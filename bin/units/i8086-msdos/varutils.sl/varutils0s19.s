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
	GLOBAL VARUTILS_$$_USTRTOCARDINAL$POINTER$$LONGWORD
VARUTILS_$$_USTRTOCARDINAL$POINTER$$LONGWORD:
		push	bp
		mov	bp,sp
		sub	sp,6
		push	word [bp+4]
		lea	ax,[bp-6]
		push	ax
		call	fpc_val_longword_unicodestr
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		cmp	word [bp-6],0
		jne	..@j682
		jmp	..@j683
..@j682:
		mov	ax,258
		push	ax
		mov	ax,19
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j683:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
EXTERN	fpc_val_longword_unicodestr
