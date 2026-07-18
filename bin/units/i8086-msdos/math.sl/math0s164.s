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
	GLOBAL MATH_$$_INRANGE$DOUBLE$DOUBLE$DOUBLE$$BOOLEAN
MATH_$$_INRANGE$DOUBLE$DOUBLE$DOUBLE$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,4
		wait fld	qword [bp+12]
		wait fld	qword [bp+20]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		jp	..@j1914
		jae	..@j1913
..@j1914:
		jmp	..@j1912
..@j1913:
		wait fld	qword [bp+4]
		wait fld	qword [bp+20]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		jp	..@j1915
		jbe	..@j1911
..@j1915:
		jmp	..@j1912
..@j1911:
		mov	byte [bp-1],1
		jmp	..@j1916
..@j1912:
		mov	byte [bp-1],0
..@j1916:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	24
