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
	GLOBAL fpc_unicodestr_float
fpc_unicodestr_float:
		push	bp
		mov	bp,sp
		sub	sp,272
		mov	bx,word [bp+4]
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
		jne	..@j12764
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+20]
		push	word [bp+18]
		push	word [bp+16]
		push	word [bp+14]
		push	word [bp+12]
		mov	ax,word [bp+6]
		cwd
		push	dx
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		call	SYSTEM_$$_STR_REAL$SMALLINT$SMALLINT$EXTENDED$TREAL_TYPE$OPENSTRING
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-272]
		push	ax
		lea	ax,[bp-256]
		push	ax
		call	fpc_shortstr_to_unicodestr
		push	word [bp-272]
		call	fpc_unicodestr_assign
..@j12764:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-272]
		push	ax
		call	fpc_unicodestr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j12765
		call	FPC_RERAISE
..@j12765:
		mov	sp,bp
		pop	bp
		ret	18
EXTERN	FPC_RERAISE
EXTERN	fpc_unicodestr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_unicodestr_assign
EXTERN	fpc_shortstr_to_unicodestr
EXTERN	SYSTEM_$$_STR_REAL$SMALLINT$SMALLINT$EXTENDED$TREAL_TYPE$OPENSTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
