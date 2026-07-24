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
	GLOBAL MATH_$$_ENSURERANGE$DOUBLE$DOUBLE$DOUBLE$$DOUBLE
MATH_$$_ENSURERANGE$DOUBLE$DOUBLE$DOUBLE$$DOUBLE:
		push	bp
		mov	bp,sp
		sub	sp,10
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp+20]
		cld
		mov	cx,4
		rep
		movsw
		wait fld	qword [bp+12]
		wait fld	qword [bp-8]
		wait fcompp
		fstsw	[bp-10]
		mov	ah,byte [bp-9]
		sahf
		jp	..@j1949
		jb	..@j1947
..@j1949:
		jmp	..@j1948
..@j1947:
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp+12]
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j1952
..@j1948:
		wait fld	qword [bp+4]
		wait fld	qword [bp-8]
		wait fcompp
		fstsw	[bp-10]
		mov	ah,byte [bp-9]
		sahf
		jp	..@j1955
		ja	..@j1953
..@j1955:
		jmp	..@j1954
..@j1953:
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
..@j1954:
..@j1952:
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	24
