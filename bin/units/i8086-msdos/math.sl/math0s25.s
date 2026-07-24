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
	GLOBAL MATH_$$_SINCOS$EXTENDED$EXTENDED$EXTENDED
MATH_$$_SINCOS$EXTENDED$EXTENDED$EXTENDED:
		push	bp
		mov	bp,sp
		push	word [bp+16]
		push	word [bp+14]
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		call	fpc_sin_real
		mov	bx,word [bp+6]
		wait fstp	tword [bx]
		DB	09bh
		push	word [bp+16]
		push	word [bp+14]
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		call	fpc_cos_real
		mov	bx,word [bp+4]
		wait fstp	tword [bx]
		DB	09bh
		mov	sp,bp
		pop	bp
		ret	14
EXTERN	fpc_cos_real
EXTERN	fpc_sin_real
