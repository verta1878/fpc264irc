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
	GLOBAL SYSTEM_$$_FINDRESOURCEEX$WORD$ANSISTRING$ANSISTRING$WORD$$WORD
SYSTEM_$$_FINDRESOURCEEX$WORD$ANSISTRING$ANSISTRING$WORD$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+10]
		mov	ax,word [bp+8]
		test	ax,ax
		jne	..@j25677
		mov	ax,word FPC_EMPTYCHAR
..@j25677:
		push	ax
		mov	ax,word [bp+6]
		test	ax,ax
		jne	..@j25680
		mov	ax,word FPC_EMPTYCHAR
..@j25680:
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_FINDRESOURCEEX$WORD$PCHAR$PCHAR$WORD$$WORD
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_FINDRESOURCEEX$WORD$PCHAR$PCHAR$WORD$$WORD
EXTERN	FPC_EMPTYCHAR
