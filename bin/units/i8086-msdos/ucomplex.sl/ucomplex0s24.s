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
	GLOBAL UCOMPLEX_$$_equal$REAL$COMPLEX$$BOOLEAN
UCOMPLEX_$$_equal$REAL$COMPLEX$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	ax,word [bp+4]
		lea	di,[bp-18]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,8
		rep
		movsw
		wait fld	qword [bp+6]
		wait fld	qword [bp-18]
		wait fcompp
		fstsw	[bp-20]
		mov	ah,byte [bp-19]
		sahf
		jp	..@j180
		je	..@j179
..@j180:
		jmp	..@j178
..@j179:
		wait fld	qword [bp-10]
		wait fldz
		wait fcompp
		fstsw	[bp-20]
		mov	ah,byte [bp-19]
		sahf
		jp	..@j181
		je	..@j177
..@j181:
		jmp	..@j178
..@j177:
		mov	byte [bp-1],1
		jmp	..@j182
..@j178:
		mov	byte [bp-1],0
..@j182:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	10
