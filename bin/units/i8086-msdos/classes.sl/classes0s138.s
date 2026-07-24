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
	GLOBAL CLASSES$_$TPARSER_$__$$_SKIPBOM
CLASSES$_$TPARSER_$__$$_SKIPBOM:
		push	bp
		mov	bp,sp
		sub	sp,26
		mov	word [bp-24],0
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
		jne	..@j3035
		mov	word [bp-2],1
		lea	ax,[bp-6]
		push	ax
		mov	ax,3
		push	ax
		mov	ax,word _$CLASSES$_Ld9
		push	ax
		call	fpc_shortstr_to_shortstr
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-8],ax
		jmp	..@j3048
	ALIGN 2
..@j3047:
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	si,word [bp+4]
		mov	si,word [si+8]
		mov	al,byte [bp-2]
		mov	byte [bp-26],al
		mov	byte [bp-25],0
		mov	al,byte [bx+si]
		mov	si,word [bp-26]
		mov	byte [bp+si-6],al
		mov	bx,word [bp+4]
		inc	word [bx+8]
		push	word [bp+4]
		call	CLASSES$_$TPARSER_$__$$_CHECKLOADBUFFER
		inc	word [bp-2]
..@j3048:
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	si,word [bp+4]
		mov	si,word [si+8]
		mov	al,byte [bx+si]
		mov	ah,0
		cmp	ax,187
		je	..@j3055
		cmp	ax,191
		je	..@j3055
		cmp	ax,239
		je	..@j3055
..@j3055:
		je	..@j3054
		jmp	..@j3049
..@j3054:
		cmp	word [bp-2],3
		jle	..@j3047
		jmp	..@j3049
..@j3049:
		lea	ax,[bp-24]
		push	ax
		lea	ax,[bp-6]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-24]
		mov	ax,word _$CLASSES$_Ld10
		push	ax
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j3056
		cmp	cx,0
		jne	..@j3056
		jmp	..@j3057
..@j3056:
		mov	bx,word [bp+4]
		mov	ax,word [bp-8]
		mov	word [bx+8],ax
..@j3057:
..@j3035:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-24]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j3036
		call	FPC_RERAISE
..@j3036:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_compare_equal
EXTERN	_$CLASSES$_Ld10
EXTERN	fpc_shortstr_to_ansistr
EXTERN	CLASSES$_$TPARSER_$__$$_CHECKLOADBUFFER
EXTERN	fpc_shortstr_to_shortstr
EXTERN	_$CLASSES$_Ld9
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
