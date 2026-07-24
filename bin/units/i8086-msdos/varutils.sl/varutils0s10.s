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
	GLOBAL VARUTILS_$$_LSTRTOSHORTINT$POINTER$$SHORTINT
VARUTILS_$$_LSTRTOSHORTINT$POINTER$$SHORTINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,1
		push	ax
		push	word [bp+4]
		lea	ax,[bp-4]
		push	ax
		call	fpc_val_sint_ansistr
		mov	byte [bp-1],al
		cmp	word [bp-4],0
		jne	..@j274
		jmp	..@j275
..@j274:
		mov	ax,256
		push	ax
		mov	ax,16
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j275:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
EXTERN	fpc_val_sint_ansistr
