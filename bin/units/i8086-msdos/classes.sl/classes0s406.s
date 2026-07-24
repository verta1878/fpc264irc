BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TSTRINGLIST_$__$$_INDEXOF$ANSISTRING$$SMALLINT
CLASSES$_$TSTRINGLIST_$__$$_INDEXOF$ANSISTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+6]
		call	CLASSES$_$TSTRINGLIST_$__$$_GETSORTED$$BOOLEAN
		test	al,al
		je	..@j9547
		jmp	..@j9548
..@j9547:
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TSTRINGS_$__$$_INDEXOF$ANSISTRING$$SMALLINT
		mov	word [bp-2],ax
		jmp	..@j9557
..@j9548:
		push	word [bp+6]
		push	word [bp+4]
		lea	ax,[bp-2]
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+132]
		call	ax
		test	al,al
		je	..@j9558
		jmp	..@j9559
..@j9558:
		mov	word [bp-2],-1
..@j9559:
..@j9557:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TSTRINGS_$__$$_INDEXOF$ANSISTRING$$SMALLINT
EXTERN	CLASSES$_$TSTRINGLIST_$__$$_GETSORTED$$BOOLEAN
