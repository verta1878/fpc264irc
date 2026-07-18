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
	GLOBAL SYSUTILS$_$FORCEDIRECTORIES$RAWBYTESTRING$$BOOLEAN_$$_DOFORCEDIRECTORIES$RAWBYTESTRING$$BOOLEAN
SYSUTILS$_$FORCEDIRECTORIES$RAWBYTESTRING$$BOOLEAN_$$_DOFORCEDIRECTORIES$RAWBYTESTRING$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	word [bp-4],0
		mov	word [bp-6],0
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
		jne	..@j2042
		mov	byte [bp-1],1
		lea	ax,[bp-4]
		push	ax
		push	word [bp+4]
		call	SYSUTILS_$$_EXCLUDETRAILINGPATHDELIMITER$RAWBYTESTRING$$RAWBYTESTRING
		cmp	word [bp-4],0
		je	..@j2050
		jmp	..@j2051
..@j2050:
		jmp	..@j2042
..@j2051:
		push	word [bp-4]
		call	SYSUTILS_$$_DIRECTORYEXISTS$RAWBYTESTRING$$BOOLEAN
		test	al,al
		je	..@j2052
		jmp	..@j2053
..@j2052:
		lea	ax,[bp-6]
		push	ax
		push	word [bp-4]
		call	SYSUTILS_$$_EXTRACTFILEPATH$RAWBYTESTRING$$RAWBYTESTRING
		push	word [bp-6]
		push	word [bp-4]
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j2061
		cmp	cx,0
		jne	..@j2061
		jmp	..@j2060
..@j2060:
		mov	byte [bp-1],0
		jmp	..@j2068
..@j2061:
		mov	ax,word [bp+6]
		push	ax
		push	word [bp-6]
		call	SYSUTILS$_$FORCEDIRECTORIES$RAWBYTESTRING$$BOOLEAN_$$_DOFORCEDIRECTORIES$RAWBYTESTRING$$BOOLEAN
		mov	byte [bp-1],al
..@j2068:
		cmp	byte [bp-1],0
		jne	..@j2075
		jmp	..@j2076
..@j2075:
		push	word [bp-4]
		call	SYSUTILS_$$_CREATEDIR$RAWBYTESTRING$$BOOLEAN
		mov	byte [bp-1],al
..@j2076:
..@j2053:
..@j2042:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-6]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j2043
		call	FPC_RERAISE
..@j2043:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSUTILS_$$_CREATEDIR$RAWBYTESTRING$$BOOLEAN
EXTERN	fpc_ansistr_compare_equal
EXTERN	SYSUTILS_$$_EXTRACTFILEPATH$RAWBYTESTRING$$RAWBYTESTRING
EXTERN	SYSUTILS_$$_DIRECTORYEXISTS$RAWBYTESTRING$$BOOLEAN
EXTERN	SYSUTILS_$$_EXCLUDETRAILINGPATHDELIMITER$RAWBYTESTRING$$RAWBYTESTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
