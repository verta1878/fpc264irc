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
	GLOBAL CLASSES$_$TREADER_$__$$_READFLOAT$$EXTENDED
CLASSES$_$TREADER_$__$$_READFLOAT$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,18
		mov	bx,word [bp+4]
		push	word [bx+9]
		mov	bx,word [bp+4]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+50]
		call	ax
		cmp	ax,5
		je	..@j19372
		jmp	..@j19373
..@j19372:
		push	word [bp+4]
		call	CLASSES$_$TREADER_$__$$_READVALUE$$TVALUETYPE
		mov	bx,word [bp+4]
		push	word [bx+9]
		mov	bx,word [bp+4]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		wait fstp	tword [bp-10]
		DB	09bh
		jmp	..@j19382
..@j19373:
		push	word [bp+4]
		call	CLASSES$_$TREADER_$__$$_READINT64$$INT64
		mov	word [bp-18],dx
		mov	word [bp-16],cx
		mov	word [bp-14],bx
		mov	word [bp-12],ax
		wait fild	qword [bp-18]
		wait fstp	tword [bp-10]
		DB	09bh
..@j19382:
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TREADER_$__$$_READINT64$$INT64
EXTERN	CLASSES$_$TREADER_$__$$_READVALUE$$TVALUETYPE
