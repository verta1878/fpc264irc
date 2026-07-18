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
	GLOBAL SYSTEM_$$_POS$ANSISTRING$VARIANT$$SMALLINT
SYSTEM_$$_POS$ANSISTRING$VARIANT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,18
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
		jne	..@j16953
		push	word [bp+20]
		lea	ax,[bp-18]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-18]
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
		mov	ax,word [U_$SYSTEM_$$_VARIANTMANAGER+16]
		call	ax
		push	word [bp-18]
		call	SYSTEM_$$_POS$RAWBYTESTRING$RAWBYTESTRING$$SMALLINT
		mov	word [bp-2],ax
..@j16953:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-18]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j16954
		call	FPC_RERAISE
..@j16954:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	18
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_POS$RAWBYTESTRING$RAWBYTESTRING$$SMALLINT
EXTERN	U_$SYSTEM_$$_VARIANTMANAGER
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
