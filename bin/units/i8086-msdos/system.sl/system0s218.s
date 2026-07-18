BITS 16
CPU 8086
SECTION text use16 class=code
SECTION rodata class=data
SECTION data class=data
SECTION fpc class=data
SECTION bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION text

SECTION text
	ALIGN 2
	GLOBAL SYSTEM_$$_FLOORD$DOUBLE$$DOUBLE
SYSTEM_$$_FLOORD$DOUBLE$$DOUBLE:
		push	bp
		mov	bp,sp
		sub	sp,18
		wait fld	qword [bp+4]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_int_real
		wait fstp	qword [bp-16]
		DB	09bh
		wait fld	qword [bp+4]
		wait fldz
		wait fcompp
		fstsw	[bp-18]
		mov	ah,byte [bp-17]
		sahf
		jp	..@j2705
		jbe	..@j2702
..@j2705:
		jmp	..@j2704
..@j2704:
		wait fld	qword [bp-16]
		wait fld	qword [bp+4]
		wait fcompp
		fstsw	[bp-18]
		mov	ah,byte [bp-17]
		sahf
		jp	..@j2706
		je	..@j2702
..@j2706:
		jmp	..@j2703
..@j2702:
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp-16]
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j2709
..@j2703:
		wait fld	qword [bp-16]
		wait fld1
		wait fsubp	st1,st0
		wait fstp	qword [bp-8]
		DB	09bh
..@j2709:
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_int_real
