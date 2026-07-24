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
	GLOBAL TYPINFO_$$_ISPUBLISHEDPROP$TOBJECT$ANSISTRING$$BOOLEAN
TYPINFO_$$_ISPUBLISHEDPROP$TOBJECT$ANSISTRING$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+6]
		push	word [bp+4]
		call	TYPINFO_$$_GETPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
		test	ax,ax
		mov	al,0
		je	..@j2549
		inc	ax
..@j2549:
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	TYPINFO_$$_GETPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
