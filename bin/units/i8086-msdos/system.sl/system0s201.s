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
	GLOBAL fpc_arctan_real
fpc_arctan_real:
		push	bp
		mov	bp,sp
		sub	sp,12
		wait fld	tword [bp+4]
		wait ftst
		fstsw	word [bp-12]
		mov	ah,byte [bp-11]
		sahf
		jb	..@j2504
		wait fld1
		wait fcom
		fstsw	word [bp-12]
		mov	ah,byte [bp-11]
		sahf
		jb	..@j2505
		jz	..@j2506
		wait fpatan
		jmp	..@j2507
..@j2505:
		wait fxch	st1
		wait fpatan
		wait fld	tword [TC_$SYSTEM_$$_EXTENDED_PIO2]
		wait fsubrp	st1,st0
		jmp	..@j2507
..@j2506:
		wait fstp	st0
		wait fstp	st0
		wait fld	tword [TC_$SYSTEM_$$_EXTENDED_PIO4]
		jmp	..@j2507
..@j2504:
		wait fchs
		wait fld1
		wait fcom
		fstsw	word [bp-12]
		mov	ah,byte [bp-11]
		sahf
		jb	..@j2508
		jz	..@j2509
		wait fpatan
		wait fchs
		jmp	..@j2507
..@j2509:
		wait fstp	st0
		wait fstp	st0
		wait fld	tword [TC_$SYSTEM_$$_EXTENDED_PIO4]
		wait fchs
		jmp	..@j2507
..@j2508:
		wait fxch	st1
		wait fpatan
		wait fld	tword [TC_$SYSTEM_$$_EXTENDED_PIO2]
		wait fsubp	st1,st0
..@j2507:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	TC_$SYSTEM_$$_EXTENDED_PIO4
EXTERN	TC_$SYSTEM_$$_EXTENDED_PIO2
