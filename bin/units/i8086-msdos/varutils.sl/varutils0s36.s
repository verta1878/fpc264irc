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
	GLOBAL VARUTILS_$$_USTRTODATE$POINTER$$TDATETIME
VARUTILS_$$_USTRTODATE$POINTER$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,24
		mov	word [bp-24],0
		mov	ax,1
		push	ax
		lea	ax,[bp-20]
		push	ax
		lea	ax,[bp-14]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j1681
		lea	ax,[bp-24]
		push	ax
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	fpc_unicodestr_to_ansistr
		push	word [bp-24]
		lea	ax,[bp-8]
		push	ax
		call	SYSUTILS_$$_TRYSTRTODATETIME$ANSISTRING$TDATETIME$$BOOLEAN
		test	al,al
		je	..@j1683
		jmp	..@j1684
..@j1683:
		mov	ax,258
		push	ax
		mov	ax,7
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j1684:
..@j1681:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-24]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j1682
		call	FPC_RERAISE
..@j1682:
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
EXTERN	SYSUTILS_$$_TRYSTRTODATETIME$ANSISTRING$TDATETIME$$BOOLEAN
EXTERN	fpc_unicodestr_to_ansistr
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
