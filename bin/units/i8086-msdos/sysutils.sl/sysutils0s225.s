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
	GLOBAL SYSUTILS_$$_BOOLTOSTR$BOOLEAN$ANSISTRING$ANSISTRING$$ANSISTRING
SYSUTILS_$$_BOOLTOSTR$BOOLEAN$ANSISTRING$ANSISTRING$$ANSISTRING:
		push	bp
		mov	bp,sp
		cmp	byte [bp+8],0
		jne	..@j7463
		jmp	..@j7464
..@j7463:
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+6]
		call	fpc_ansistr_assign
		jmp	..@j7469
..@j7464:
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_assign
..@j7469:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_ansistr_assign
