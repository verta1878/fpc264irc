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
	GLOBAL SYSUTILS_$$_BOOLTOSTR$BOOLEAN$BOOLEAN$$ANSISTRING
SYSUTILS_$$_BOOLTOSTR$BOOLEAN$BOOLEAN$$ANSISTRING:
		push	bp
		mov	bp,sp
		cmp	byte [bp+4],0
		jne	..@j7436
		jmp	..@j7437
..@j7436:
		call	SYSUTILS_$$_CHECKBOOLSTRS
		cmp	byte [bp+6],0
		jne	..@j7438
		jmp	..@j7439
..@j7438:
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [U_$SYSUTILS_$$_TRUEBOOLSTRS]
		push	word [bx]
		call	fpc_ansistr_assign
		jmp	..@j7444
..@j7439:
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [U_$SYSUTILS_$$_FALSEBOOLSTRS]
		push	word [bx]
		call	fpc_ansistr_assign
..@j7444:
		jmp	..@j7449
..@j7437:
		cmp	byte [bp+6],0
		jne	..@j7450
		jmp	..@j7451
..@j7450:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word _$SYSUTILS$_Ld637
		push	ax
		call	fpc_ansistr_assign
		jmp	..@j7456
..@j7451:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word _$SYSUTILS$_Ld628
		push	ax
		call	fpc_ansistr_assign
..@j7456:
..@j7449:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	_$SYSUTILS$_Ld628
EXTERN	_$SYSUTILS$_Ld637
EXTERN	U_$SYSUTILS_$$_FALSEBOOLSTRS
EXTERN	fpc_ansistr_assign
EXTERN	U_$SYSUTILS_$$_TRUEBOOLSTRS
EXTERN	SYSUTILS_$$_CHECKBOOLSTRS
