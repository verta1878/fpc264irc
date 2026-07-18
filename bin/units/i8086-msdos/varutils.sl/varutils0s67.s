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
	GLOBAL VARUTILS_$$_MAKEWIDESTRING$PWIDECHAR$WIDESTRING
VARUTILS_$$_MAKEWIDESTRING$PWIDECHAR$WIDESTRING:
		push	bp
		mov	bp,sp
		sub	sp,14
		push	word [bp+4]
		call	fpc_unicodestr_incr_ref
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
		jne	..@j4303
		mov	bx,word [bp+6]
		mov	ax,word [bp+4]
		test	ax,ax
		jne	..@j4307
		mov	ax,word FPC_EMPTYCHAR
..@j4307:
		mov	word [bx],ax
..@j4303:
		call	FPC_POPADDRSTACK
		lea	ax,[bp+4]
		push	ax
		call	fpc_unicodestr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j4304
		call	FPC_RERAISE
..@j4304:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_unicodestr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_EMPTYCHAR
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_unicodestr_incr_ref
