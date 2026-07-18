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
	GLOBAL SYSUTILS_$$_ANSICOMPAREFILENAME$ANSISTRING$ANSISTRING$$SMALLINT
SYSUTILS_$$_ANSICOMPAREFILENAME$ANSISTRING$ANSISTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	byte [TC_$SYSTEM_$$_FILENAMECASESENSITIVE],0
		jne	..@j5
		jmp	..@j6
..@j5:
		push	word [bp+6]
		push	word [bp+4]
		call	SYSUTILS_$$_ANSICOMPARESTR$ANSISTRING$ANSISTRING$$SMALLINT
		mov	word [bp-2],ax
		jmp	..@j13
..@j6:
		push	word [bp+6]
		push	word [bp+4]
		call	SYSUTILS_$$_ANSICOMPARETEXT$ANSISTRING$ANSISTRING$$SMALLINT
		mov	word [bp-2],ax
..@j13:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSUTILS_$$_ANSICOMPARETEXT$ANSISTRING$ANSISTRING$$SMALLINT
EXTERN	SYSUTILS_$$_ANSICOMPARESTR$ANSISTRING$ANSISTRING$$SMALLINT
EXTERN	TC_$SYSTEM_$$_FILENAMECASESENSITIVE
