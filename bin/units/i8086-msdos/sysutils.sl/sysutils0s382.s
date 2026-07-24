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
	GLOBAL SYSUTILS_$$_STRPLCOPY$PCHAR$ANSISTRING$WORD$$PCHAR
SYSUTILS_$$_STRPLCOPY$PCHAR$ANSISTRING$WORD$$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+8]
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jne	..@j12856
		jmp	..@j12857
..@j12856:
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j12860
		mov	bx,word [bx-2]
..@j12860:
		mov	word [bp-4],bx
		mov	ax,word [bp-4]
		cmp	ax,word [bp+4]
		ja	..@j12861
		jmp	..@j12862
..@j12861:
		mov	ax,word [bp+4]
		mov	word [bp-4],ax
..@j12862:
		push	word [bp-2]
		mov	ax,word [bp+6]
		test	ax,ax
		jne	..@j12869
		mov	ax,word FPC_EMPTYCHAR
..@j12869:
		push	ax
		push	word [bp-4]
		call	SYSUTILS_$$_STRMOVE$PCHAR$PCHAR$SMALLINT$$PCHAR
		mov	bx,word [bp-2]
		mov	si,word [bp-4]
		mov	byte [bx+si],0
..@j12857:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSUTILS_$$_STRMOVE$PCHAR$PCHAR$SMALLINT$$PCHAR
EXTERN	FPC_EMPTYCHAR
