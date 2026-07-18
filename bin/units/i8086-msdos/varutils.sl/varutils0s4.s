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
	GLOBAL VARUTILS_$$_EXCEPTIONTOVARIANTERROR$EXCEPTION$$HRESULT
VARUTILS_$$_EXCEPTIONTOVARIANTERROR$EXCEPTION$$HRESULT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word VMT_$SYSUTILS_$$_EOUTOFMEMORY
		push	ax
		push	word [bp+4]
		call	fpc_do_is
		test	al,al
		jne	..@j35
		jmp	..@j36
..@j35:
		mov	word [bp-4],14
		mov	word [bp-2],-32761
		jmp	..@j43
..@j36:
		mov	word [bp-4],9
		mov	word [bp-2],-32766
..@j43:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_do_is
EXTERN	VMT_$SYSUTILS_$$_EOUTOFMEMORY
