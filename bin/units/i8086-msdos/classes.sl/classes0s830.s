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
	GLOBAL CLASSES$_$TREADER_$__$$_READCURRENCY$$CURRENCY
CLASSES$_$TREADER_$__$$_READCURRENCY$$CURRENCY:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	bx,word [bp+4]
		push	word [bx+9]
		mov	bx,word [bp+4]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+50]
		call	ax
		cmp	ax,16
		je	..@j19410
		jmp	..@j19411
..@j19410:
		mov	bx,word [bp+4]
		push	word [bx+9]
		mov	bx,word [bp+4]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
		mov	bx,word [bp+4]
		push	word [bx+9]
		mov	bx,word [bp+4]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+70]
		call	ax
		wait fistp	qword [bp-8]
		DB	09bh
		jmp	..@j19420
..@j19411:
		push	word [bp+4]
		call	CLASSES$_$TREADER_$__$$_READINTEGER$$LONGINT
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		wait fild	dword [bp-12]
		wait fild	qword [_$CLASSES$_Ld70]
		wait fmulp	st1,st0
		wait fistp	qword [bp-8]
		DB	09bh
..@j19420:
		wait fild	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	_$CLASSES$_Ld70
EXTERN	CLASSES$_$TREADER_$__$$_READINTEGER$$LONGINT
