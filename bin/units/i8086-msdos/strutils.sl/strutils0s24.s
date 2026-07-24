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
	GLOBAL STRUTILS_$$_STRINGREPLACE$crc48A13B48
STRUTILS_$$_STRINGREPLACE$crc48A13B48:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	word [bp-22],0
		mov	word [bp-20],0
		mov	word [bp-18],0
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
		jne	..@j850
		mov	ax,word [bp+12]
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-18]
		push	ax
		push	word [bp+10]
		mov	ax,0
		push	ax
		call	fpc_unicodestr_to_ansistr
		push	word [bp-18]
		lea	ax,[bp-20]
		push	ax
		push	word [bp+8]
		mov	ax,0
		push	ax
		call	fpc_unicodestr_to_ansistr
		push	word [bp-20]
		lea	ax,[bp-22]
		push	ax
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	fpc_unicodestr_to_ansistr
		push	word [bp-22]
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		call	SYSUTILS_$$_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING
		push	word [bp-16]
		call	fpc_ansistr_to_unicodestr
..@j850:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-22]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-20]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-18]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-16]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j851
		call	FPC_RERAISE
..@j851:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_to_unicodestr
EXTERN	SYSUTILS_$$_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING
EXTERN	fpc_unicodestr_to_ansistr
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
