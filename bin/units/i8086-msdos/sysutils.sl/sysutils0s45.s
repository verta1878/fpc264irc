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
	GLOBAL SYSUTILS_$$_FORCEDIRECTORIES$RAWBYTESTRING$$BOOLEAN
SYSUTILS_$$_FORCEDIRECTORIES$RAWBYTESTRING$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	word [bp-6],0
		mov	word [bp-22],0
		mov	ax,1
		push	ax
		lea	ax,[bp-18]
		push	ax
		lea	ax,[bp-12]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j1985
		mov	byte [bp-1],0
		lea	ax,[bp-6]
		push	ax
		push	word [bp+4]
		call	SYSUTILS_$$_EXTRACTFILEDRIVE$RAWBYTESTRING$$RAWBYTESTRING
		cmp	word [bp-6],0
		jne	..@j1996
		jmp	..@j1994
..@j1996:
		push	word [bp-6]
		call	SYSUTILS_$$_DIRECTORYEXISTS$RAWBYTESTRING$$BOOLEAN
		test	al,al
		je	..@j1995
		jmp	..@j1994
..@j1995:
		push	bp
		push	word [bp-6]
		call	SYSUTILS$_$FORCEDIRECTORIES$RAWBYTESTRING$$BOOLEAN_$$_ISUNCDRIVE$RAWBYTESTRING$$BOOLEAN
		test	al,al
		je	..@j1993
		jmp	..@j1994
..@j1993:
		jmp	..@j1985
..@j1994:
		cmp	word [bp+4],0
		je	..@j2003
		jmp	..@j2004
..@j2003:
		mov	ax,word VMT_$SYSUTILS_$$_EINOUTERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SCANNOTCREATEEMPTYDIR+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		mov	word [bp-4],ax
		mov	bx,word [bp-4]
		mov	word [bx+8],3
..@j2015:
		push	word [bp-4]
		mov	ax,word ..@j2015
		push	ax
		push	bp
		call	fpc_raiseexception
..@j2004:
		push	bp
		lea	ax,[bp-22]
		push	ax
		push	word [bp+4]
		call	SYSUTILS_$$_SETDIRSEPARATORS$RAWBYTESTRING$$RAWBYTESTRING
		push	word [bp-22]
		call	SYSUTILS$_$FORCEDIRECTORIES$RAWBYTESTRING$$BOOLEAN_$$_DOFORCEDIRECTORIES$RAWBYTESTRING$$BOOLEAN
		mov	byte [bp-1],al
..@j1985:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-22]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-6]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j1986
		call	FPC_RERAISE
..@j1986:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSUTILS$_$FORCEDIRECTORIES$RAWBYTESTRING$$BOOLEAN_$$_DOFORCEDIRECTORIES$RAWBYTESTRING$$BOOLEAN
EXTERN	SYSUTILS_$$_SETDIRSEPARATORS$RAWBYTESTRING$$RAWBYTESTRING
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$SYSCONST_$$_SCANNOTCREATEEMPTYDIR
EXTERN	VMT_$SYSUTILS_$$_EINOUTERROR
EXTERN	SYSUTILS$_$FORCEDIRECTORIES$RAWBYTESTRING$$BOOLEAN_$$_ISUNCDRIVE$RAWBYTESTRING$$BOOLEAN
EXTERN	SYSUTILS_$$_DIRECTORYEXISTS$RAWBYTESTRING$$BOOLEAN
EXTERN	SYSUTILS_$$_EXTRACTFILEDRIVE$RAWBYTESTRING$$RAWBYTESTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
