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
	GLOBAL SYSUTILS_$$_GETENVIRONMENTVARIABLE$UNICODESTRING$$UNICODESTRING
SYSUTILS_$$_GETENVIRONMENTVARIABLE$UNICODESTRING$$UNICODESTRING:
		push	bp
		mov	bp,sp
		sub	sp,18
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
		jne	..@j13260
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-18]
		push	ax
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	fpc_unicodestr_to_ansistr
		push	word [bp-18]
		call	SYSUTILS_$$_GETENVIRONMENTVARIABLE$ANSISTRING$$ANSISTRING
		push	word [bp-16]
		call	fpc_ansistr_to_unicodestr
..@j13260:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-18]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-16]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j13261
		call	FPC_RERAISE
..@j13261:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_to_unicodestr
EXTERN	SYSUTILS_$$_GETENVIRONMENTVARIABLE$ANSISTRING$$ANSISTRING
EXTERN	fpc_unicodestr_to_ansistr
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
