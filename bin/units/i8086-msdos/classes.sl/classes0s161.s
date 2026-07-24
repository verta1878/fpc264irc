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
	GLOBAL CLASSES$_$TPARSER_$__$$_TOKENFLOAT$$EXTENDED
CLASSES$_$TPARSER_$__$$_TOKENFLOAT$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,18
		mov	bx,word [bp+4]
		push	word [bx+17]
		lea	ax,[bp-12]
		push	ax
		call	fpc_val_real_ansistr
		wait fstp	tword [bp-10]
		DB	09bh
		cmp	word [bp-12],0
		jne	..@j3770
		jmp	..@j3771
..@j3770:
		push	word [bp+4]
		push	word [RESSTR_$RTLCONSTS_$$_SPARINVALIDFLOAT+2]
		mov	bx,word [bp+4]
		mov	dx,word [bx+17]
		mov	ax,0
		mov	word [bp-16],dx
		mov	word [bp-14],ax
		mov	word [bp-18],11
		lea	ax,[bp-18]
		push	ax
		mov	ax,0
		push	ax
		call	CLASSES$_$TPARSER_$__$$_ERRORFMT$ANSISTRING$array_of_const
..@j3771:
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TPARSER_$__$$_ERRORFMT$ANSISTRING$array_of_const
EXTERN	RESSTR_$RTLCONSTS_$$_SPARINVALIDFLOAT
EXTERN	fpc_val_real_ansistr
