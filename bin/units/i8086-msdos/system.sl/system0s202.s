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
	GLOBAL fpc_exp_real
fpc_exp_real:
		push	bp
		mov	bp,sp
		sub	sp,12
		wait fld	tword [bp+4]
		wait fldl2e
		wait fmulp	st1,st0
		wait fld	st0
		wait frndint
		wait fxch	st1
		wait fsub	st0,st1
		wait ftst
		fstsw	word [bp-12]
		mov	ah,byte [bp-11]
		sahf
		jb	..@j2512
		wait f2xm1
		wait fld1
		wait faddp	st1,st0
		jmp	..@j2513
..@j2512:
		wait fchs
		wait f2xm1
		wait fld1
		wait fadd	st1,st0
		wait fdivrp	st1,st0
..@j2513:
		wait fscale
		wait fstp	st1
		mov	sp,bp
		pop	bp
		ret	10
