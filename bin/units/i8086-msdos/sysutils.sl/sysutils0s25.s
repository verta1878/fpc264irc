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
	GLOBAL SYSUTILS_$$_EXPANDFILENAME$RAWBYTESTRING$$RAWBYTESTRING
SYSUTILS_$$_EXPANDFILENAME$RAWBYTESTRING$$RAWBYTESTRING:
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
		jne	..@j1149
		lea	ax,[bp-2]
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_assign
		lea	ax,[bp-2]
		push	ax
		call	SYSUTILS_$$_DODIRSEPARATORS$RAWBYTESTRING
		mov	ax,word [bp+6]
		push	ax
		push	word [bp-2]
		call	SYSUTILS_$$_FEXPAND$RAWBYTESTRING$$RAWBYTESTRING
..@j1149:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j1150
		call	FPC_RERAISE
..@j1150:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSUTILS_$$_FEXPAND$RAWBYTESTRING$$RAWBYTESTRING
EXTERN	SYSUTILS_$$_DODIRSEPARATORS$RAWBYTESTRING
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
