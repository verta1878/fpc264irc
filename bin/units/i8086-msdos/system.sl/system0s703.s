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
	GLOBAL SYSTEM_$$_assign$VARIANT$$UTF8STRING
SYSTEM_$$_assign$VARIANT$$UTF8STRING:
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
		jne	..@j16228
		lea	ax,[bp-2]
		push	ax
		sub	sp,16
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,8
		rep
		movsw
		mov	ax,word [U_$SYSTEM_$$_VARIANTMANAGER+18]
		call	ax
		mov	ax,word [bp+20]
		push	ax
		push	word [bp-2]
		call	SYSTEM_$$_UTF8ENCODE$UNICODESTRING$$RAWBYTESTRING
..@j16228:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-2]
		push	ax
		call	fpc_unicodestr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j16229
		call	FPC_RERAISE
..@j16229:
		mov	sp,bp
		pop	bp
		ret	18
EXTERN	FPC_RERAISE
EXTERN	fpc_unicodestr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_UTF8ENCODE$UNICODESTRING$$RAWBYTESTRING
EXTERN	U_$SYSTEM_$$_VARIANTMANAGER
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
