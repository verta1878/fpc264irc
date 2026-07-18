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
	GLOBAL SYSUTILS_$$_CHECKBOOLSTRS
SYSUTILS_$$_CHECKBOOLSTRS:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [U_$SYSUTILS_$$_TRUEBOOLSTRS]
		test	bx,bx
		je	..@j7402
		mov	bx,word [bx-2]
		inc	bx
..@j7402:
		test	bx,bx
		je	..@j7400
		jmp	..@j7401
..@j7400:
		mov	word [bp-2],1
		mov	ax,word U_$SYSUTILS_$$_TRUEBOOLSTRS
		push	ax
		mov	ax,word RTTI_$SYSUTILS_$$_DEF185
		push	ax
		mov	ax,1
		push	ax
		lea	ax,[bp-2]
		push	ax
		call	fpc_dynarray_setlength
		mov	ax,word [U_$SYSUTILS_$$_TRUEBOOLSTRS]
		push	ax
		mov	ax,word _$SYSUTILS$_Ld635
		push	ax
		call	fpc_ansistr_assign
..@j7401:
		mov	bx,word [U_$SYSUTILS_$$_FALSEBOOLSTRS]
		test	bx,bx
		je	..@j7419
		mov	bx,word [bx-2]
		inc	bx
..@j7419:
		test	bx,bx
		je	..@j7417
		jmp	..@j7418
..@j7417:
		mov	word [bp-2],1
		mov	ax,word U_$SYSUTILS_$$_FALSEBOOLSTRS
		push	ax
		mov	ax,word RTTI_$SYSUTILS_$$_DEF185
		push	ax
		mov	ax,1
		push	ax
		lea	ax,[bp-2]
		push	ax
		call	fpc_dynarray_setlength
		mov	ax,word [U_$SYSUTILS_$$_FALSEBOOLSTRS]
		push	ax
		mov	ax,word _$SYSUTILS$_Ld636
		push	ax
		call	fpc_ansistr_assign
..@j7418:
		mov	sp,bp
		pop	bp
		ret
EXTERN	_$SYSUTILS$_Ld636
EXTERN	U_$SYSUTILS_$$_FALSEBOOLSTRS
EXTERN	fpc_ansistr_assign
EXTERN	_$SYSUTILS$_Ld635
EXTERN	fpc_dynarray_setlength
EXTERN	RTTI_$SYSUTILS_$$_DEF185
EXTERN	U_$SYSUTILS_$$_TRUEBOOLSTRS
