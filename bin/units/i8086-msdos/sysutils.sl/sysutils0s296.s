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
	GLOBAL SYSUTILS$_$INTSTRTODATE$crcFE9096A9_$$_FIXERRORMSG$ANSISTRING$ANSISTRING
SYSUTILS$_$INTSTRTODATE$crcFE9096A9_$$_FIXERRORMSG$ANSISTRING$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	word [bp-16],0
		mov	ax,1
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-6]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j10238
		mov	bx,word [bp+8]
		mov	ax,word [bx+14]
		push	ax
		lea	ax,[bp-16]
		push	ax
		push	word [bp+6]
		mov	dx,word [bp+4]
		mov	ax,0
		mov	word [bp-20],dx
		mov	word [bp-18],ax
		mov	word [bp-22],11
		lea	ax,[bp-22]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
		push	word [bp-16]
		call	fpc_ansistr_assign
..@j10238:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-16]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j10239
		call	FPC_RERAISE
..@j10239:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_assign
EXTERN	SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
