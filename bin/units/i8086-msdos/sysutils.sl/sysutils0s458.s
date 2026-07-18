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
	GLOBAL SYSUTILS_$$_EXCEPTIONERRORMESSAGE$TOBJECT$POINTER$PCHAR$SMALLINT$$SMALLINT
SYSUTILS_$$_EXCEPTIONERRORMESSAGE$TOBJECT$POINTER$PCHAR$SMALLINT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,290
		mov	word [bp-4],0
		mov	word [bp-290],0
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
		jne	..@j14912
		lea	ax,[bp-4]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SEXCEPTIONERRORMESSAGE+2]
		mov	ax,word [bp+8]
		mov	dx,0
		mov	word [bp-30],ax
		mov	word [bp-28],dx
		mov	word [bp-32],5
		mov	bx,word [bp+10]
		mov	ax,word [bx]
		push	ax
		lea	ax,[bp-288]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
		lea	ax,[bp-288]
		mov	word [bp-24],ax
		mov	word [bp-26],4
		lea	ax,[bp-32]
		push	ax
		mov	ax,1
		push	ax
		call	SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
		mov	ax,word VMT_$SYSUTILS_$$_EXCEPTION
		push	ax
		push	word [bp+10]
		call	fpc_do_is
		test	al,al
		jne	..@j14926
		jmp	..@j14927
..@j14926:
		lea	ax,[bp-4]
		push	ax
		lea	ax,[bp-290]
		push	ax
		mov	ax,word _$SYSUTILS$_Ld689
		push	ax
		mov	ax,word [bp-4]
		mov	dx,0
		mov	word [bp-30],ax
		mov	word [bp-28],dx
		mov	word [bp-32],11
		mov	bx,word [bp+10]
		mov	dx,word [bx+2]
		mov	ax,0
		mov	word [bp-24],dx
		mov	word [bp-22],ax
		mov	word [bp-26],11
		lea	ax,[bp-32]
		push	ax
		mov	ax,1
		push	ax
		call	SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
		push	word [bp-290]
		call	fpc_ansistr_assign
..@j14927:
		mov	bx,word [bp-4]
		test	bx,bx
		je	..@j14946
		mov	bx,word [bx-2]
..@j14946:
		mov	word [bp-6],bx
		mov	bx,word [bp-4]
		mov	si,word [bp-6]
		cmp	byte [bx+si-1],46
		jne	..@j14947
		jmp	..@j14948
..@j14947:
		lea	ax,[bp-4]
		push	ax
		push	word [bp-4]
		mov	ax,word _$SYSUTILS$_Ld690
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		inc	word [bp-6]
..@j14948:
		mov	ax,word [bp-6]
		cmp	ax,word [bp+4]
		jg	..@j14957
		jmp	..@j14958
..@j14957:
		mov	ax,word [bp+4]
		mov	word [bp-6],ax
..@j14958:
		cmp	word [bp-6],0
		jg	..@j14961
		jmp	..@j14962
..@j14961:
		mov	ax,word [bp-4]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		push	word [bp-6]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j14962:
		mov	ax,word [bp-6]
		mov	word [bp-2],ax
..@j14912:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-290]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j14913
		call	FPC_RERAISE
..@j14913:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	fpc_ansistr_concat
EXTERN	_$SYSUTILS$_Ld690
EXTERN	fpc_ansistr_assign
EXTERN	_$SYSUTILS$_Ld689
EXTERN	fpc_do_is
EXTERN	VMT_$SYSUTILS_$$_EXCEPTION
EXTERN	SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
EXTERN	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
EXTERN	RESSTR_$SYSCONST_$$_SEXCEPTIONERRORMESSAGE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
