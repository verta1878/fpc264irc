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
	GLOBAL SYSUTILS_$$_STRTOTIME$PCHAR$SMALLINT$CHAR$$TDATETIME
SYSUTILS_$$_STRTOTIME$PCHAR$SMALLINT$CHAR$$TDATETIME:
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
		jne	..@j10763
		lea	ax,[bp-10]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-10]
		push	ax
		push	word [bp+8]
		push	word [bp+6]
		mov	ax,word TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS
		push	ax
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		call	SYSUTILS_$$_INTSTRTOTIME$ANSISTRING$PCHAR$SMALLINT$TFORMATSETTINGS$CHAR$$TDATETIME
		wait fstp	qword [bp-8]
		DB	09bh
		cmp	word [bp-10],0
		jne	..@j10777
		jmp	..@j10778
..@j10777:
..@j10779:
		mov	ax,word VMT_$SYSUTILS_$$_ECONVERTERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [bp-10]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j10779
		push	ax
		push	bp
		call	fpc_raiseexception
..@j10778:
..@j10763:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-10]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j10764
		call	FPC_RERAISE
..@j10764:
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	VMT_$SYSUTILS_$$_ECONVERTERROR
EXTERN	SYSUTILS_$$_INTSTRTOTIME$ANSISTRING$PCHAR$SMALLINT$TFORMATSETTINGS$CHAR$$TDATETIME
EXTERN	TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
