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
	GLOBAL MATH_$$_SAMEVALUE$EXTENDED$EXTENDED$EXTENDED$$BOOLEAN
MATH_$$_SAMEVALUE$EXTENDED$EXTENDED$EXTENDED$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,54
		wait fldz
		wait fld	tword [bp+4]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		jp	..@j2060
		je	..@j2058
..@j2060:
		jmp	..@j2059
..@j2058:
		lea	di,[bp-14]
		push	ss
		pop	es
		mov	si,word _$MATH$_Ld21
		cld
		mov	cx,5
		rep
		movsw
		wait fld	tword [bp+14]
		wait fabs
		wait fstp	tword [bp-44]
		DB	09bh
		wait fld	tword [bp+24]
		wait fabs
		wait fstp	tword [bp-54]
		DB	09bh
		wait fld	tword [bp-44]
		wait fld	tword [bp-54]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		jp	..@j2071
		jb	..@j2069
..@j2071:
		jmp	..@j2070
..@j2069:
		lea	di,[bp-34]
		push	ss
		pop	es
		lea	si,[bp-54]
		cld
		mov	cx,5
		rep
		movsw
		jmp	..@j2074
..@j2070:
		lea	di,[bp-34]
		push	ss
		pop	es
		lea	si,[bp-44]
		cld
		mov	cx,5
		rep
		movsw
..@j2074:
		wait fld	tword [_$MATH$_Ld21]
		wait fld	tword [bp-34]
		wait fmulp	st1,st0
		wait fstp	tword [bp-24]
		DB	09bh
		wait fld	tword [bp-14]
		wait fld	tword [bp-24]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		jp	..@j2079
		ja	..@j2077
..@j2079:
		jmp	..@j2078
..@j2077:
		lea	di,[bp+4]
		push	ds
		pop	es
		lea	si,[bp-24]
		cld
		mov	cx,5
		rep
		movsw
		jmp	..@j2082
..@j2078:
		lea	di,[bp+4]
		push	ds
		pop	es
		lea	si,[bp-14]
		cld
		mov	cx,5
		rep
		movsw
..@j2082:
..@j2059:
		wait fld	tword [bp+14]
		wait fld	tword [bp+24]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		jp	..@j2087
		ja	..@j2085
..@j2087:
		jmp	..@j2086
..@j2085:
		wait fld	tword [bp+14]
		wait fld	tword [bp+24]
		wait fsubrp	st1,st0
		wait fld	tword [bp+4]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		mov	al,0
		jb	..@j2090
		inc	ax
..@j2090:
		mov	byte [bp-1],al
		jmp	..@j2091
..@j2086:
		wait fld	tword [bp+24]
		wait fld	tword [bp+14]
		wait fsubrp	st1,st0
		wait fld	tword [bp+4]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		mov	al,0
		jb	..@j2094
		inc	ax
..@j2094:
		mov	byte [bp-1],al
..@j2091:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	30
EXTERN	_$MATH$_Ld21
