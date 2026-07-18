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
	GLOBAL UCOMPLEX_$$_equal$COMPLEX$COMPLEX$$BOOLEAN
UCOMPLEX_$$_equal$COMPLEX$COMPLEX$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,36
		mov	ax,word [bp+6]
		lea	di,[bp-18]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,8
		rep
		movsw
		mov	si,word [bp+4]
		lea	di,[bp-34]
		push	ss
		pop	es
		cld
		mov	cx,8
		rep
		movsw
		wait fld	qword [bp-34]
		wait fld	qword [bp-18]
		wait fcompp
		fstsw	[bp-36]
		mov	ah,byte [bp-35]
		sahf
		jp	..@j164
		je	..@j163
..@j164:
		jmp	..@j162
..@j163:
		wait fld	qword [bp-26]
		wait fld	qword [bp-10]
		wait fcompp
		fstsw	[bp-36]
		mov	ah,byte [bp-35]
		sahf
		jp	..@j165
		je	..@j161
..@j165:
		jmp	..@j162
..@j161:
		mov	byte [bp-1],1
		jmp	..@j166
..@j162:
		mov	byte [bp-1],0
..@j166:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
