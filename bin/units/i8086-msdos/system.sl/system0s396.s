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
	GLOBAL fpc_ansistr_sint
fpc_ansistr_sint:
	GLOBAL FPC_ANSISTR_VALSINT
FPC_ANSISTR_VALSINT:
		push	bp
		mov	bp,sp
		sub	sp,272
		mov	bx,word [bp+6]
		mov	word [bx],0
		mov	word [bp-272],0
		mov	ax,1
		push	ax
		lea	ax,[bp-268]
		push	ax
		lea	ax,[bp-262]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j10197
		push	word [bp+10]
		push	word [bp+8]
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_shortstr_sint
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-272]
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-272]
		call	fpc_ansistr_assign
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
..@j10197:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-272]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j10198
		call	FPC_RERAISE
..@j10198:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
EXTERN	fpc_ansistr_assign
EXTERN	fpc_shortstr_to_ansistr
EXTERN	fpc_shortstr_sint
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
