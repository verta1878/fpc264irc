BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TPERSISTENT_$__$$_ASSIGNERROR$TPERSISTENT
CLASSES$_$TPERSISTENT_$__$$_ASSIGNERROR$TPERSISTENT:
		push	bp
		mov	bp,sp
		sub	sp,528
		mov	word [bp-2],0
		mov	ax,1
		push	ax
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-8]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j10735
		cmp	word [bp+4],0
		jne	..@j10737
		jmp	..@j10738
..@j10737:
		lea	ax,[bp-2]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		push	ax
		lea	ax,[bp-272]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
		lea	ax,[bp-272]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		jmp	..@j10749
..@j10738:
		lea	ax,[bp-2]
		push	ax
		mov	ax,word _$CLASSES$_Ld23
		push	ax
		call	fpc_ansistr_assign
..@j10749:
..@j10754:
		mov	ax,word VMT_$SYSUTILS_$$_ECONVERTERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SASSIGNERROR+2]
		mov	ax,word [bp-2]
		mov	dx,0
		mov	word [bp-26],ax
		mov	word [bp-24],dx
		mov	word [bp-28],11
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		push	ax
		lea	ax,[bp-528]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
		lea	ax,[bp-528]
		mov	word [bp-20],ax
		mov	word [bp-22],4
		lea	ax,[bp-28]
		push	ax
		mov	ax,1
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j10754
		push	ax
		push	bp
		call	fpc_raiseexception
..@j10735:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j10736
		call	FPC_RERAISE
..@j10736:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SASSIGNERROR
EXTERN	VMT_$SYSUTILS_$$_ECONVERTERROR
EXTERN	fpc_ansistr_assign
EXTERN	_$CLASSES$_Ld23
EXTERN	fpc_shortstr_to_ansistr
EXTERN	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
