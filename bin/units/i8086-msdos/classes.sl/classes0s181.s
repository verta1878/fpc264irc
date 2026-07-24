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
	GLOBAL CLASSES$_$TCOLLECTION_$__$$_SETPROPNAME
CLASSES$_$TCOLLECTION_$__$$_SETPROPNAME:
		push	bp
		mov	bp,sp
		sub	sp,42
		mov	word [bp-40],0
		mov	ax,1
		push	ax
		lea	ax,[bp-20]
		push	ax
		lea	ax,[bp-14]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j4107
		mov	bx,word [bp+4]
		lea	ax,[bx+14]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+54]
		call	ax
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		je	..@j4117
		jmp	..@j4119
..@j4119:
		mov	bx,word [bp-2]
		mov	ax,word [bx]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CLASSINFO$$POINTER
		test	ax,ax
		je	..@j4117
		jmp	..@j4118
..@j4117:
		jmp	..@j4107
..@j4118:
		push	word [bp-2]
		lea	ax,[bp-4]
		push	ax
		call	TYPINFO_$$_GETPROPLIST$TOBJECT$PPROPLIST$$SMALLINT
		mov	word [bp-8],ax
		mov	ax,1
		push	ax
		lea	ax,[bp-34]
		push	ax
		lea	ax,[bp-28]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j4128
		mov	ax,word [bp-8]
		dec	ax
		mov	word [bp-42],ax
		mov	word [bp-6],0
		mov	ax,word [bp-42]
		cmp	ax,word [bp-6]
		jl	..@j4134
		dec	word [bp-6]
	ALIGN 2
..@j4135:
		inc	word [bp-6]
		mov	bx,word [bp-4]
		mov	ax,word [bp-6]
		mov	si,ax
		shl	si,1
		mov	bx,word [bx+si]
		mov	bx,word [bx]
		mov	dx,word [bx]
		mov	ax,word [bx+2]
		cmp	ax,0
		jne	..@j4137
		cmp	dx,15
		jne	..@j4137
		jmp	..@j4138
..@j4138:
		push	word [bp-2]
		mov	bx,word [bp-4]
		mov	ax,word [bp-6]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-38],ax
		mov	ax,word [bp-38]
		push	ax
		call	TYPINFO_$$_GETOBJECTPROP$TOBJECT$PPROPINFO$TCLASS$$TOBJECT
		cmp	ax,word [bp+4]
		je	..@j4136
		jmp	..@j4137
..@j4136:
		mov	bx,word [bp+4]
		lea	ax,[bx+14]
		push	ax
		lea	ax,[bp-40]
		push	ax
		mov	bx,word [bp-4]
		mov	ax,word [bp-6]
		mov	si,ax
		shl	si,1
		mov	bx,word [bx+si]
		lea	ax,[bx+17]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-40]
		call	fpc_ansistr_assign
		jmp	..@j4130
..@j4137:
		mov	ax,word [bp-42]
		cmp	ax,word [bp-6]
		jg	..@j4135
..@j4134:
..@j4128:
		call	FPC_POPADDRSTACK
		push	word [bp-4]
		call	SYSTEM_$$_FREEMEM$POINTER$$WORD
		pop	ax
		test	ax,ax
		je	..@j4129
		cmp	ax,2
		je	..@j4107
		call	FPC_RERAISE
..@j4130:
		pop	ax
		mov	dx,2
		push	dx
		jmp	..@j4128
..@j4129:
..@j4107:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-40]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j4108
		call	FPC_RERAISE
..@j4108:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_RERAISE
EXTERN	SYSTEM_$$_FREEMEM$POINTER$$WORD
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_shortstr_to_ansistr
EXTERN	TYPINFO_$$_GETOBJECTPROP$TOBJECT$PPROPINFO$TCLASS$$TOBJECT
EXTERN	TYPINFO_$$_GETPROPLIST$TOBJECT$PPROPLIST$$SMALLINT
EXTERN	SYSTEM$_$TOBJECT_$__$$_CLASSINFO$$POINTER
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
