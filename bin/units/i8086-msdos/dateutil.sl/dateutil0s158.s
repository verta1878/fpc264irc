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
	GLOBAL DATEUTILS_$$_SAMEDATE$TDATETIME$TDATETIME$$BOOLEAN
DATEUTILS_$$_SAMEDATE$TDATETIME$TDATETIME$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,22
		fstcw	[bp-6]
		fstcw	[bp-4]
		DB	09bh
		or	word [bp-6],3840
		wait fld	qword [bp+12]
		wait fldcw	[bp-6]
		wait fistp	qword [bp-14]
		wait fldcw	[bp-4]
		DB	09bh
		fstcw	[bp-6]
		fstcw	[bp-4]
		DB	09bh
		or	word [bp-6],3840
		wait fld	qword [bp+4]
		wait fldcw	[bp-6]
		wait fistp	qword [bp-22]
		wait fldcw	[bp-4]
		DB	09bh
		mov	bx,word [bp-14]
		mov	ax,word [bp-12]
		mov	dx,word [bp-10]
		mov	cx,word [bp-8]
		cmp	cx,word [bp-16]
		jne	..@j2585
		cmp	dx,word [bp-18]
		jne	..@j2585
		cmp	ax,word [bp-20]
		jne	..@j2585
		cmp	bx,word [bp-22]
		jne	..@j2585
		jmp	..@j2584
		jmp	..@j2585
..@j2584:
		mov	byte [bp-1],1
		jmp	..@j2586
..@j2585:
		mov	byte [bp-1],0
..@j2586:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	16
