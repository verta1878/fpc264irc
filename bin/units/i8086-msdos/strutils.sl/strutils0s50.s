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
	GLOBAL STRUTILS_$$_NATURALCOMPARETEXT$ANSISTRING$ANSISTRING$CHAR$CHAR$$SMALLINT
STRUTILS_$$_NATURALCOMPARETEXT$ANSISTRING$ANSISTRING$CHAR$CHAR$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,46
		mov	word [bp-32],0
		mov	word [bp-34],0
		mov	word [bp-46],0
		mov	word [bp-44],0
		lea	ax,[bp-34]
		push	ax
		push	word [TC_$STRUTILS$_$NATURALCOMPARETEXT$crc79D5E46B_$$_defaultTextStr2]
		call	fpc_ansistr_assign
		lea	ax,[bp-32]
		push	ax
		push	word [TC_$STRUTILS$_$NATURALCOMPARETEXT$crc79D5E46B_$$_defaultTextStr1]
		call	fpc_ansistr_assign
		cmp	word [bp+10],0
		jne	..@j1413
		jmp	..@j1412
..@j1413:
		cmp	word [bp+8],0
		jne	..@j1411
		jmp	..@j1412
..@j1411:
		mov	ax,word [bp+10]
		test	ax,ax
		jne	..@j1416
		mov	ax,word FPC_EMPTYCHAR
..@j1416:
		mov	word [bp-20],ax
		mov	ax,word [bp+8]
		test	ax,ax
		jne	..@j1419
		mov	ax,word FPC_EMPTYCHAR
..@j1419:
		mov	word [bp-22],ax
		mov	word [bp-2],0
		jmp	..@j1423
	ALIGN 2
..@j1422:
		mov	word [bp-28],1
		mov	word [bp-30],1
		mov	word [bp-24],0
		mov	word [bp-26],0
		jmp	..@j1434
	ALIGN 2
..@j1433:
		inc	word [bp-20]
		inc	word [bp-24]
..@j1434:
		mov	bx,word [bp-20]
		cmp	byte [bx],32
		je	..@j1433
		jmp	..@j1435
..@j1435:
		jmp	..@j1437
	ALIGN 2
..@j1436:
		inc	word [bp-22]
		inc	word [bp-26]
..@j1437:
		mov	bx,word [bp-22]
		cmp	byte [bx],32
		je	..@j1436
		jmp	..@j1438
..@j1438:
		push	bp
		mov	bx,word [bp-20]
		mov	al,byte [bx]
		mov	ah,0
		push	ax
		call	STRUTILS$_$NATURALCOMPARETEXT$crc79D5E46B_$$_ISNUMBER$CHAR$$BOOLEAN
		test	al,al
		jne	..@j1441
		jmp	..@j1440
..@j1441:
		push	bp
		mov	bx,word [bp-22]
		mov	al,byte [bx]
		mov	ah,0
		push	ax
		call	STRUTILS$_$NATURALCOMPARETEXT$crc79D5E46B_$$_ISNUMBER$CHAR$$BOOLEAN
		test	al,al
		jne	..@j1439
		jmp	..@j1440
..@j1439:
		push	bp
		lea	ax,[bp-20]
		push	ax
		lea	ax,[bp-24]
		push	ax
		call	STRUTILS$_$NATURALCOMPARETEXT$crc79D5E46B_$$_GETINTEGER$PCHAR$SMALLINT$$DOUBLE
		wait fstp	qword [bp-10]
		DB	09bh
		push	bp
		lea	ax,[bp-22]
		push	ax
		lea	ax,[bp-26]
		push	ax
		call	STRUTILS$_$NATURALCOMPARETEXT$crc79D5E46B_$$_GETINTEGER$PCHAR$SMALLINT$$DOUBLE
		wait fstp	qword [bp-18]
		DB	09bh
		wait fld	qword [bp-18]
		wait fld	qword [bp-10]
		wait fcompp
		fstsw	[bp-40]
		mov	ah,byte [bp-39]
		sahf
		jp	..@j1468
		jb	..@j1466
..@j1468:
		jmp	..@j1467
..@j1466:
		mov	word [bp-2],-1
		jmp	..@j1471
..@j1467:
		wait fld	qword [bp-18]
		wait fld	qword [bp-10]
		wait fcompp
		fstsw	[bp-40]
		mov	ah,byte [bp-39]
		sahf
		jp	..@j1474
		ja	..@j1472
..@j1474:
		jmp	..@j1473
..@j1472:
		mov	word [bp-2],1
		jmp	..@j1477
..@j1473:
		mov	ax,word [bp-24]
		mov	dx,word [bp-26]
		sub	ax,dx
		mov	word [bp-40],ax
		mov	word [bp-42],bp
		cmp	word [bp-40],0
		jl	..@j1484
		jmp	..@j1485
..@j1484:
		mov	ax,-1
		jmp	..@j1488
..@j1485:
		cmp	word [bp-40],0
		jg	..@j1489
		jmp	..@j1490
..@j1489:
		mov	ax,1
		jmp	..@j1493
..@j1490:
		mov	ax,0
..@j1493:
..@j1488:
		mov	word [bp-2],ax
..@j1477:
..@j1471:
		dec	word [bp-20]
		dec	word [bp-22]
		jmp	..@j1496
..@j1440:
		push	bp
		call	STRUTILS$_$NATURALCOMPARETEXT$crc79D5E46B_$$_GETCHARS
		push	word [bp-32]
		push	word [bp-34]
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j1499
		cmp	cx,0
		jne	..@j1499
		jmp	..@j1500
..@j1499:
		lea	ax,[bp-44]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-44]
		push	ax
		push	word [bp-34]
		call	fpc_ansistr_assign
		lea	ax,[bp-46]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-46]
		push	ax
		push	word [bp-32]
		call	fpc_ansistr_assign
		push	word [bp-46]
		push	word [bp-44]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+20]
		call	ax
		mov	word [bp-2],ax
		jmp	..@j1521
..@j1500:
		mov	word [bp-2],0
..@j1521:
..@j1496:
		cmp	word [bp-2],0
		jne	..@j1524
		jmp	..@j1525
..@j1524:
		jmp	..@j1424
..@j1525:
		mov	ax,word [bp-28]
		add	word [bp-20],ax
		mov	ax,word [bp-30]
		add	word [bp-22],ax
..@j1423:
		mov	bx,word [bp-20]
		cmp	byte [bx],0
		je	..@j1424
		jmp	..@j1526
..@j1526:
		mov	bx,word [bp-22]
		cmp	byte [bx],0
		je	..@j1424
		jmp	..@j1422
..@j1424:
..@j1412:
		mov	bx,word [bp+10]
		test	bx,bx
		je	..@j1529
		mov	bx,word [bx-2]
..@j1529:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-42],cx
		mov	word [bp-40],ax
		wait fild	dword [bp-42]
		wait fstp	qword [bp-10]
		DB	09bh
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j1532
		mov	bx,word [bx-2]
..@j1532:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-42],cx
		mov	word [bp-40],ax
		wait fild	dword [bp-42]
		wait fstp	qword [bp-18]
		DB	09bh
		cmp	word [bp-2],0
		je	..@j1535
		jmp	..@j1534
..@j1535:
		wait fld	qword [bp-18]
		wait fld	qword [bp-10]
		wait fcompp
		fstsw	[bp-40]
		mov	ah,byte [bp-39]
		sahf
		jp	..@j1533
		jne	..@j1533
		jmp	..@j1534
..@j1533:
		wait fld	qword [bp-18]
		wait fld	qword [bp-10]
		wait fcompp
		fstsw	[bp-40]
		mov	ah,byte [bp-39]
		sahf
		jp	..@j1538
		jb	..@j1536
..@j1538:
		jmp	..@j1537
..@j1536:
		mov	word [bp-2],-1
		jmp	..@j1541
..@j1537:
		mov	word [bp-2],1
..@j1541:
..@j1534:
		lea	ax,[bp-46]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-44]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-32]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-34]
		push	ax
		call	fpc_ansistr_decr_ref
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	fpc_ansistr_decr_ref
EXTERN	fpc_ansistr_compare_equal
EXTERN	STRUTILS$_$NATURALCOMPARETEXT$crc79D5E46B_$$_GETCHARS
EXTERN	STRUTILS$_$NATURALCOMPARETEXT$crc79D5E46B_$$_GETINTEGER$PCHAR$SMALLINT$$DOUBLE
EXTERN	STRUTILS$_$NATURALCOMPARETEXT$crc79D5E46B_$$_ISNUMBER$CHAR$$BOOLEAN
EXTERN	FPC_EMPTYCHAR
EXTERN	TC_$STRUTILS$_$NATURALCOMPARETEXT$crc79D5E46B_$$_defaultTextStr1
EXTERN	fpc_ansistr_assign
EXTERN	TC_$STRUTILS$_$NATURALCOMPARETEXT$crc79D5E46B_$$_defaultTextStr2
