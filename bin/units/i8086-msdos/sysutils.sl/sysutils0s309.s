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
	GLOBAL SYSUTILS_$$_STRTOTIME$ANSISTRING$TFORMATSETTINGS$$TDATETIME
SYSUTILS_$$_STRTOTIME$ANSISTRING$TFORMATSETTINGS$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,124
		mov	ax,word [bp+4]
		lea	di,[bp-110]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,50
		rep
		movsw
		lea	ax,[bp-110]
		push	ax
		mov	ax,word INIT_$SYSUTILS_$$_TFORMATSETTINGS
		push	ax
		call	fpc_addref
		mov	word [bp-10],0
		mov	ax,1
		push	ax
		lea	ax,[bp-122]
		push	ax
		lea	ax,[bp-116]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j10798
		lea	ax,[bp-10]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-10]
		push	ax
		mov	ax,word [bp+6]
		test	ax,ax
		jne	..@j10806
		mov	ax,word FPC_EMPTYCHAR
..@j10806:
		push	ax
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j10809
		mov	bx,word [bx-2]
..@j10809:
		push	bx
		lea	ax,[bp-110]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS_$$_INTSTRTOTIME$ANSISTRING$PCHAR$SMALLINT$TFORMATSETTINGS$CHAR$$TDATETIME
		wait fstp	qword [bp-8]
		DB	09bh
		cmp	word [bp-10],0
		jne	..@j10814
		jmp	..@j10815
..@j10814:
..@j10816:
		mov	ax,word VMT_$SYSUTILS_$$_ECONVERTERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [bp-10]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j10816
		push	ax
		push	bp
		call	fpc_raiseexception
..@j10815:
..@j10798:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-10]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-110]
		push	ax
		mov	ax,word INIT_$SYSUTILS_$$_TFORMATSETTINGS
		push	ax
		call	fpc_finalize
		pop	ax
		test	ax,ax
		je	..@j10799
		call	FPC_RERAISE
..@j10799:
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_finalize
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	VMT_$SYSUTILS_$$_ECONVERTERROR
EXTERN	SYSUTILS_$$_INTSTRTOTIME$ANSISTRING$PCHAR$SMALLINT$TFORMATSETTINGS$CHAR$$TDATETIME
EXTERN	FPC_EMPTYCHAR
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_addref
EXTERN	INIT_$SYSUTILS_$$_TFORMATSETTINGS
