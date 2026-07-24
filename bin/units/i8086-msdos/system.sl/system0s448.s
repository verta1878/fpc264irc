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
	GLOBAL fpc_uchar_to_shortstr
fpc_uchar_to_shortstr:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	word [bp-2],0
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
		jne	..@j11355
		lea	ax,[bp+4]
		push	ax
		lea	ax,[bp-2]
		push	ax
		push	word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		mov	ax,1
		push	ax
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER]
		call	ax
		mov	ax,word [bp+6]
		push	ax
		mov	ax,255
		push	ax
		push	word [bp-2]
		call	fpc_ansistr_to_shortstr
..@j11355:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j11356
		call	FPC_RERAISE
..@j11356:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_to_shortstr
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
