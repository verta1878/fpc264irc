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
	GLOBAL MATH_$$_SIGN$DOUBLE$$TVALUESIGN
MATH_$$_SIGN$DOUBLE$$TVALUESIGN:
		push	bp
		mov	bp,sp
		sub	sp,4
		wait fld	qword [bp+4]
		wait fldz
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		jp	..@j85
		ja	..@j83
..@j85:
		jmp	..@j84
..@j83:
		mov	byte [bp-1],-1
		jmp	..@j88
..@j84:
		wait fld	qword [bp+4]
		wait fldz
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		jp	..@j91
		jb	..@j89
..@j91:
		jmp	..@j90
..@j89:
		mov	byte [bp-1],1
		jmp	..@j94
..@j90:
		mov	byte [bp-1],0
..@j94:
..@j88:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	8
