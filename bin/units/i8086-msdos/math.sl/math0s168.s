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
	GLOBAL MATH_$$_ISZERO$SINGLE$SINGLE$$BOOLEAN
MATH_$$_ISZERO$SINGLE$SINGLE$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,4
		wait fldz
		wait fld	dword [bp+4]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		jp	..@j1962
		je	..@j1960
..@j1962:
		jmp	..@j1961
..@j1960:
		mov	ax,word [_$MATH$_Ld18]
		mov	word [bp+4],ax
		mov	ax,word [_$MATH$_Ld18+2]
		mov	word [bp+6],ax
..@j1961:
		wait fld	dword [bp+8]
		wait fabs
		wait fld	dword [bp+4]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		mov	al,0
		jb	..@j1967
		inc	ax
..@j1967:
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	_$MATH$_Ld18
