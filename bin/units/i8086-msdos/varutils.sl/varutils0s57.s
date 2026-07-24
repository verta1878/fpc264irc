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
	GLOBAL VARUTILS_$$_VARIANTTOSHORTSTRING$TVARDATA$$SHORTSTRING
VARUTILS_$$_VARIANTTOSHORTSTRING$TVARDATA$$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	word [bp-16],0
		mov	ax,1
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-6]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j3499
		mov	ax,word [bp+6]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	VARUTILS_$$_VARIANTTOANSISTRING$TVARDATA$$ANSISTRING
		push	word [bp-16]
		call	fpc_ansistr_to_shortstr
..@j3499:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-16]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j3500
		call	FPC_RERAISE
..@j3500:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_to_shortstr
EXTERN	VARUTILS_$$_VARIANTTOANSISTRING$TVARDATA$$ANSISTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
