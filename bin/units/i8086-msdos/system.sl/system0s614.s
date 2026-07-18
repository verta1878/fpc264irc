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
	GLOBAL SYSTEM$_$TOBJECT_$__$$_UNITNAME$$ANSISTRING
SYSTEM$_$TOBJECT_$__$$_UNITNAME$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+6]
		call	SYSTEM$_$TOBJECT_$__$$_CLASSINFO$$POINTER
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jne	..@j15246
		jmp	..@j15247
..@j15246:
		mov	bx,word [bp-2]
		mov	al,byte [bx+1]
		mov	ah,0
		add	ax,2
		add	word [bp-2],ax
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp-2]
		lea	ax,[bx+6]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		jmp	..@j15254
..@j15247:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
..@j15254:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_ansistr_assign
EXTERN	fpc_shortstr_to_ansistr
EXTERN	SYSTEM$_$TOBJECT_$__$$_CLASSINFO$$POINTER
