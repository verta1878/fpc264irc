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
	GLOBAL CLASSES$_$TCOLLECTIONITEM_$__$$_GETNAMEPATH$$ANSISTRING
CLASSES$_$TCOLLECTIONITEM_$__$$_GETNAMEPATH$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,284
		mov	word [bp-28],0
		mov	word [bp-26],0
		mov	word [bp-24],0
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
		jne	..@j3907
		mov	bx,word [bp+6]
		cmp	word [bx+6],0
		jne	..@j3909
		jmp	..@j3910
..@j3909:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+6]
		lea	ax,[bp-24]
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+6]
		mov	bx,word [bx]
		mov	ax,word [bx+58]
		call	ax
		mov	ax,word [bp-24]
		mov	word [bp-22],ax
		mov	ax,word _$CLASSES$_Ld13
		mov	word [bp-20],ax
		lea	ax,[bp-26]
		push	ax
		push	word [bp+6]
		call	CLASSES$_$TCOLLECTIONITEM_$__$$_GETINDEX$$SMALLINT
		cwd
		mov	cx,ax
		mov	ax,dx
		push	ax
		push	cx
		call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
		mov	ax,word [bp-26]
		mov	word [bp-18],ax
		mov	ax,word _$CLASSES$_Ld14
		mov	word [bp-16],ax
		lea	ax,[bp-22]
		push	ax
		mov	ax,3
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		jmp	..@j3929
..@j3910:
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-28]
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		push	ax
		lea	ax,[bp-284]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
		lea	ax,[bp-284]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-28]
		call	fpc_ansistr_assign
..@j3929:
..@j3907:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-28]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-26]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-24]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j3908
		call	FPC_RERAISE
..@j3908:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_assign
EXTERN	fpc_shortstr_to_ansistr
EXTERN	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
EXTERN	fpc_ansistr_concat_multi
EXTERN	_$CLASSES$_Ld14
EXTERN	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
EXTERN	CLASSES$_$TCOLLECTIONITEM_$__$$_GETINDEX$$SMALLINT
EXTERN	_$CLASSES$_Ld13
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
