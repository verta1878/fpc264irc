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
	GLOBAL DATEUTILS_$$_COMPAREDATETIME$TDATETIME$TDATETIME$$TVALUERELATIONSHIP
DATEUTILS_$$_COMPAREDATETIME$TDATETIME$TDATETIME$$TVALUERELATIONSHIP:
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
		call	DATEUTILS_$$_SAMEDATETIME$TDATETIME$TDATETIME$$BOOLEAN
		test	al,al
		jne	..@j2518
		jmp	..@j2519
..@j2518:
		mov	byte [bp-1],0
		jmp	..@j2526
..@j2519:
		wait fld	qword [bp+4]
		wait fld	qword [bp+12]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		jp	..@j2529
		ja	..@j2527
..@j2529:
		jmp	..@j2528
..@j2527:
		mov	byte [bp-1],1
		jmp	..@j2532
..@j2528:
		mov	byte [bp-1],-1
..@j2532:
..@j2526:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	DATEUTILS_$$_SAMEDATETIME$TDATETIME$TDATETIME$$BOOLEAN
