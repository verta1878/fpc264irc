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
	GLOBAL SYSUTILS_$$_TEXTTOFLOAT$PCHAR$EXTENDED$TFORMATSETTINGS$$BOOLEAN
SYSUTILS_$$_TEXTTOFLOAT$PCHAR$EXTENDED$TFORMATSETTINGS$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,24
		mov	word [bp-8],0
		mov	word [bp-24],0
		mov	ax,1
		push	ax
		lea	ax,[bp-20]
		push	ax
		lea	ax,[bp-14]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j5429
		lea	ax,[bp-8]
		push	ax
		push	word [bp+8]
		call	SYSUTILS_$$_STRPAS$PCHAR$$ANSISTRING
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	al,byte [bx+2]
		cmp	al,byte [si+3]
		jne	..@j5437
		jmp	..@j5436
..@j5437:
		mov	bx,word [bp+4]
		mov	al,byte [bx+2]
		mov	ah,0
		push	ax
		push	word [bp-8]
		call	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
		test	ax,ax
		jne	..@j5435
		jmp	..@j5436
..@j5435:
		mov	byte [bp-1],0
		jmp	..@j5429
..@j5436:
		mov	bx,word [bp+4]
		cmp	byte [bx+3],46
		jne	..@j5446
		jmp	..@j5445
..@j5446:
		mov	ax,46
		push	ax
		push	word [bp-8]
		call	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
		test	ax,ax
		jne	..@j5444
		jmp	..@j5445
..@j5444:
		mov	byte [bp-1],0
		jmp	..@j5429
..@j5445:
		mov	bx,word [bp+4]
		mov	al,byte [bx+3]
		mov	ah,0
		push	ax
		push	word [bp-8]
		call	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
		mov	word [bp-6],ax
		cmp	word [bp-6],0
		jne	..@j5459
		jmp	..@j5460
..@j5459:
		lea	ax,[bp-8]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	si,word [bp-6]
		mov	byte [bx+si-1],46
..@j5460:
		lea	ax,[bp-24]
		push	ax
		push	word [bp-8]
		call	SYSUTILS_$$_TRIM$ANSISTRING$$ANSISTRING
		push	word [bp-24]
		lea	ax,[bp-4]
		push	ax
		call	fpc_val_real_ansistr
		mov	bx,word [bp+6]
		wait fstp	tword [bx]
		DB	09bh
		cmp	word [bp-4],0
		mov	al,0
		jne	..@j5477
		inc	ax
..@j5477:
		mov	byte [bp-1],al
..@j5429:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-24]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-8]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j5430
		call	FPC_RERAISE
..@j5430:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_val_real_ansistr
EXTERN	SYSUTILS_$$_TRIM$ANSISTRING$$ANSISTRING
EXTERN	fpc_ansistr_unique
EXTERN	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
EXTERN	SYSUTILS_$$_STRPAS$PCHAR$$ANSISTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
