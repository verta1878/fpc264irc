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
	GLOBAL MATH_$$_COMPAREVALUE$EXTENDED$EXTENDED$EXTENDED$$TVALUERELATIONSHIP
MATH_$$_COMPAREVALUE$EXTENDED$EXTENDED$EXTENDED$$TVALUERELATIONSHIP:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	byte [bp-1],1
		wait fld	tword [bp+14]
		wait fld	tword [bp+24]
		wait fsubrp	st1,st0
		wait fabs
		wait fld	tword [bp+4]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		jp	..@j2418
		jae	..@j2416
..@j2418:
		jmp	..@j2417
..@j2416:
		mov	byte [bp-1],0
		jmp	..@j2421
..@j2417:
		wait fld	tword [bp+14]
		wait fld	tword [bp+24]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		jp	..@j2424
		jb	..@j2422
..@j2424:
		jmp	..@j2423
..@j2422:
		mov	byte [bp-1],-1
..@j2423:
..@j2421:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	30
