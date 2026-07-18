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
	GLOBAL FGL$_$TFPSLIST_$__$$_REMOVE$POINTER$$SMALLINT
FGL$_$TFPSLIST_$__$$_REMOVE$POINTER$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+6]
		push	word [bp+4]
		call	FGL$_$TFPSLIST_$__$$_INDEXOF$POINTER$$SMALLINT
		mov	word [bp-2],ax
		cmp	word [bp-2],-1
		jne	..@j722
		jmp	..@j723
..@j722:
		push	word [bp+6]
		push	word [bp-2]
		call	FGL$_$TFPSLIST_$__$$_DELETE$SMALLINT
..@j723:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FGL$_$TFPSLIST_$__$$_DELETE$SMALLINT
EXTERN	FGL$_$TFPSLIST_$__$$_INDEXOF$POINTER$$SMALLINT
