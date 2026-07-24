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
	GLOBAL SYSUTILS_$$_ANSIDEQUOTEDSTR$ANSISTRING$CHAR$$ANSISTRING
SYSUTILS_$$_ANSIDEQUOTEDSTR$ANSISTRING$CHAR$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-2]
		push	ax
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		call	SYSUTILS_$$_ANSIEXTRACTQUOTEDSTR$PCHAR$CHAR$$ANSISTRING
		mov	bx,word [bp+8]
		cmp	word [bx],0
		je	..@j7367
		jmp	..@j7368
..@j7367:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		call	fpc_ansistr_assign
..@j7368:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_ansistr_assign
EXTERN	SYSUTILS_$$_ANSIEXTRACTQUOTEDSTR$PCHAR$CHAR$$ANSISTRING
