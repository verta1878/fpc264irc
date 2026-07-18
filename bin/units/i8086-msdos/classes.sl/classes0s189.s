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
	GLOBAL CLASSES$_$TCOLLECTION_$__$$_GETNAMEPATH$$ANSISTRING
CLASSES$_$TCOLLECTION_$__$$_GETNAMEPATH$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,284
		mov	word [bp-28],0
		mov	word [bp-26],0
		mov	word [bp-18],0
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
		jne	..@j4271
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+54]
		call	ax
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jne	..@j4279
		jmp	..@j4278
..@j4279:
		push	word [bp+6]
		lea	ax,[bp-18]
		push	ax
		call	CLASSES$_$TCOLLECTION_$__$$_GETPROPNAME$$ANSISTRING
		cmp	word [bp-18],0
		jne	..@j4277
		jmp	..@j4278
..@j4277:
		mov	ax,word [bp+4]
		push	ax
		push	word [bp-2]
		lea	ax,[bp-26]
		push	ax
		mov	bx,word [bp-2]
		mov	bx,word [bx]
		mov	ax,word [bx+58]
		call	ax
		mov	ax,word [bp-26]
		mov	word [bp-24],ax
		mov	ax,word _$CLASSES$_Ld15
		mov	word [bp-22],ax
		push	word [bp+6]
		lea	ax,[bp-28]
		push	ax
		call	CLASSES$_$TCOLLECTION_$__$$_GETPROPNAME$$ANSISTRING
		mov	ax,word [bp-28]
		mov	word [bp-20],ax
		lea	ax,[bp-24]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		jmp	..@j4300
..@j4278:
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-18]
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
		push	word [bp-18]
		call	fpc_ansistr_assign
..@j4300:
..@j4271:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-28]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-26]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-18]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j4272
		call	FPC_RERAISE
..@j4272:
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
EXTERN	_$CLASSES$_Ld15
EXTERN	CLASSES$_$TCOLLECTION_$__$$_GETPROPNAME$$ANSISTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
