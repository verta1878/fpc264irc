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
	GLOBAL DATEUTILS_$$_COMPARETIME$TDATETIME$TDATETIME$$TVALUERELATIONSHIP
DATEUTILS_$$_COMPARETIME$TDATETIME$TDATETIME$$TVALUERELATIONSHIP:
		push	bp
		mov	bp,sp
		sub	sp,12
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
		call	DATEUTILS_$$_SAMETIME$TDATETIME$TDATETIME$$BOOLEAN
		test	al,al
		jne	..@j2556
		jmp	..@j2557
..@j2556:
		mov	byte [bp-1],0
		jmp	..@j2564
..@j2557:
		wait fld	qword [bp+12]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_frac_real
		wait fstp	tword [bp-12]
		DB	09bh
		wait fld	qword [bp+4]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_frac_real
		wait fld	tword [bp-12]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		jp	..@j2571
		jb	..@j2565
..@j2571:
		jmp	..@j2566
..@j2565:
		mov	byte [bp-1],-1
		jmp	..@j2574
..@j2566:
		mov	byte [bp-1],1
..@j2574:
..@j2564:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	fpc_frac_real
EXTERN	DATEUTILS_$$_SAMETIME$TDATETIME$TDATETIME$$BOOLEAN
