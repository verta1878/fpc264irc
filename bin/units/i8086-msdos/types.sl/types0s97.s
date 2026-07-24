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
	GLOBAL TYPES$_$TPOINTF_$__$$_not_equal$TPOINTF$TPOINTF$$BOOLEAN
TYPES$_$TPOINTF_$__$$_not_equal$TPOINTF$TPOINTF$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,14
		mov	ax,word [bp+4]
		mov	word [bp-14],ax
		mov	ax,word [bp+6]
		mov	word [bp-12],ax
		mov	bx,word [bp-12]
		push	word [bx+2]
		mov	bx,word [bp-12]
		push	word [bx]
		mov	bx,word [bp-14]
		push	word [bx+2]
		mov	bx,word [bp-14]
		push	word [bx]
		wait fldz
		sub	sp,4
		mov	bx,sp
		wait fstp	dword [bx]
		DB	09bh
		call	MATH_$$_SAMEVALUE$SINGLE$SINGLE$SINGLE$$BOOLEAN
		test	al,al
		jne	..@j886
		jmp	..@j884
..@j886:
		mov	bx,word [bp+4]
		mov	ax,word [bx+4]
		mov	word [bp-6],ax
		mov	ax,word [bx+6]
		mov	word [bp-4],ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	word [bp-10],ax
		mov	ax,word [bx+6]
		mov	word [bp-8],ax
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-4]
		push	word [bp-6]
		wait fldz
		sub	sp,4
		mov	bx,sp
		wait fstp	dword [bx]
		DB	09bh
		call	MATH_$$_SAMEVALUE$SINGLE$SINGLE$SINGLE$$BOOLEAN
		test	al,al
		jne	..@j885
		jmp	..@j884
..@j884:
		mov	byte [bp-1],1
		jmp	..@j911
..@j885:
		mov	byte [bp-1],0
..@j911:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	MATH_$$_SAMEVALUE$SINGLE$SINGLE$SINGLE$$BOOLEAN
