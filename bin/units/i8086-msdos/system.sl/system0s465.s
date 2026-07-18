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
	GLOBAL SYSTEM_$$_UNICODECHARTOSTRING$PUNICODECHAR$$UNICODESTRING
SYSTEM_$$_UNICODECHARTOSTRING$PUNICODECHAR$$UNICODESTRING:
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
		jne	..@j11891
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		lea	ax,[bp-16]
		push	ax
		push	word [bp+4]
		call	fpc_pwidechar_to_unicodestr
		mov	bx,word [bp-16]
		test	bx,bx
		je	..@j11903
		mov	bx,word [bx-2]
..@j11903:
		push	bx
		call	SYSTEM_$$_UNICODECHARLENTOSTRING$PUNICODECHAR$SMALLINT$$UNICODESTRING
..@j11891:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-16]
		push	ax
		call	fpc_unicodestr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j11892
		call	FPC_RERAISE
..@j11892:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_unicodestr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_UNICODECHARLENTOSTRING$PUNICODECHAR$SMALLINT$$UNICODESTRING
EXTERN	fpc_pwidechar_to_unicodestr
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
