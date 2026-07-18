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
	GLOBAL SYSTEM_$$_RANDOM$$EXTENDED
SYSTEM_$$_RANDOM$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,22
		call	SYSTEM_$$_GENRAND_MT19937$$LONGINT
		mov	word [bp-14],ax
		mov	word [bp-12],dx
		mov	dx,word [bp-14]
		mov	ax,word [bp-12]
		mov	word [bp-22],dx
		mov	word [bp-20],ax
		mov	word [bp-18],0
		mov	word [bp-16],0
		wait fild	qword [bp-22]
		wait fld	tword [_$SYSTEM$_Ld24]
		wait fmulp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret
EXTERN	_$SYSTEM$_Ld24
EXTERN	SYSTEM_$$_GENRAND_MT19937$$LONGINT
