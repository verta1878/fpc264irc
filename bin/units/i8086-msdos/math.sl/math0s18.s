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
	GLOBAL MATH_$$_DEGNORMALIZE$DOUBLE$$DOUBLE
MATH_$$_DEGNORMALIZE$DOUBLE$$DOUBLE:
		push	bp
		mov	bp,sp
		sub	sp,20
		fstcw	[bp-12]
		fstcw	[bp-10]
		DB	09bh
		or	word [bp-12],3840
		wait fld	qword [bp+4]
		wait fdiv	qword [_$MATH$_Ld7]
		wait fldcw	[bp-12]
		wait fistp	qword [bp-20]
		wait fldcw	[bp-10]
		DB	09bh
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-18]
		push	word [bp-20]
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
		mov	word [bp-16],dx
		mov	word [bp-14],cx
		mov	word [bp-12],bx
		mov	word [bp-10],ax
		wait fild	qword [bp-16]
		wait fsubr	qword [bp+4]
		wait fstp	qword [bp-8]
		DB	09bh
		wait fldz
		wait fld	qword [bp-8]
		wait fcompp
		fstsw	[bp-10]
		mov	ah,byte [bp-9]
		sahf
		jp	..@j172
		jb	..@j170
..@j172:
		jmp	..@j171
..@j170:
		wait fld	qword [bp-8]
		wait fadd	qword [_$MATH$_Ld7]
		wait fstp	qword [bp-8]
		DB	09bh
..@j171:
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_mul_int64
EXTERN	_$MATH$_Ld7
