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
	GLOBAL MATH_$$_COMPAREVALUE$DOUBLE$DOUBLE$DOUBLE$$TVALUERELATIONSHIP
MATH_$$_COMPAREVALUE$DOUBLE$DOUBLE$DOUBLE$$TVALUERELATIONSHIP:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	byte [bp-1],1
		wait fld	qword [bp+12]
		wait fsubr	qword [bp+20]
		wait fabs
		wait fld	qword [bp+4]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		jp	..@j2403
		jae	..@j2401
..@j2403:
		jmp	..@j2402
..@j2401:
		mov	byte [bp-1],0
		jmp	..@j2406
..@j2402:
		wait fld	qword [bp+12]
		wait fld	qword [bp+20]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		jp	..@j2409
		jb	..@j2407
..@j2409:
		jmp	..@j2408
..@j2407:
		mov	byte [bp-1],-1
..@j2408:
..@j2406:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	24
