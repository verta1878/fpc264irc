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
	GLOBAL DATEUTILS_$$_ISSAMEDAY$TDATETIME$TDATETIME$$BOOLEAN
DATEUTILS_$$_ISSAMEDAY$TDATETIME$TDATETIME$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,22
		fstcw	[bp-14]
		fstcw	[bp-12]
		DB	09bh
		or	word [bp-14],3840
		wait fld	qword [bp+4]
		wait fldcw	[bp-14]
		wait fistp	qword [bp-22]
		wait fldcw	[bp-12]
		DB	09bh
		wait fild	qword [bp-22]
		wait fsubr	qword [bp+12]
		wait fstp	qword [bp-10]
		DB	09bh
		wait fldz
		wait fld	qword [bp-10]
		wait fcompp
		fstsw	[bp-12]
		mov	ah,byte [bp-11]
		sahf
		jp	..@j215
		jae	..@j214
..@j215:
		jmp	..@j213
..@j214:
		wait fld1
		wait fld	qword [bp-10]
		wait fcompp
		fstsw	[bp-12]
		mov	ah,byte [bp-11]
		sahf
		jp	..@j216
		jb	..@j212
..@j216:
		jmp	..@j213
..@j212:
		mov	byte [bp-1],1
		jmp	..@j217
..@j213:
		mov	byte [bp-1],0
..@j217:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	16
