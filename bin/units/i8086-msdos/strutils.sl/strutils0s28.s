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
	GLOBAL STRUTILS_$$_HEX2DEC$ANSISTRING$$LONGINT
STRUTILS_$$_HEX2DEC$ANSISTRING$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,20
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
		jne	..@j970
		mov	ax,36
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
		test	ax,ax
		je	..@j972
		jmp	..@j973
..@j972:
		lea	ax,[bp-6]
		push	ax
		mov	ax,word _$STRUTILS$_Ld1
		push	ax
		push	word [bp+4]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		jmp	..@j986
..@j973:
		lea	ax,[bp-6]
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_assign
..@j986:
		push	word [bp-6]
		call	SYSUTILS_$$_STRTOINT$ANSISTRING$$LONGINT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j970:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-6]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j971
		call	FPC_RERAISE
..@j971:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSUTILS_$$_STRTOINT$ANSISTRING$$LONGINT
EXTERN	fpc_ansistr_assign
EXTERN	fpc_ansistr_concat
EXTERN	_$STRUTILS$_Ld1
EXTERN	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
