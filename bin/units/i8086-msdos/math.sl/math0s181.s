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
	GLOBAL MATH_$$_SAMEVALUE$DOUBLE$DOUBLE$DOUBLE$$BOOLEAN
MATH_$$_SAMEVALUE$DOUBLE$DOUBLE$DOUBLE$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,58
		wait fldz
		wait fld	qword [bp+4]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		jp	..@j2119
		je	..@j2117
..@j2119:
		jmp	..@j2118
..@j2117:
		lea	di,[bp-24]
		push	ss
		pop	es
		mov	si,word _$MATH$_Ld20
		cld
		mov	cx,5
		rep
		movsw
		wait fld	qword [bp+12]
		wait fabs
		wait fstp	qword [bp-50]
		DB	09bh
		wait fld	qword [bp+20]
		wait fabs
		wait fstp	qword [bp-58]
		DB	09bh
		wait fld	qword [bp-50]
		wait fld	qword [bp-58]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		jp	..@j2132
		jb	..@j2130
..@j2132:
		jmp	..@j2131
..@j2130:
		lea	di,[bp-42]
		push	ss
		pop	es
		lea	si,[bp-58]
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j2135
..@j2131:
		lea	di,[bp-42]
		push	ss
		pop	es
		lea	si,[bp-50]
		cld
		mov	cx,4
		rep
		movsw
..@j2135:
		wait fld	qword [bp-42]
		wait fld	tword [_$MATH$_Ld20]
		wait fmulp	st1,st0
		wait fstp	tword [bp-34]
		DB	09bh
		wait fld	tword [bp-24]
		wait fld	tword [bp-34]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		jp	..@j2140
		ja	..@j2138
..@j2140:
		jmp	..@j2139
..@j2138:
		lea	di,[bp-14]
		push	ss
		pop	es
		lea	si,[bp-34]
		cld
		mov	cx,5
		rep
		movsw
		jmp	..@j2143
..@j2139:
		lea	di,[bp-14]
		push	ss
		pop	es
		lea	si,[bp-24]
		cld
		mov	cx,5
		rep
		movsw
..@j2143:
		wait fld	tword [bp-14]
		wait fstp	qword [bp+4]
		DB	09bh
..@j2118:
		wait fld	qword [bp+12]
		wait fld	qword [bp+20]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		jp	..@j2148
		ja	..@j2146
..@j2148:
		jmp	..@j2147
..@j2146:
		wait fld	qword [bp+12]
		wait fsubr	qword [bp+20]
		wait fld	qword [bp+4]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		mov	al,0
		jb	..@j2151
		inc	ax
..@j2151:
		mov	byte [bp-1],al
		jmp	..@j2152
..@j2147:
		wait fld	qword [bp+20]
		wait fsubr	qword [bp+12]
		wait fld	qword [bp+4]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		mov	al,0
		jb	..@j2155
		inc	ax
..@j2155:
		mov	byte [bp-1],al
..@j2152:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	24
EXTERN	_$MATH$_Ld20
