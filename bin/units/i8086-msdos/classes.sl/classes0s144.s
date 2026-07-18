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
	GLOBAL CLASSES$_$TPARSER_$__$$_HANDLEHEXNUMBER
CLASSES$_$TPARSER_$__$$_HANDLEHEXNUMBER:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+4]
		lea	ax,[bx+17]
		push	ax
		mov	ax,word _$CLASSES$_Ld11
		push	ax
		call	fpc_ansistr_assign
		mov	bx,word [bp+4]
		inc	word [bx+8]
		push	word [bp+4]
		call	CLASSES$_$TPARSER_$__$$_CHECKLOADBUFFER
		mov	byte [bp-1],0
		jmp	..@j3210
	ALIGN 2
..@j3209:
		mov	byte [bp-1],1
		push	word [bp+4]
		call	CLASSES$_$TPARSER_$__$$_PROCESSCHAR
..@j3210:
		push	word [bp+4]
		call	CLASSES$_$TPARSER_$__$$_ISHEXNUM$$BOOLEAN
		test	al,al
		jne	..@j3209
		jmp	..@j3211
..@j3211:
		cmp	byte [bp-1],0
		je	..@j3218
		jmp	..@j3219
..@j3218:
		push	word [bp+4]
		push	word [RESSTR_$RTLCONSTS_$$_SPARINVALIDINTEGER+2]
		mov	bx,word [bp+4]
		mov	dx,word [bx+17]
		mov	ax,0
		mov	word [bp-6],dx
		mov	word [bp-4],ax
		mov	word [bp-8],11
		lea	ax,[bp-8]
		push	ax
		mov	ax,0
		push	ax
		call	CLASSES$_$TPARSER_$__$$_ERRORFMT$ANSISTRING$array_of_const
..@j3219:
		mov	bx,word [bp+4]
		mov	byte [bx+15],3
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TPARSER_$__$$_ERRORFMT$ANSISTRING$array_of_const
EXTERN	RESSTR_$RTLCONSTS_$$_SPARINVALIDINTEGER
EXTERN	CLASSES$_$TPARSER_$__$$_ISHEXNUM$$BOOLEAN
EXTERN	CLASSES$_$TPARSER_$__$$_PROCESSCHAR
EXTERN	CLASSES$_$TPARSER_$__$$_CHECKLOADBUFFER
EXTERN	fpc_ansistr_assign
EXTERN	_$CLASSES$_Ld11
