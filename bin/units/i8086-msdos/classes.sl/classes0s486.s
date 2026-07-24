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
	GLOBAL CLASSES$_$TPERSISTENT_$__$$_GETNAMEPATH$$ANSISTRING
CLASSES$_$TPERSISTENT_$__$$_GETNAMEPATH$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,274
		mov	word [bp-2],0
		mov	ax,1
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-10]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j10938
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		push	ax
		lea	ax,[bp-274]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
		lea	ax,[bp-274]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+54]
		call	ax
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		jne	..@j10954
		jmp	..@j10955
..@j10954:
		push	word [bp-4]
		lea	ax,[bp-2]
		push	ax
		mov	bx,word [bp-4]
		mov	bx,word [bx]
		mov	ax,word [bx+58]
		call	ax
		cmp	word [bp-2],0
		jne	..@j10960
		jmp	..@j10961
..@j10960:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [bp-2]
		mov	word [bp-24],ax
		mov	ax,word _$CLASSES$_Ld15
		mov	word [bp-22],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-20],ax
		lea	ax,[bp-24]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
..@j10961:
..@j10955:
..@j10938:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j10939
		call	FPC_RERAISE
..@j10939:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_concat_multi
EXTERN	_$CLASSES$_Ld15
EXTERN	fpc_shortstr_to_ansistr
EXTERN	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
