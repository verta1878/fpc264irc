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
	GLOBAL SYSTEM_$$_DETECTFPU
SYSTEM_$$_DETECTFPU:
		push	bp
		mov	bp,sp
		sub	sp,2
		xor	bx,bx
		fninit
		mov	byte [bp-1],0
		nop
		fnstcw	word [bp-2]
		cmp	byte [bp-1],3
		jne	..@j156
		inc	bx
		and	byte [bp-2],127
		wait fldcw	word [bp-2]
		fdisi
		fstcw	word [bp-2]
		test	byte [bp-2],128
		jnz	..@j156
		inc	bx
		finit
		wait fld1
		wait fldz
		wait fdivp	st1,st0
		wait fld	st0
		wait fchs
		wait fcompp
		fstsw	word [bp-2]
		mov	ah,byte [bp-1]
		sahf
		je	..@j156
		inc	bx
..@j156:
		mov	byte [TC_$SYSTEM_$$_TEST8087],bl
		cmp	byte [TC_$SYSTEM_$$_TEST8087],2
		jbe	..@j157
		jmp	..@j158
..@j157:
		mov	word [TC_$SYSTEM_$$_DEFAULT8087CW],4912
		jmp	..@j161
..@j158:
		mov	word [TC_$SYSTEM_$$_DEFAULT8087CW],4914
..@j161:
		mov	sp,bp
		pop	bp
		ret
EXTERN	TC_$SYSTEM_$$_DEFAULT8087CW
EXTERN	TC_$SYSTEM_$$_TEST8087
