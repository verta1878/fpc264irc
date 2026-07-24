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
	GLOBAL MATH_$$_DEGNORMALIZE$EXTENDED$$EXTENDED
MATH_$$_DEGNORMALIZE$EXTENDED$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,22
		fstcw	[bp-14]
		fstcw	[bp-12]
		DB	09bh
		or	word [bp-14],3840
		wait fld	tword [bp+4]
		wait fld	tword [_$MATH$_Ld8]
		wait fdivp	st1,st0
		wait fldcw	[bp-14]
		wait fistp	qword [bp-22]
		wait fldcw	[bp-12]
		DB	09bh
		push	word [bp-16]
		push	word [bp-18]
		push	word [bp-20]
		push	word [bp-22]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,360
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_int64
		mov	word [bp-18],dx
		mov	word [bp-16],cx
		mov	word [bp-14],bx
		mov	word [bp-12],ax
		wait fild	qword [bp-18]
		wait fld	tword [bp+4]
		wait fsubrp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
		wait fldz
		wait fld	tword [bp-10]
		wait fcompp
		fstsw	[bp-12]
		mov	ah,byte [bp-11]
		sahf
		jp	..@j187
		jb	..@j185
..@j187:
		jmp	..@j186
..@j185:
		wait fld	tword [bp-10]
		wait fld	tword [_$MATH$_Ld8]
		wait faddp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
..@j186:
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	fpc_mul_int64
EXTERN	_$MATH$_Ld8
