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
	GLOBAL STRINGS_$$_STRPOS$PCHAR$PCHAR$$PCHAR
STRINGS_$$_STRPOS$PCHAR$PCHAR$$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	word [bp-2],0
		cmp	word [bp+6],0
		je	..@j331
		jmp	..@j333
..@j333:
		cmp	word [bp+4],0
		je	..@j331
		jmp	..@j332
..@j331:
		jmp	..@j327
..@j332:
		push	word [bp+6]
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		mov	ah,0
		push	ax
		call	STRINGS_$$_STRSCAN$PCHAR$CHAR$$PCHAR
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		je	..@j340
		jmp	..@j341
..@j340:
		jmp	..@j327
..@j341:
		push	word [bp+4]
		call	FPC_PCHAR_LENGTH
		mov	word [bp-6],ax
		jmp	..@j347
	ALIGN 2
..@j346:
		push	word [bp-4]
		push	word [bp+4]
		push	word [bp-6]
		call	STRINGS_$$_STRLCOMP$PCHAR$PCHAR$SMALLINT$$SMALLINT
		test	ax,ax
		je	..@j349
		jmp	..@j350
..@j349:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		jmp	..@j327
..@j350:
		inc	word [bp-4]
		push	word [bp-4]
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		mov	ah,0
		push	ax
		call	STRINGS_$$_STRSCAN$PCHAR$CHAR$$PCHAR
		mov	word [bp-4],ax
..@j347:
		cmp	word [bp-4],0
		jne	..@j346
		jmp	..@j348
..@j348:
..@j327:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	STRINGS_$$_STRLCOMP$PCHAR$PCHAR$SMALLINT$$SMALLINT
EXTERN	FPC_PCHAR_LENGTH
EXTERN	STRINGS_$$_STRSCAN$PCHAR$CHAR$$PCHAR
