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
	GLOBAL DATEUTILS_$$_WEEKSINAYEAR$WORD$$WORD
DATEUTILS_$$_WEEKSINAYEAR$WORD$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	word [bp-2],52
		push	word [bp+4]
		call	DATEUTILS_$$_STARTOFAYEAR$WORD$$TDATETIME
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		call	DATEUTILS_$$_DAYOFTHEWEEK$TDATETIME$$WORD
		mov	word [bp-4],ax
		cmp	word [bp-4],4
		je	..@j148
		jmp	..@j150
..@j150:
		cmp	word [bp-4],3
		je	..@j151
		jmp	..@j149
..@j151:
		push	word [bp+4]
		call	SYSUTILS_$$_ISLEAPYEAR$WORD$$BOOLEAN
		test	al,al
		jne	..@j148
		jmp	..@j149
..@j148:
		inc	word [bp-2]
..@j149:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSUTILS_$$_ISLEAPYEAR$WORD$$BOOLEAN
EXTERN	DATEUTILS_$$_DAYOFTHEWEEK$TDATETIME$$WORD
EXTERN	DATEUTILS_$$_STARTOFAYEAR$WORD$$TDATETIME
