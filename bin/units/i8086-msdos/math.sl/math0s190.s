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
	GLOBAL MATH_$$_IFTHEN$BOOLEAN$DOUBLE$DOUBLE$$DOUBLE
MATH_$$_IFTHEN$BOOLEAN$DOUBLE$DOUBLE$$DOUBLE:
		push	bp
		mov	bp,sp
		sub	sp,8
		cmp	byte [bp+20],0
		jne	..@j2336
		jmp	..@j2337
..@j2336:
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp+12]
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j2340
..@j2337:
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
..@j2340:
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	18
