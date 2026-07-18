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
	GLOBAL SYSUTILS_$$_EXECUTEPROCESS$ANSISTRING$ANSISTRING$TEXECUTEFLAGS$$SMALLINT
SYSUTILS_$$_EXECUTEPROCESS$ANSISTRING$ANSISTRING$TEXECUTEFLAGS$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,276
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
		jne	..@j15949
		lea	ax,[bp-276]
		push	ax
		mov	ax,255
		push	ax
		push	word [bp+8]
		call	fpc_ansistr_to_shortstr
		lea	ax,[bp-276]
		push	ax
		push	word [bp+6]
		call	DOS_$$_EXEC_ANSISTRING$SHORTSTRING$ANSISTRING
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15963
		push	word [U_$DOS_$$_DOSERROR+2]
		push	word [U_$DOS_$$_DOSERROR]
		call	ax
		mov	bx,ax
		jmp	..@j15964
..@j15963:
		mov	bx,word U_$DOS_$$_DOSERROR+2
..@j15964:
		cmp	word [bx],0
		jne	..@j15961
		jmp	..@j15962
..@j15961:
		cmp	word [bp+6],0
		jne	..@j15965
		jmp	..@j15966
..@j15965:
		lea	ax,[bp-6]
		push	ax
		mov	ax,word [bp+8]
		mov	word [bp-26],ax
		mov	ax,word _$SYSUTILS$_Ld630
		mov	word [bp-24],ax
		mov	ax,word [bp+6]
		mov	word [bp-22],ax
		lea	ax,[bp-26]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		jmp	..@j15975
..@j15966:
		lea	ax,[bp-6]
		push	ax
		push	word [bp+8]
		call	fpc_ansistr_assign
..@j15975:
		mov	ax,word VMT_$SYSUTILS_$$_EOSERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SEXECUTEPROCESSFAILED+2]
		mov	ax,word [bp-6]
		mov	dx,0
		mov	word [bp-30],ax
		mov	word [bp-28],dx
		mov	word [bp-32],11
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15990
		push	word [U_$DOS_$$_DOSERROR+2]
		push	word [U_$DOS_$$_DOSERROR]
		call	ax
		mov	bx,ax
		jmp	..@j15991
..@j15990:
		mov	bx,word U_$DOS_$$_DOSERROR+2
..@j15991:
		mov	ax,word [bx]
		cwd
		mov	word [bp-24],ax
		mov	word [bp-22],dx
		mov	word [bp-26],0
		lea	ax,[bp-32]
		push	ax
		mov	ax,1
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		mov	word [bp-4],ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15996
		push	word [U_$DOS_$$_DOSERROR+2]
		push	word [U_$DOS_$$_DOSERROR]
		call	ax
		mov	bx,ax
		jmp	..@j15997
..@j15996:
		mov	bx,word U_$DOS_$$_DOSERROR+2
..@j15997:
		mov	ax,word [bx]
		cwd
		mov	bx,word [bp-4]
		mov	word [bx+8],ax
		mov	word [bx+10],dx
..@j15998:
		push	word [bp-4]
		mov	ax,word ..@j15998
		push	ax
		push	bp
		call	fpc_raiseexception
..@j15962:
		call	DOS_$$_DOSEXITCODE$$WORD
		mov	word [bp-2],ax
..@j15949:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-6]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j15950
		call	FPC_RERAISE
..@j15950:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	DOS_$$_DOSEXITCODE$$WORD
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$SYSCONST_$$_SEXECUTEPROCESSFAILED
EXTERN	VMT_$SYSUTILS_$$_EOSERROR
EXTERN	fpc_ansistr_assign
EXTERN	fpc_ansistr_concat_multi
EXTERN	_$SYSUTILS$_Ld630
EXTERN	U_$DOS_$$_DOSERROR
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	DOS_$$_EXEC_ANSISTRING$SHORTSTRING$ANSISTRING
EXTERN	fpc_ansistr_to_shortstr
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
