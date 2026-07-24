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
	GLOBAL SYSUTILS_$$_TEXTTOFLOAT$PCHAR$formal$TFLOATVALUE$TFORMATSETTINGS$$BOOLEAN
SYSUTILS_$$_TEXTTOFLOAT$PCHAR$formal$TFLOATVALUE$TFORMATSETTINGS$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,52
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
		jne	..@j5506
		lea	ax,[bp-8]
		push	ax
		push	word [bp+12]
		call	SYSUTILS_$$_STRPAS$PCHAR$$ANSISTRING
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	al,byte [bx+2]
		cmp	al,byte [si+3]
		jne	..@j5514
		jmp	..@j5513
..@j5514:
		mov	bx,word [bp+4]
		mov	al,byte [bx+2]
		mov	ah,0
		push	ax
		push	word [bp-8]
		call	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
		test	ax,ax
		jne	..@j5512
		jmp	..@j5513
..@j5512:
		mov	byte [bp-1],0
		jmp	..@j5506
..@j5513:
		mov	bx,word [bp+4]
		cmp	byte [bx+3],46
		jne	..@j5523
		jmp	..@j5522
..@j5523:
		mov	ax,46
		push	ax
		push	word [bp-8]
		call	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
		test	ax,ax
		jne	..@j5521
		jmp	..@j5522
..@j5521:
		mov	byte [bp-1],0
		jmp	..@j5506
..@j5522:
		mov	bx,word [bp+4]
		mov	al,byte [bx+3]
		mov	ah,0
		push	ax
		push	word [bp-8]
		call	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
		mov	word [bp-6],ax
		cmp	word [bp-6],0
		jne	..@j5536
		jmp	..@j5537
..@j5536:
		lea	ax,[bp-8]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	si,word [bp-6]
		mov	byte [bx+si-1],46
..@j5537:
		lea	ax,[bp-8]
		push	ax
		lea	ax,[bp-24]
		push	ax
		push	word [bp-8]
		call	SYSUTILS_$$_TRIM$ANSISTRING$$ANSISTRING
		push	word [bp-24]
		call	fpc_ansistr_assign
		mov	ax,1
		push	ax
		lea	ax,[bp-36]
		push	ax
		lea	ax,[bp-30]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j5552
		mov	dx,word [bp+6]
		mov	ax,word [bp+8]
		test	ax,ax
		jne	..@j5564
		test	dx,dx
		je	..@j5559
..@j5564:
		test	ax,ax
		jne	..@j5565
		cmp	dx,1
		je	..@j5558
..@j5565:
		test	ax,ax
		jne	..@j5566
		cmp	dx,2
		je	..@j5561
..@j5566:
		test	ax,ax
		jne	..@j5567
		cmp	dx,3
		je	..@j5563
..@j5567:
		test	ax,ax
		jne	..@j5568
		cmp	dx,4
		je	..@j5560
..@j5568:
		test	ax,ax
		jne	..@j5569
		cmp	dx,5
		je	..@j5562
..@j5569:
		jmp	..@j5557
..@j5558:
		push	word [bp-8]
		lea	ax,[bp-4]
		push	ax
		call	fpc_val_real_ansistr
		wait fld	tword [_$SYSUTILS$_Ld626]
		wait fmulp	st1,st0
		mov	bx,word [bp+10]
		wait fistp	qword [bx]
		DB	09bh
		jmp	..@j5556
..@j5559:
		push	word [bp-8]
		lea	ax,[bp-4]
		push	ax
		call	fpc_val_real_ansistr
		mov	bx,word [bp+10]
		wait fstp	tword [bx]
		DB	09bh
		jmp	..@j5556
..@j5560:
		push	word [bp-8]
		lea	ax,[bp-4]
		push	ax
		call	fpc_val_real_ansistr
		wait fstp	qword [bp-46]
		DB	09bh
		wait fld	qword [bp-46]
		mov	bx,word [bp+10]
		wait fstp	qword [bx]
		DB	09bh
		jmp	..@j5556
..@j5561:
		push	word [bp-8]
		lea	ax,[bp-4]
		push	ax
		call	fpc_val_real_ansistr
		wait fstp	dword [bp-42]
		DB	09bh
		wait fld	dword [bp-42]
		mov	bx,word [bp+10]
		wait fstp	dword [bx]
		DB	09bh
		jmp	..@j5556
..@j5562:
		push	word [bp-8]
		lea	ax,[bp-4]
		push	ax
		call	fpc_val_real_ansistr
		mov	bx,word [bp+10]
		wait fistp	qword [bx]
		DB	09bh
		jmp	..@j5556
..@j5563:
		push	word [bp-8]
		lea	ax,[bp-4]
		push	ax
		call	fpc_val_real_ansistr
		wait fstp	qword [bp-46]
		DB	09bh
		wait fld	qword [bp-46]
		mov	bx,word [bp+10]
		wait fstp	qword [bx]
		DB	09bh
		jmp	..@j5556
..@j5557:
..@j5556:
..@j5552:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j5554
		mov	ax,1
		push	ax
		lea	ax,[bp-52]
		push	ax
		lea	ax,[bp-44]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j5606
		mov	word [bp-4],1
..@j5606:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j5609
		call	FPC_RAISE_NESTED
..@j5609:
		call	FPC_DONEEXCEPTION
		jmp	..@j5554
..@j5554:
		cmp	word [bp-4],0
		mov	al,0
		jne	..@j5612
		inc	ax
..@j5612:
		mov	byte [bp-1],al
..@j5506:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-24]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-8]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j5507
		call	FPC_RERAISE
..@j5507:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	FPC_POPADDRSTACK
EXTERN	_$SYSUTILS$_Ld626
EXTERN	fpc_val_real_ansistr
EXTERN	fpc_ansistr_assign
EXTERN	SYSUTILS_$$_TRIM$ANSISTRING$$ANSISTRING
EXTERN	fpc_ansistr_unique
EXTERN	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
EXTERN	SYSUTILS_$$_STRPAS$PCHAR$$ANSISTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
