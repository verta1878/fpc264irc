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
	GLOBAL DATEUTILS_$$_COMPAREDATE$TDATETIME$TDATETIME$$TVALUERELATIONSHIP
DATEUTILS_$$_COMPAREDATE$TDATETIME$TDATETIME$$TVALUERELATIONSHIP:
		push	bp
		mov	bp,sp
		sub	sp,4
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+12]
		cld
		mov	cx,4
		rep
		movsw
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
		call	DATEUTILS_$$_SAMEDATE$TDATETIME$TDATETIME$$BOOLEAN
		test	al,al
		jne	..@j2537
		jmp	..@j2538
..@j2537:
		mov	byte [bp-1],0
		jmp	..@j2545
..@j2538:
		wait fld	qword [bp+4]
		wait fld	qword [bp+12]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		jp	..@j2548
		jb	..@j2546
..@j2548:
		jmp	..@j2547
..@j2546:
		mov	byte [bp-1],-1
		jmp	..@j2551
..@j2547:
		mov	byte [bp-1],1
..@j2551:
..@j2545:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	DATEUTILS_$$_SAMEDATE$TDATETIME$TDATETIME$$BOOLEAN
