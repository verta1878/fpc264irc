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
	GLOBAL SYSUTILS_$$_STRIPOS$PCHAR$PCHAR$$PCHAR
SYSUTILS_$$_STRIPOS$PCHAR$PCHAR$$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	word [bp-2],0
		cmp	word [bp+6],0
		je	..@j12767
		jmp	..@j12769
..@j12769:
		cmp	word [bp+4],0
		je	..@j12767
		jmp	..@j12768
..@j12767:
		jmp	..@j12763
..@j12768:
		push	word [bp+6]
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		mov	ah,0
		push	ax
		call	SYSUTILS_$$_STRISCAN$PCHAR$CHAR$$PCHAR
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		je	..@j12776
		jmp	..@j12777
..@j12776:
		jmp	..@j12763
..@j12777:
		push	word [bp+4]
		call	FPC_PCHAR_LENGTH
		mov	word [bp-6],ax
		jmp	..@j12783
	ALIGN 2
..@j12782:
		push	word [bp-4]
		push	word [bp+4]
		push	word [bp-6]
		call	SYSUTILS_$$_STRLICOMP$PCHAR$PCHAR$SMALLINT$$SMALLINT
		test	ax,ax
		je	..@j12785
		jmp	..@j12786
..@j12785:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		jmp	..@j12763
..@j12786:
		inc	word [bp-4]
		push	word [bp-4]
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		mov	ah,0
		push	ax
		call	SYSUTILS_$$_STRISCAN$PCHAR$CHAR$$PCHAR
		mov	word [bp-4],ax
..@j12783:
		cmp	word [bp-4],0
		jne	..@j12782
		jmp	..@j12784
..@j12784:
..@j12763:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSUTILS_$$_STRLICOMP$PCHAR$PCHAR$SMALLINT$$SMALLINT
EXTERN	FPC_PCHAR_LENGTH
EXTERN	SYSUTILS_$$_STRISCAN$PCHAR$CHAR$$PCHAR
