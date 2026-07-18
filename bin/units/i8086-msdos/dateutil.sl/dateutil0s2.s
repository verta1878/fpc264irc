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
	GLOBAL DATEUTILS_$$_NOTYETIMPLEMENTED$ANSISTRING
DATEUTILS_$$_NOTYETIMPLEMENTED$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,20
		push	word [bp+4]
		call	fpc_ansistr_incr_ref
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
		jne	..@j5
..@j7:
		mov	ax,word VMT_$SYSUTILS_$$_EXCEPTION
		push	ax
		mov	ax,1
		push	ax
		mov	ax,word _$DATEUTILS$_Ld1
		push	ax
		mov	ax,word [bp+4]
		mov	dx,0
		mov	word [bp-18],ax
		mov	word [bp-16],dx
		mov	word [bp-20],11
		lea	ax,[bp-20]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j7
		push	ax
		push	bp
		call	fpc_raiseexception
..@j5:
		call	FPC_POPADDRSTACK
		lea	ax,[bp+4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j6
		call	FPC_RERAISE
..@j6:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	_$DATEUTILS$_Ld1
EXTERN	VMT_$SYSUTILS_$$_EXCEPTION
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_ansistr_incr_ref
