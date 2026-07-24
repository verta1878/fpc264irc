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
	GLOBAL SYSUTILS_$$_STRTODATETIME$SHORTSTRING$TFORMATSETTINGS$$TDATETIME
SYSUTILS_$$_STRTODATETIME$SHORTSTRING$TFORMATSETTINGS$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,24
		mov	word [bp-10],0
		mov	ax,1
		push	ax
		lea	ax,[bp-22]
		push	ax
		lea	ax,[bp-16]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j11116
		lea	ax,[bp-10]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-10]
		mov	ax,word [bp+4]
		push	ax
		call	SYSUTILS_$$_STRTODATETIME$ANSISTRING$TFORMATSETTINGS$$TDATETIME
		wait fstp	qword [bp-8]
		DB	09bh
..@j11116:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-10]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j11117
		call	FPC_RERAISE
..@j11117:
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSUTILS_$$_STRTODATETIME$ANSISTRING$TFORMATSETTINGS$$TDATETIME
EXTERN	fpc_shortstr_to_ansistr
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
