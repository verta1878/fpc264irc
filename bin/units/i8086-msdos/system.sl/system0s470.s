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
	GLOBAL SYSTEM_$$_UNICODECHARLENTOSTRVAR$PUNICODECHAR$SMALLINT$UNICODESTRING
SYSTEM_$$_UNICODECHARLENTOSTRVAR$PUNICODECHAR$SMALLINT$UNICODESTRING:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	bx,word [bp+4]
		mov	word [bx],0
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
		jne	..@j11980
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-16]
		push	ax
		push	word [bp+8]
		push	word [bp+6]
		call	SYSTEM_$$_UNICODECHARLENTOSTRING$PUNICODECHAR$SMALLINT$$UNICODESTRING
		push	word [bp-16]
		call	fpc_unicodestr_assign
..@j11980:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-16]
		push	ax
		call	fpc_unicodestr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j11981
		call	FPC_RERAISE
..@j11981:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_unicodestr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_unicodestr_assign
EXTERN	SYSTEM_$$_UNICODECHARLENTOSTRING$PUNICODECHAR$SMALLINT$$UNICODESTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
