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
	GLOBAL VARUTILS_$$_DUMPVARIANT$TVARDATA
VARUTILS_$$_DUMPVARIANT$TVARDATA:
		push	bp
		mov	bp,sp
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j3551
		push	word [U_$SYSTEM_$$_OUTPUT+2]
		push	word [U_$SYSTEM_$$_OUTPUT]
		call	ax
		jmp	..@j3552
..@j3551:
		mov	ax,word U_$SYSTEM_$$_OUTPUT+2
..@j3552:
		push	ax
		mov	ax,word _$VARUTILS$_Ld13
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	VARUTILS_$$_DUMPVARIANT$TEXT$SHORTSTRING$TVARDATA
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	VARUTILS_$$_DUMPVARIANT$TEXT$SHORTSTRING$TVARDATA
EXTERN	_$VARUTILS$_Ld13
EXTERN	U_$SYSTEM_$$_OUTPUT
EXTERN	FPC_THREADVAR_RELOCATE
