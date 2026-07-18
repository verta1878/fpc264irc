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
	GLOBAL SYSTEM_$$_POS$RAWBYTESTRING$UNICODESTRING$$SMALLINT
SYSTEM_$$_POS$RAWBYTESTRING$UNICODESTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,18
		mov	word [bp-18],0
		mov	ax,1
		push	ax
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-8]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j12219
		lea	ax,[bp-18]
		push	ax
		push	word [bp+6]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-18]
		push	word [bp+4]
		call	SYSTEM_$$_POS$UNICODESTRING$UNICODESTRING$$SMALLINT
		mov	word [bp-2],ax
..@j12219:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-18]
		push	ax
		call	fpc_unicodestr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j12220
		call	FPC_RERAISE
..@j12220:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_unicodestr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_POS$UNICODESTRING$UNICODESTRING$$SMALLINT
EXTERN	fpc_ansistr_to_unicodestr
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
