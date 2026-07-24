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
	GLOBAL MATH_$$_SIGN$SINGLE$$TVALUESIGN
MATH_$$_SIGN$SINGLE$$TVALUESIGN:
		push	bp
		mov	bp,sp
		sub	sp,4
		wait fld	dword [bp+4]
		wait fldz
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		jp	..@j69
		ja	..@j67
..@j69:
		jmp	..@j68
..@j67:
		mov	byte [bp-1],-1
		jmp	..@j72
..@j68:
		wait fld	dword [bp+4]
		wait fldz
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		jp	..@j75
		jb	..@j73
..@j75:
		jmp	..@j74
..@j73:
		mov	byte [bp-1],1
		jmp	..@j78
..@j74:
		mov	byte [bp-1],0
..@j78:
..@j72:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
