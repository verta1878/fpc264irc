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
	GLOBAL SYSUTILS_$$_STRPOS$PCHAR$PCHAR$$PCHAR
SYSUTILS_$$_STRPOS$PCHAR$PCHAR$$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	word [bp-2],0
		cmp	word [bp+6],0
		je	..@j12729
		jmp	..@j12731
..@j12731:
		cmp	word [bp+4],0
		je	..@j12729
		jmp	..@j12730
..@j12729:
		jmp	..@j12725
..@j12730:
		push	word [bp+6]
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		mov	ah,0
		push	ax
		call	SYSUTILS_$$_STRSCAN$PCHAR$CHAR$$PCHAR
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		je	..@j12738
		jmp	..@j12739
..@j12738:
		jmp	..@j12725
..@j12739:
		push	word [bp+4]
		call	FPC_PCHAR_LENGTH
		mov	word [bp-6],ax
		jmp	..@j12745
	ALIGN 2
..@j12744:
		push	word [bp-4]
		push	word [bp+4]
		push	word [bp-6]
		call	SYSUTILS_$$_STRLCOMP$PCHAR$PCHAR$SMALLINT$$SMALLINT
		test	ax,ax
		je	..@j12747
		jmp	..@j12748
..@j12747:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		jmp	..@j12725
..@j12748:
		inc	word [bp-4]
		push	word [bp-4]
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		mov	ah,0
		push	ax
		call	SYSUTILS_$$_STRSCAN$PCHAR$CHAR$$PCHAR
		mov	word [bp-4],ax
..@j12745:
		cmp	word [bp-4],0
		jne	..@j12744
		jmp	..@j12746
..@j12746:
..@j12725:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSUTILS_$$_STRLCOMP$PCHAR$PCHAR$SMALLINT$$SMALLINT
EXTERN	FPC_PCHAR_LENGTH
EXTERN	SYSUTILS_$$_STRSCAN$PCHAR$CHAR$$PCHAR
