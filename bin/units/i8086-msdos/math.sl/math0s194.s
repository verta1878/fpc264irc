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
	GLOBAL MATH_$$_COMPAREVALUE$SINGLE$SINGLE$SINGLE$$TVALUERELATIONSHIP
MATH_$$_COMPAREVALUE$SINGLE$SINGLE$SINGLE$$TVALUERELATIONSHIP:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	byte [bp-1],1
		wait fld	dword [bp+8]
		wait fsubr	dword [bp+12]
		wait fabs
		wait fld	dword [bp+4]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		jp	..@j2388
		jae	..@j2386
..@j2388:
		jmp	..@j2387
..@j2386:
		mov	byte [bp-1],0
		jmp	..@j2391
..@j2387:
		wait fld	dword [bp+8]
		wait fld	dword [bp+12]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		jp	..@j2394
		jb	..@j2392
..@j2394:
		jmp	..@j2393
..@j2392:
		mov	byte [bp-1],-1
..@j2393:
..@j2391:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	12
