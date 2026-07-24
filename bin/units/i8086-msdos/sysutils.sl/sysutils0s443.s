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
	GLOBAL SYSUTILS$_$EXCEPTION_$__$$_TOSTRING$$ANSISTRING
SYSUTILS$_$EXCEPTION_$__$$_TOSTRING$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,278
		mov	word [bp-22],0
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
		jne	..@j14308
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-22]
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		push	ax
		lea	ax,[bp-278]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
		lea	ax,[bp-278]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		mov	ax,word [bp-22]
		mov	word [bp-20],ax
		mov	ax,word _$SYSUTILS$_Ld682
		mov	word [bp-18],ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+2]
		mov	word [bp-16],ax
		lea	ax,[bp-20]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
..@j14308:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-22]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j14309
		call	FPC_RERAISE
..@j14309:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_concat_multi
EXTERN	_$SYSUTILS$_Ld682
EXTERN	fpc_shortstr_to_ansistr
EXTERN	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
