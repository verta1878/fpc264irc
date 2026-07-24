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
	GLOBAL SYSUTILS_$$_EXESEARCH$RAWBYTESTRING$RAWBYTESTRING$$RAWBYTESTRING
SYSUTILS_$$_EXESEARCH$RAWBYTESTRING$RAWBYTESTRING$$RAWBYTESTRING:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	word [bp-2],0
		mov	word [bp-20],0
		mov	ax,1
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-10]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j2506
		lea	ax,[bp-2]
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_assign
		cmp	word [bp-2],0
		je	..@j2512
		jmp	..@j2513
..@j2512:
		lea	ax,[bp-2]
		push	ax
		lea	ax,[bp-20]
		push	ax
		mov	ax,word _$SYSUTILS$_Ld622
		push	ax
		call	SYSUTILS_$$_GETENVIRONMENTVARIABLE$ANSISTRING$$ANSISTRING
		push	word [bp-20]
		call	fpc_ansistr_assign
..@j2513:
		mov	byte [bp-3],3
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		push	word [bp-2]
		mov	al,byte [bp-3]
		mov	ah,0
		push	ax
		call	SYSUTILS_$$_FILESEARCH$RAWBYTESTRING$RAWBYTESTRING$TFILESEARCHOPTIONS$$RAWBYTESTRING
..@j2506:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-20]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j2507
		call	FPC_RERAISE
..@j2507:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSUTILS_$$_FILESEARCH$RAWBYTESTRING$RAWBYTESTRING$TFILESEARCHOPTIONS$$RAWBYTESTRING
EXTERN	SYSUTILS_$$_GETENVIRONMENTVARIABLE$ANSISTRING$$ANSISTRING
EXTERN	_$SYSUTILS$_Ld622
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
