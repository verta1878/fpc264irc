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
	GLOBAL MATH_$$_PAYMENT$EXTENDED$SMALLINT$EXTENDED$EXTENDED$TPAYMENTTIME$$EXTENDED
MATH_$$_PAYMENT$EXTENDED$SMALLINT$EXTENDED$EXTENDED$TPAYMENTTIME$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,46
		wait fldz
		wait fld	tword [bp+30]
		wait fcompp
		fstsw	[bp-42]
		mov	ah,byte [bp-41]
		sahf
		jp	..@j2649
		je	..@j2647
..@j2649:
		jmp	..@j2648
..@j2647:
		wait fld	tword [bp+18]
		wait fld	tword [bp+8]
		wait faddp	st1,st0
		wait fchs
		mov	ax,word [bp+28]
		cwd
		mov	word [bp-46],ax
		mov	word [bp-44],dx
		wait fild	dword [bp-46]
		wait fdivp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
		jmp	..@j2652
..@j2648:
		wait fld1
		wait fld	tword [bp+30]
		wait faddp	st1,st0
		wait fstp	tword [bp-20]
		DB	09bh
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-18]
		push	word [bp-20]
		mov	ax,word [bp+28]
		cwd
		mov	word [bp-44],ax
		mov	word [bp-42],dx
		wait fild	dword [bp-44]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	MATH_$$_POWER$EXTENDED$EXTENDED$$EXTENDED
		wait fstp	tword [bp-30]
		DB	09bh
		wait fld1
		wait fld	tword [bp-30]
		wait fsubrp	st1,st0
		wait fld1
		wait fld	tword [bp-20]
		wait fsubrp	st1,st0
		wait fdivp	st1,st0
		wait fstp	tword [bp-40]
		DB	09bh
		cmp	word [bp+4],1
		je	..@j2663
		jmp	..@j2664
..@j2663:
		wait fld	tword [bp-20]
		wait fld	tword [bp-40]
		wait fmulp	st1,st0
		wait fstp	tword [bp-40]
		DB	09bh
..@j2664:
		wait fld	tword [bp-30]
		wait fld	tword [bp+18]
		wait fmulp	st1,st0
		wait fld	tword [bp+8]
		wait faddp	st1,st0
		wait fchs
		wait fld	tword [bp-40]
		wait fdivp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
..@j2652:
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	36
EXTERN	MATH_$$_POWER$EXTENDED$EXTENDED$$EXTENDED
