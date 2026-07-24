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
	GLOBAL SYSTEM_$$_FINDRESOURCE$WORD$ANSISTRING$ANSISTRING$$WORD
SYSTEM_$$_FINDRESOURCE$WORD$ANSISTRING$ANSISTRING$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+8]
		mov	ax,word [bp+6]
		test	ax,ax
		jne	..@j25665
		mov	ax,word FPC_EMPTYCHAR
..@j25665:
		push	ax
		mov	ax,word [bp+4]
		test	ax,ax
		jne	..@j25668
		mov	ax,word FPC_EMPTYCHAR
..@j25668:
		push	ax
		call	SYSTEM_$$_FINDRESOURCE$WORD$PCHAR$PCHAR$$WORD
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_FINDRESOURCE$WORD$PCHAR$PCHAR$$WORD
EXTERN	FPC_EMPTYCHAR
