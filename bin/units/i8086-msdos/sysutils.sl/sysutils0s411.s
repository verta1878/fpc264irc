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
	GLOBAL SYSUTILS_$$_GETTEMPDIR$BOOLEAN$$ANSISTRING
SYSUTILS_$$_GETTEMPDIR$BOOLEAN$$ANSISTRING:
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
		jne	..@j13406
		cmp	word [U_$SYSUTILS_$$_ONGETTEMPDIR],0
		jne	..@j13408
		jmp	..@j13409
..@j13408:
		mov	ax,word [bp+6]
		push	ax
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		mov	ax,word [U_$SYSUTILS_$$_ONGETTEMPDIR]
		call	ax
		jmp	..@j13414
..@j13409:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word _$SYSUTILS$_Ld676
		push	ax
		call	SYSUTILS_$$_GETENVIRONMENTVARIABLE$ANSISTRING$$ANSISTRING
		mov	bx,word [bp+6]
		cmp	word [bx],0
		je	..@j13419
		jmp	..@j13420
..@j13419:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word _$SYSUTILS$_Ld677
		push	ax
		call	SYSUTILS_$$_GETENVIRONMENTVARIABLE$ANSISTRING$$ANSISTRING
..@j13420:
..@j13414:
		mov	bx,word [bp+6]
		cmp	word [bx],0
		jne	..@j13425
		jmp	..@j13426
..@j13425:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx]
		call	SYSUTILS_$$_INCLUDETRAILINGPATHDELIMITER$RAWBYTESTRING$$RAWBYTESTRING
		push	word [bp-16]
		call	fpc_ansistr_assign
..@j13426:
..@j13406:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-16]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j13407
		call	FPC_RERAISE
..@j13407:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_assign
EXTERN	SYSUTILS_$$_INCLUDETRAILINGPATHDELIMITER$RAWBYTESTRING$$RAWBYTESTRING
EXTERN	_$SYSUTILS$_Ld677
EXTERN	SYSUTILS_$$_GETENVIRONMENTVARIABLE$ANSISTRING$$ANSISTRING
EXTERN	_$SYSUTILS$_Ld676
EXTERN	U_$SYSUTILS_$$_ONGETTEMPDIR
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
