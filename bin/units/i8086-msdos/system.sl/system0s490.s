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
	GLOBAL SYSTEM_$$_LOWERCASE$WIDECHAR$$WIDECHAR
SYSTEM_$$_LOWERCASE$WIDECHAR$$WIDECHAR:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	word [bp-4],0
		mov	word [bp-20],0
		mov	ax,1
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-10]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j12395
		lea	ax,[bp-4]
		push	ax
		push	word [bp+4]
		call	fpc_uchar_to_unicodestr
		lea	ax,[bp-20]
		push	ax
		push	word [bp-4]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+44]
		call	ax
		mov	bx,word [bp-20]
		mov	ax,word [bx]
		mov	word [bp-2],ax
..@j12395:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-20]
		push	ax
		call	fpc_unicodestr_decr_ref
		lea	ax,[bp-4]
		push	ax
		call	fpc_unicodestr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j12396
		call	FPC_RERAISE
..@j12396:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	fpc_unicodestr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	fpc_uchar_to_unicodestr
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
