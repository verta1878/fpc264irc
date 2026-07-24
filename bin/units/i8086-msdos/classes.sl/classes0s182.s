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
	GLOBAL CLASSES$_$TCOLLECTION_$__$$_GETPROPNAME$$ANSISTRING
CLASSES$_$TCOLLECTION_$__$$_GETPROPNAME$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+14]
		call	fpc_ansistr_assign
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+54]
		call	ax
		mov	word [bp-2],ax
		mov	bx,word [bp+4]
		cmp	word [bx],0
		jne	..@j4171
		jmp	..@j4174
..@j4174:
		cmp	word [bp-2],0
		je	..@j4171
		jmp	..@j4173
..@j4173:
		mov	bx,word [bp-2]
		mov	ax,word [bx]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CLASSINFO$$POINTER
		test	ax,ax
		je	..@j4171
		jmp	..@j4172
..@j4171:
		jmp	..@j4161
..@j4172:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+68]
		call	ax
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+14]
		call	fpc_ansistr_assign
..@j4161:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM$_$TOBJECT_$__$$_CLASSINFO$$POINTER
EXTERN	fpc_ansistr_assign
