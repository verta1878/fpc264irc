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
	GLOBAL STRUTILS_$$_ANSIRESEMBLESTEXT$ANSISTRING$ANSISTRING$$BOOLEAN
STRUTILS_$$_ANSIRESEMBLESTEXT$ANSISTRING$ANSISTRING$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [TC_$STRUTILS_$$_ANSIRESEMBLESPROC],0
		jne	..@j1001
		jmp	..@j1002
..@j1001:
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,word [TC_$STRUTILS_$$_ANSIRESEMBLESPROC]
		call	ax
		mov	byte [bp-1],al
		jmp	..@j1009
..@j1002:
		mov	byte [bp-1],0
..@j1009:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	TC_$STRUTILS_$$_ANSIRESEMBLESPROC
