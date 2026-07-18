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
	GLOBAL DATEUTILS_$$_JULIANDATETODATETIME$DOUBLE$$TDATETIME
DATEUTILS_$$_JULIANDATETODATETIME$DOUBLE$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,24
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
		lea	ax,[bp-8]
		push	ax
		call	DATEUTILS_$$_TRYJULIANDATETODATETIME$DOUBLE$TDATETIME$$BOOLEAN
		test	al,al
		je	..@j3068
		jmp	..@j3069
..@j3068:
..@j3074:
		mov	ax,word VMT_$SYSUTILS_$$_ECONVERTERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SINVALIDJULIANDATE+2]
		wait fld	qword [bp+4]
		wait fstp	tword [bp-24]
		DB	09bh
		lea	ax,[bp-24]
		mov	word [bp-12],ax
		mov	word [bp-14],3
		lea	ax,[bp-14]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j3074
		push	ax
		push	bp
		call	fpc_raiseexception
..@j3069:
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$SYSCONST_$$_SINVALIDJULIANDATE
EXTERN	VMT_$SYSUTILS_$$_ECONVERTERROR
EXTERN	DATEUTILS_$$_TRYJULIANDATETODATETIME$DOUBLE$TDATETIME$$BOOLEAN
