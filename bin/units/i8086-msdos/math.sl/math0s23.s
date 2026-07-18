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
	GLOBAL MATH_$$_SINCOS$SINGLE$SINGLE$SINGLE
MATH_$$_SINCOS$SINGLE$SINGLE$SINGLE:
		push	bp
		mov	bp,sp
		wait fld	dword [bp+8]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_sin_real
		mov	bx,word [bp+6]
		wait fstp	dword [bx]
		DB	09bh
		wait fld	dword [bp+8]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_cos_real
		mov	bx,word [bp+4]
		wait fstp	dword [bx]
		DB	09bh
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_cos_real
EXTERN	fpc_sin_real
