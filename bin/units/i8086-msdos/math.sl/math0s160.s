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
	GLOBAL MATH_$$_MIN$EXTENDED$EXTENDED$$EXTENDED
MATH_$$_MIN$EXTENDED$EXTENDED$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,12
		wait fld	tword [bp+4]
		wait fld	tword [bp+14]
		wait fcompp
		fstsw	[bp-12]
		mov	ah,byte [bp-11]
		sahf
		jp	..@j1881
		jb	..@j1879
..@j1881:
		jmp	..@j1880
..@j1879:
		lea	di,[bp-10]
		push	ss
		pop	es
		lea	si,[bp+14]
		cld
		mov	cx,5
		rep
		movsw
		jmp	..@j1884
..@j1880:
		lea	di,[bp-10]
		push	ss
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,5
		rep
		movsw
..@j1884:
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	20
