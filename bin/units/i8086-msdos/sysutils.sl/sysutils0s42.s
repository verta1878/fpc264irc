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
	GLOBAL SYSUTILS_$$_SETCURRENTDIR$RAWBYTESTRING$$BOOLEAN
SYSUTILS_$$_SETCURRENTDIR$RAWBYTESTRING$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j1926
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		jmp	..@j1927
..@j1926:
		mov	ax,word U_$SYSTEM_$$_INOUTRES+2
..@j1927:
		mov	word [bp-4],ax
		mov	bx,word [bp-4]
		mov	ax,word [bx]
		mov	word [bp-6],ax
		mov	bx,word [bp-4]
		mov	word [bx],0
		push	word [bp+4]
		call	SYSTEM_$$_CHDIR$RAWBYTESTRING
		mov	bx,word [bp-4]
		cmp	word [bx],0
		mov	al,0
		jne	..@j1936
		inc	ax
..@j1936:
		mov	byte [bp-1],al
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j1939
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j1940
..@j1939:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j1940:
		mov	ax,word [bp-6]
		mov	word [bx],ax
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_CHDIR$RAWBYTESTRING
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
