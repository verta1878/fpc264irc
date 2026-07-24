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
	GLOBAL SYSTEM_$$_assign$UCS4STRING$$VARIANT
SYSTEM_$$_assign$UCS4STRING$$VARIANT:
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
		jne	..@j16049
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_UCS4STRINGTOWIDESTRING$UCS4STRING$$WIDESTRING
		push	word [bp-16]
		mov	ax,word [U_$SYSTEM_$$_VARIANTMANAGER+44]
		call	ax
..@j16049:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-16]
		push	ax
		call	fpc_unicodestr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j16050
		call	FPC_RERAISE
..@j16050:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_unicodestr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	U_$SYSTEM_$$_VARIANTMANAGER
EXTERN	SYSTEM_$$_UCS4STRINGTOWIDESTRING$UCS4STRING$$WIDESTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
