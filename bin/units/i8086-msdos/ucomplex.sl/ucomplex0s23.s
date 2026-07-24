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
	GLOBAL UCOMPLEX_$$_equal$COMPLEX$REAL$$BOOLEAN
UCOMPLEX_$$_equal$COMPLEX$REAL$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	ax,word [bp+12]
		lea	di,[bp-18]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,8
		rep
		movsw
		wait fld	qword [bp+4]
		wait fld	qword [bp-18]
		wait fcompp
		fstsw	[bp-20]
		mov	ah,byte [bp-19]
		sahf
		jp	..@j172
		je	..@j171
..@j172:
		jmp	..@j170
..@j171:
		wait fld	qword [bp-10]
		wait fldz
		wait fcompp
		fstsw	[bp-20]
		mov	ah,byte [bp-19]
		sahf
		jp	..@j173
		je	..@j169
..@j173:
		jmp	..@j170
..@j169:
		mov	byte [bp-1],1
		jmp	..@j174
..@j170:
		mov	byte [bp-1],0
..@j174:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	10
