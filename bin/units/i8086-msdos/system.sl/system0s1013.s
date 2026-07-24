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
	GLOBAL SYSTEM_$$_DO_ERASE$PWIDECHAR$BOOLEAN
SYSTEM_$$_DO_ERASE$PWIDECHAR$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	word [bp-2],0
		mov	ax,1
		push	ax
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-8]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j20777
		push	word [bp+6]
		lea	ax,[bp-2]
		push	ax
		push	word [U_$SYSTEM_$$_DEFAULTFILESYSTEMCODEPAGE]
		push	word [bp+6]
		call	fpc_pwidechar_length
		push	ax
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+38]
		call	ax
		mov	ax,word [bp-2]
		test	ax,ax
		jne	..@j20791
		mov	ax,word FPC_EMPTYCHAR
..@j20791:
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_DO_ERASE$PCHAR$BOOLEAN
..@j20777:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j20778
		call	FPC_RERAISE
..@j20778:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_DO_ERASE$PCHAR$BOOLEAN
EXTERN	FPC_EMPTYCHAR
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	fpc_pwidechar_length
EXTERN	U_$SYSTEM_$$_DEFAULTFILESYSTEMCODEPAGE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
