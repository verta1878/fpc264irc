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
	GLOBAL SYSUTILS_$$_FLOATTOCURR$EXTENDED$$CURRENCY
SYSUTILS_$$_FLOATTOCURR$EXTENDED$$CURRENCY:
		push	bp
		mov	bp,sp
		sub	sp,30
		mov	word [bp-30],0
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
		jne	..@j7198
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		lea	ax,[bp-8]
		push	ax
		call	SYSUTILS_$$_TRYFLOATTOCURR$EXTENDED$CURRENCY$$BOOLEAN
		test	al,al
		je	..@j7200
		jmp	..@j7201
..@j7200:
..@j7206:
		mov	ax,word VMT_$SYSUTILS_$$_ECONVERTERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SINVALIDCURRENCY+2]
		lea	ax,[bp-30]
		push	ax
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		call	SYSUTILS_$$_FLOATTOSTR$EXTENDED$$ANSISTRING
		mov	ax,word [bp-30]
		mov	dx,0
		mov	word [bp-26],ax
		mov	word [bp-24],dx
		mov	word [bp-28],11
		lea	ax,[bp-28]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j7206
		push	ax
		push	bp
		call	fpc_raiseexception
..@j7201:
..@j7198:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-30]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j7199
		call	FPC_RERAISE
..@j7199:
		wait fild	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	SYSUTILS_$$_FLOATTOSTR$EXTENDED$$ANSISTRING
EXTERN	RESSTR_$SYSCONST_$$_SINVALIDCURRENCY
EXTERN	VMT_$SYSUTILS_$$_ECONVERTERROR
EXTERN	SYSUTILS_$$_TRYFLOATTOCURR$EXTENDED$CURRENCY$$BOOLEAN
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
