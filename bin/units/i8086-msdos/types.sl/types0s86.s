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
	GLOBAL TYPES$_$TPOINTF_$__$$_ISZERO$$BOOLEAN
TYPES$_$TPOINTF_$__$$_ISZERO$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,22
		wait fldz
		wait fstp	tword [bp-12]
		DB	09bh
		mov	bx,word [bp+4]
		wait fld	dword [bx]
		wait fstp	tword [bp-22]
		DB	09bh
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-18]
		push	word [bp-20]
		push	word [bp-22]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		wait fldz
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	MATH_$$_SAMEVALUE$EXTENDED$EXTENDED$EXTENDED$$BOOLEAN
		test	al,al
		jne	..@j766
		jmp	..@j765
..@j766:
		wait fldz
		wait fstp	tword [bp-12]
		DB	09bh
		mov	bx,word [bp+4]
		wait fld	dword [bx+4]
		wait fstp	tword [bp-22]
		DB	09bh
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-18]
		push	word [bp-20]
		push	word [bp-22]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		wait fldz
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	MATH_$$_SAMEVALUE$EXTENDED$EXTENDED$EXTENDED$$BOOLEAN
		test	al,al
		jne	..@j764
		jmp	..@j765
..@j764:
		mov	byte [bp-1],1
		jmp	..@j791
..@j765:
		mov	byte [bp-1],0
..@j791:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	MATH_$$_SAMEVALUE$EXTENDED$EXTENDED$EXTENDED$$BOOLEAN
