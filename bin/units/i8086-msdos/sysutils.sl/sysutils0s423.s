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
	GLOBAL SYSUTILS_$$_SUPPORTS$IUNKNOWN$TGUID$$BOOLEAN
SYSUTILS_$$_SUPPORTS$IUNKNOWN$TGUID$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,18
		mov	word [bp-4],0
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
		jne	..@j13666
		push	word [bp+6]
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-4]
		push	ax
		call	fpc_intf_decr_ref
		lea	ax,[bp-4]
		push	ax
		call	SYSUTILS_$$_SUPPORTS$IUNKNOWN$TGUID$formal$$BOOLEAN
		mov	byte [bp-1],al
..@j13666:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-4]
		push	ax
		call	fpc_intf_decr_ref
		pop	ax
		test	ax,ax
		je	..@j13667
		call	FPC_RERAISE
..@j13667:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSUTILS_$$_SUPPORTS$IUNKNOWN$TGUID$formal$$BOOLEAN
EXTERN	fpc_intf_decr_ref
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
