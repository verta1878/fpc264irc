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
	GLOBAL STRUTILS_$$_IFTHEN$BOOLEAN$ANSISTRING$ANSISTRING$$ANSISTRING
STRUTILS_$$_IFTHEN$BOOLEAN$ANSISTRING$ANSISTRING$$ANSISTRING:
		push	bp
		mov	bp,sp
		cmp	byte [bp+8],0
		jne	..@j1382
		jmp	..@j1383
..@j1382:
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+6]
		call	fpc_ansistr_assign
		jmp	..@j1388
..@j1383:
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_assign
..@j1388:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_ansistr_assign
