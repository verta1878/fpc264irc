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
	GLOBAL SYSTEM_$$_ASSIGN$TEXT$SHORTSTRING
SYSTEM_$$_ASSIGN$TEXT$SHORTSTRING:
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
		jne	..@j21028
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-16]
		call	SYSTEM_$$_ASSIGN$TEXT$RAWBYTESTRING
..@j21028:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-16]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j21029
		call	FPC_RERAISE
..@j21029:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_ASSIGN$TEXT$RAWBYTESTRING
EXTERN	fpc_shortstr_to_ansistr
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
