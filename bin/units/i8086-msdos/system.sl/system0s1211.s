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
	GLOBAL SYSTEM_$$_DO_GETDIR$BYTE$UNICODESTRING
SYSTEM_$$_DO_GETDIR$BYTE$UNICODESTRING:
		push	bp
		mov	bp,sp
		sub	sp,18
		mov	word [bp-2],0
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
		jne	..@j25579
		mov	al,byte [bp+6]
		mov	ah,0
		push	ax
		lea	ax,[bp-2]
		push	ax
		call	SYSTEM_$$_DO_GETDIR$BYTE$RAWBYTESTRING
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-18]
		push	ax
		push	word [bp-2]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-18]
		call	fpc_unicodestr_assign
..@j25579:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-18]
		push	ax
		call	fpc_unicodestr_decr_ref
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j25580
		call	FPC_RERAISE
..@j25580:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	fpc_unicodestr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_unicodestr_assign
EXTERN	fpc_ansistr_to_unicodestr
EXTERN	SYSTEM_$$_DO_GETDIR$BYTE$RAWBYTESTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
