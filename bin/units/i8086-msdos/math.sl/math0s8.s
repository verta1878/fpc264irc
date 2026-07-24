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
	GLOBAL MATH_$$_SIGN$EXTENDED$$TVALUESIGN
MATH_$$_SIGN$EXTENDED$$TVALUESIGN:
		push	bp
		mov	bp,sp
		sub	sp,4
		wait fldz
		wait fld	tword [bp+4]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		jp	..@j101
		jb	..@j99
..@j101:
		jmp	..@j100
..@j99:
		mov	byte [bp-1],-1
		jmp	..@j104
..@j100:
		wait fldz
		wait fld	tword [bp+4]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		jp	..@j107
		ja	..@j105
..@j107:
		jmp	..@j106
..@j105:
		mov	byte [bp-1],1
		jmp	..@j110
..@j106:
		mov	byte [bp-1],0
..@j110:
..@j104:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	10
