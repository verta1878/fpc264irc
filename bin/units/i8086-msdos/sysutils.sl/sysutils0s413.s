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
	GLOBAL SYSUTILS_$$_GETTEMPFILENAME$ANSISTRING$ANSISTRING$$ANSISTRING
SYSUTILS_$$_GETTEMPFILENAME$ANSISTRING$ANSISTRING$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,30
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
		jne	..@j13443
		cmp	word [U_$SYSUTILS_$$_ONGETTEMPFILE],0
		jne	..@j13445
		jmp	..@j13446
..@j13445:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,word [U_$SYSUTILS_$$_ONGETTEMPFILE]
		call	ax
		jmp	..@j13453
..@j13446:
		cmp	word [bp+6],0
		je	..@j13454
		jmp	..@j13455
..@j13454:
		lea	ax,[bp-4]
		push	ax
		call	SYSUTILS_$$_GETTEMPDIR$$ANSISTRING
		jmp	..@j13458
..@j13455:
		lea	ax,[bp-4]
		push	ax
		push	word [bp+6]
		call	SYSUTILS_$$_INCLUDETRAILINGPATHDELIMITER$RAWBYTESTRING$$RAWBYTESTRING
..@j13458:
		cmp	word [bp+4],0
		je	..@j13463
		jmp	..@j13464
..@j13463:
		lea	ax,[bp-4]
		push	ax
		push	word [bp-4]
		mov	ax,word _$SYSUTILS$_Ld677
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		jmp	..@j13473
..@j13464:
		lea	ax,[bp-4]
		push	ax
		push	word [bp-4]
		push	word [bp+4]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
..@j13473:
		mov	word [bp-2],0
	ALIGN 2
..@j13484:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word _$SYSUTILS$_Ld678
		push	ax
		mov	ax,word [bp-4]
		mov	dx,0
		mov	word [bp-28],ax
		mov	word [bp-26],dx
		mov	word [bp-30],11
		mov	ax,word [bp-2]
		cwd
		mov	word [bp-22],ax
		mov	word [bp-20],dx
		mov	word [bp-24],0
		lea	ax,[bp-30]
		push	ax
		mov	ax,1
		push	ax
		call	SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
		inc	word [bp-2]
		mov	bx,word [bp+8]
		push	word [bx]
		call	SYSUTILS_$$_FILEEXISTS$RAWBYTESTRING$$BOOLEAN
		test	al,al
		jne	..@j13484
		jmp	..@j13486
..@j13486:
..@j13453:
..@j13443:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j13444
		call	FPC_RERAISE
..@j13444:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSUTILS_$$_FILEEXISTS$RAWBYTESTRING$$BOOLEAN
EXTERN	SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
EXTERN	_$SYSUTILS$_Ld678
EXTERN	fpc_ansistr_concat
EXTERN	_$SYSUTILS$_Ld677
EXTERN	SYSUTILS_$$_INCLUDETRAILINGPATHDELIMITER$RAWBYTESTRING$$RAWBYTESTRING
EXTERN	SYSUTILS_$$_GETTEMPDIR$$ANSISTRING
EXTERN	U_$SYSUTILS_$$_ONGETTEMPFILE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
