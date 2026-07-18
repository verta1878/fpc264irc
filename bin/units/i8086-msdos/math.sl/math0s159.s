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
	GLOBAL MATH_$$_MAX$DOUBLE$DOUBLE$$DOUBLE
MATH_$$_MAX$DOUBLE$DOUBLE$$DOUBLE:
		push	bp
		mov	bp,sp
		sub	sp,10
		wait fld	qword [bp+4]
		wait fld	qword [bp+12]
		wait fcompp
		fstsw	[bp-10]
		mov	ah,byte [bp-9]
		sahf
		jp	..@j1871
		ja	..@j1869
..@j1871:
		jmp	..@j1870
..@j1869:
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp+12]
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j1874
..@j1870:
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
..@j1874:
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	16
