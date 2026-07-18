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
	GLOBAL MATH_$$_DEGNORMALIZE$SINGLE$$SINGLE
MATH_$$_DEGNORMALIZE$SINGLE$$SINGLE:
		push	bp
		mov	bp,sp
		sub	sp,16
		fstcw	[bp-8]
		fstcw	[bp-6]
		DB	09bh
		or	word [bp-8],3840
		wait fld	dword [bp+4]
		wait fdiv	dword [_$MATH$_Ld6]
		wait fldcw	[bp-8]
		wait fistp	qword [bp-16]
		wait fldcw	[bp-6]
		DB	09bh
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
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
		mov	word [bp-12],dx
		mov	word [bp-10],cx
		mov	word [bp-8],bx
		mov	word [bp-6],ax
		wait fild	qword [bp-12]
		wait fsubr	dword [bp+4]
		wait fstp	dword [bp-4]
		DB	09bh
		wait fldz
		wait fld	dword [bp-4]
		wait fcompp
		fstsw	[bp-6]
		mov	ah,byte [bp-5]
		sahf
		jp	..@j157
		jb	..@j155
..@j157:
		jmp	..@j156
..@j155:
		wait fld	dword [bp-4]
		wait fadd	dword [_$MATH$_Ld6]
		wait fstp	dword [bp-4]
		DB	09bh
..@j156:
		wait fld	dword [bp-4]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_mul_int64
EXTERN	_$MATH$_Ld6
