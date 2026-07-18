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
	GLOBAL VARUTILS_$$_VARIANTTOCURRENCY$TVARDATA$$CURRENCY
VARUTILS_$$_VARIANTTOCURRENCY$TVARDATA$$CURRENCY:
		push	bp
		mov	bp,sp
		sub	sp,28
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,-4096
		test	ax,ax
		je	..@j1443
		sub	ax,16384
		je	..@j1444
		jmp	..@j1442
..@j1443:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		test	ax,ax
		je	..@j1447
		sub	ax,2
		je	..@j1448
		dec	ax
		je	..@j1450
		dec	ax
		je	..@j1451
		dec	ax
		je	..@j1452
		dec	ax
		je	..@j1454
		dec	ax
		je	..@j1453
		dec	ax
		je	..@j1462
		sub	ax,3
		je	..@j1455
		dec	ax
		je	..@j1456
		sub	ax,4
		je	..@j1449
		dec	ax
		je	..@j1457
		dec	ax
		je	..@j1458
		dec	ax
		je	..@j1459
		dec	ax
		je	..@j1460
		dec	ax
		je	..@j1461
		sub	ax,235
		je	..@j1463
		sub	ax,2
		je	..@j1464
		jmp	..@j1446
..@j1447:
		wait fldz
		wait fistp	qword [bp-8]
		DB	09bh
		jmp	..@j1445
..@j1448:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		cwd
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		wait fild	dword [bp-12]
		wait fild	qword [_$VARUTILS$_Ld1]
		wait fmulp	st1,st0
		wait fistp	qword [bp-8]
		DB	09bh
		jmp	..@j1445
..@j1449:
		mov	bx,word [bp+4]
		mov	al,byte [bx+8]
		cbw
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-12],cx
		mov	word [bp-10],ax
		wait fild	dword [bp-12]
		wait fild	qword [_$VARUTILS$_Ld1]
		wait fmulp	st1,st0
		wait fistp	qword [bp-8]
		DB	09bh
		jmp	..@j1445
..@j1450:
		mov	bx,word [bp+4]
		wait fild	dword [bx+8]
		wait fild	qword [_$VARUTILS$_Ld1]
		wait fmulp	st1,st0
		wait fistp	qword [bp-8]
		DB	09bh
		jmp	..@j1445
..@j1451:
		mov	bx,word [bp+4]
		wait fld	dword [_$VARUTILS$_Ld7]
		wait fmul	dword [bx+8]
		wait fild	qword [TC_$SYSUTILS_$$_MAXCURRENCY]
		wait fcompp
		fstsw	[bp-10]
		mov	ah,byte [bp-9]
		sahf
		jp	..@j1476
		jb	..@j1473
..@j1476:
		jmp	..@j1475
..@j1475:
		mov	bx,word [bp+4]
		wait fld	dword [_$VARUTILS$_Ld7]
		wait fmul	dword [bx+8]
		wait fild	qword [TC_$SYSUTILS_$$_MINCURRENCY]
		wait fcompp
		fstsw	[bp-10]
		mov	ah,byte [bp-9]
		sahf
		jp	..@j1477
		ja	..@j1473
..@j1477:
		jmp	..@j1474
..@j1473:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,6
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j1474:
		mov	bx,word [bp+4]
		wait fld	dword [_$VARUTILS$_Ld7]
		wait fmul	dword [bx+8]
		wait fistp	qword [bp-8]
		DB	09bh
		jmp	..@j1445
..@j1452:
		mov	bx,word [bp+4]
		wait fld	qword [_$VARUTILS$_Ld8]
		wait fmul	qword [bx+8]
		wait fild	qword [TC_$SYSUTILS_$$_MAXCURRENCY]
		wait fcompp
		fstsw	[bp-10]
		mov	ah,byte [bp-9]
		sahf
		jp	..@j1487
		jb	..@j1484
..@j1487:
		jmp	..@j1486
..@j1486:
		mov	bx,word [bp+4]
		wait fld	qword [_$VARUTILS$_Ld8]
		wait fmul	qword [bx+8]
		wait fild	qword [TC_$SYSUTILS_$$_MINCURRENCY]
		wait fcompp
		fstsw	[bp-10]
		mov	ah,byte [bp-9]
		sahf
		jp	..@j1488
		ja	..@j1484
..@j1488:
		jmp	..@j1485
..@j1484:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,6
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j1485:
		mov	bx,word [bp+4]
		wait fld	qword [_$VARUTILS$_Ld8]
		wait fmul	qword [bx+8]
		wait fistp	qword [bp-8]
		DB	09bh
		jmp	..@j1445
..@j1453:
		mov	bx,word [bp+4]
		wait fld	qword [_$VARUTILS$_Ld8]
		wait fmul	qword [bx+8]
		wait fild	qword [TC_$SYSUTILS_$$_MAXCURRENCY]
		wait fcompp
		fstsw	[bp-10]
		mov	ah,byte [bp-9]
		sahf
		jp	..@j1498
		jb	..@j1495
..@j1498:
		jmp	..@j1497
..@j1497:
		mov	bx,word [bp+4]
		wait fld	qword [_$VARUTILS$_Ld8]
		wait fmul	qword [bx+8]
		wait fild	qword [TC_$SYSUTILS_$$_MINCURRENCY]
		wait fcompp
		fstsw	[bp-10]
		mov	ah,byte [bp-9]
		sahf
		jp	..@j1499
		ja	..@j1495
..@j1499:
		jmp	..@j1496
..@j1495:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,6
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j1496:
		mov	bx,word [bp+4]
		wait fld	qword [_$VARUTILS$_Ld8]
		wait fmul	qword [bx+8]
		wait fistp	qword [bp-8]
		DB	09bh
		jmp	..@j1445
..@j1454:
		mov	bx,word [bp+4]
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bx+8]
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j1445
..@j1455:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		cwd
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		wait fild	dword [bp-12]
		wait fild	qword [_$VARUTILS$_Ld1]
		wait fmulp	st1,st0
		wait fistp	qword [bp-8]
		DB	09bh
		jmp	..@j1445
..@j1456:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		push	ax
		call	VARUTILS_$$_VARIANTTOCURRENCY$TVARDATA$$CURRENCY
		wait fistp	qword [bp-8]
		DB	09bh
		jmp	..@j1445
..@j1457:
		mov	bx,word [bp+4]
		mov	ax,0
		mov	dl,byte [bx+8]
		mov	dh,0
		mov	word [bp-12],dx
		mov	word [bp-10],ax
		wait fild	dword [bp-12]
		wait fild	qword [_$VARUTILS$_Ld1]
		wait fmulp	st1,st0
		wait fistp	qword [bp-8]
		DB	09bh
		jmp	..@j1445
..@j1458:
		mov	bx,word [bp+4]
		mov	dx,word [bx+8]
		mov	ax,0
		mov	word [bp-12],dx
		mov	word [bp-10],ax
		wait fild	dword [bp-12]
		wait fild	qword [_$VARUTILS$_Ld1]
		wait fmulp	st1,st0
		wait fistp	qword [bp-8]
		DB	09bh
		jmp	..@j1445
..@j1459:
		mov	bx,word [bp+4]
		mov	dx,word [bx+8]
		mov	ax,word [bx+10]
		mov	word [bp-20],dx
		mov	word [bp-18],ax
		mov	word [bp-16],0
		mov	word [bp-14],0
		wait fild	qword [bp-20]
		wait fild	qword [_$VARUTILS$_Ld1]
		wait fmulp	st1,st0
		wait fistp	qword [bp-8]
		DB	09bh
		jmp	..@j1445
..@j1460:
		mov	bx,word [bp+4]
		wait fild	qword [bx+8]
		wait fild	qword [_$VARUTILS$_Ld1]
		wait fmulp	st1,st0
		wait fistp	qword [bp-8]
		DB	09bh
		jmp	..@j1445
..@j1461:
		mov	bx,word [bp+4]
		test	byte [bx+15],128
		wait fild	qword [bx+8]
		je	..@j1526
		wait fadd	dword [_$VARUTILS$_Ld9]
..@j1526:
		wait fild	qword [_$VARUTILS$_Ld1]
		wait fmulp	st1,st0
		wait fistp	qword [bp-8]
		DB	09bh
		jmp	..@j1445
..@j1462:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_WSTRTOCURRENCY$POINTER$$CURRENCY
		wait fistp	qword [bp-8]
		DB	09bh
		jmp	..@j1445
..@j1463:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_LSTRTOCURRENCY$POINTER$$CURRENCY
		wait fistp	qword [bp-8]
		DB	09bh
		jmp	..@j1445
..@j1464:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_USTRTOCURRENCY$POINTER$$CURRENCY
		wait fistp	qword [bp-8]
		DB	09bh
		jmp	..@j1445
..@j1446:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,6
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j1445:
		jmp	..@j1441
..@j1444:
		mov	bx,word [bp+4]
		cmp	word [bx+8],0
		jne	..@j1543
		jmp	..@j1544
..@j1543:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,4095
		cmp	ax,2
		jb	..@j1546
		sub	ax,2
		je	..@j1547
		dec	ax
		je	..@j1549
		dec	ax
		je	..@j1550
		dec	ax
		je	..@j1551
		dec	ax
		je	..@j1553
		dec	ax
		je	..@j1552
		dec	ax
		je	..@j1561
		sub	ax,3
		je	..@j1554
		dec	ax
		je	..@j1555
		sub	ax,4
		je	..@j1548
		dec	ax
		je	..@j1556
		dec	ax
		je	..@j1557
		dec	ax
		je	..@j1558
		dec	ax
		je	..@j1559
		dec	ax
		je	..@j1560
		sub	ax,235
		je	..@j1562
		sub	ax,2
		je	..@j1563
		jmp	..@j1546
..@j1547:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		cwd
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		wait fild	dword [bp-12]
		wait fild	qword [_$VARUTILS$_Ld1]
		wait fmulp	st1,st0
		wait fistp	qword [bp-8]
		DB	09bh
		jmp	..@j1545
..@j1548:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	al,byte [bx]
		cbw
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-12],cx
		mov	word [bp-10],ax
		wait fild	dword [bp-12]
		wait fild	qword [_$VARUTILS$_Ld1]
		wait fmulp	st1,st0
		wait fistp	qword [bp-8]
		DB	09bh
		jmp	..@j1545
..@j1549:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		cwd
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		wait fild	dword [bp-12]
		wait fild	qword [_$VARUTILS$_Ld1]
		wait fmulp	st1,st0
		wait fistp	qword [bp-8]
		DB	09bh
		jmp	..@j1545
..@j1550:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fld	dword [_$VARUTILS$_Ld7]
		wait fmul	dword [bx]
		wait fild	qword [TC_$SYSUTILS_$$_MAXCURRENCY]
		wait fcompp
		fstsw	[bp-10]
		mov	ah,byte [bp-9]
		sahf
		jp	..@j1573
		jb	..@j1570
..@j1573:
		jmp	..@j1572
..@j1572:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fld	dword [_$VARUTILS$_Ld7]
		wait fmul	dword [bx]
		wait fild	qword [TC_$SYSUTILS_$$_MINCURRENCY]
		wait fcompp
		fstsw	[bp-10]
		mov	ah,byte [bp-9]
		sahf
		jp	..@j1574
		ja	..@j1570
..@j1574:
		jmp	..@j1571
..@j1570:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,6
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j1571:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fld	dword [_$VARUTILS$_Ld7]
		wait fmul	dword [bx]
		wait fistp	qword [bp-8]
		DB	09bh
		jmp	..@j1545
..@j1551:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fld	qword [_$VARUTILS$_Ld8]
		wait fmul	qword [bx]
		wait fild	qword [TC_$SYSUTILS_$$_MAXCURRENCY]
		wait fcompp
		fstsw	[bp-10]
		mov	ah,byte [bp-9]
		sahf
		jp	..@j1584
		jb	..@j1581
..@j1584:
		jmp	..@j1583
..@j1583:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fld	qword [_$VARUTILS$_Ld8]
		wait fmul	qword [bx]
		wait fild	qword [TC_$SYSUTILS_$$_MINCURRENCY]
		wait fcompp
		fstsw	[bp-10]
		mov	ah,byte [bp-9]
		sahf
		jp	..@j1585
		ja	..@j1581
..@j1585:
		jmp	..@j1582
..@j1581:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,6
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j1582:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fld	qword [_$VARUTILS$_Ld8]
		wait fmul	qword [bx]
		wait fistp	qword [bp-8]
		DB	09bh
		jmp	..@j1545
..@j1552:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fld	qword [_$VARUTILS$_Ld8]
		wait fmul	qword [bx]
		wait fild	qword [TC_$SYSUTILS_$$_MAXCURRENCY]
		wait fcompp
		fstsw	[bp-10]
		mov	ah,byte [bp-9]
		sahf
		jp	..@j1595
		jb	..@j1592
..@j1595:
		jmp	..@j1594
..@j1594:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fld	qword [_$VARUTILS$_Ld8]
		wait fmul	qword [bx]
		wait fild	qword [TC_$SYSUTILS_$$_MINCURRENCY]
		wait fcompp
		fstsw	[bp-10]
		mov	ah,byte [bp-9]
		sahf
		jp	..@j1596
		ja	..@j1592
..@j1596:
		jmp	..@j1593
..@j1592:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,6
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j1593:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fld	qword [_$VARUTILS$_Ld8]
		wait fmul	qword [bx]
		wait fistp	qword [bp-8]
		DB	09bh
		jmp	..@j1545
..@j1553:
		mov	bx,word [bp+4]
		mov	si,word [bx+8]
		lea	di,[bp-8]
		push	ss
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j1545
..@j1554:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		cwd
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		wait fild	dword [bp-12]
		wait fild	qword [_$VARUTILS$_Ld1]
		wait fmulp	st1,st0
		wait fistp	qword [bp-8]
		DB	09bh
		jmp	..@j1545
..@j1555:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		push	ax
		call	VARUTILS_$$_VARIANTTOCURRENCY$TVARDATA$$CURRENCY
		wait fistp	qword [bp-8]
		DB	09bh
		jmp	..@j1545
..@j1556:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,0
		mov	dl,byte [bx]
		mov	dh,0
		mov	word [bp-12],dx
		mov	word [bp-10],ax
		wait fild	dword [bp-12]
		wait fild	qword [_$VARUTILS$_Ld1]
		wait fmulp	st1,st0
		wait fistp	qword [bp-8]
		DB	09bh
		jmp	..@j1545
..@j1557:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		mov	dx,0
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		wait fild	dword [bp-12]
		wait fild	qword [_$VARUTILS$_Ld1]
		wait fmulp	st1,st0
		wait fistp	qword [bp-8]
		DB	09bh
		jmp	..@j1545
..@j1558:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	dx,word [bx]
		mov	ax,word [bx+2]
		mov	word [bp-28],dx
		mov	word [bp-26],ax
		mov	word [bp-24],0
		mov	word [bp-22],0
		wait fild	qword [bp-28]
		wait fild	qword [_$VARUTILS$_Ld1]
		wait fmulp	st1,st0
		wait fistp	qword [bp-8]
		DB	09bh
		jmp	..@j1545
..@j1559:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fild	qword [bx]
		wait fild	qword [_$VARUTILS$_Ld1]
		wait fmulp	st1,st0
		wait fistp	qword [bp-8]
		DB	09bh
		jmp	..@j1545
..@j1560:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		test	byte [bx+7],128
		wait fild	qword [bx]
		je	..@j1623
		wait fadd	dword [_$VARUTILS$_Ld10]
..@j1623:
		wait fild	qword [_$VARUTILS$_Ld1]
		wait fmulp	st1,st0
		wait fistp	qword [bp-8]
		DB	09bh
		jmp	..@j1545
..@j1561:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	VARUTILS_$$_WSTRTOCURRENCY$POINTER$$CURRENCY
		wait fistp	qword [bp-8]
		DB	09bh
		jmp	..@j1545
..@j1562:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	VARUTILS_$$_LSTRTOCURRENCY$POINTER$$CURRENCY
		wait fistp	qword [bp-8]
		DB	09bh
		jmp	..@j1545
..@j1563:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	VARUTILS_$$_USTRTOCURRENCY$POINTER$$CURRENCY
		wait fistp	qword [bp-8]
		DB	09bh
		jmp	..@j1545
..@j1546:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,6
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j1545:
		jmp	..@j1640
..@j1544:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,6
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j1640:
		jmp	..@j1441
..@j1442:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,6
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j1441:
		wait fild	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	_$VARUTILS$_Ld10
EXTERN	VARUTILS_$$_USTRTOCURRENCY$POINTER$$CURRENCY
EXTERN	VARUTILS_$$_LSTRTOCURRENCY$POINTER$$CURRENCY
EXTERN	VARUTILS_$$_WSTRTOCURRENCY$POINTER$$CURRENCY
EXTERN	_$VARUTILS$_Ld9
EXTERN	_$VARUTILS$_Ld8
EXTERN	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
EXTERN	TC_$SYSUTILS_$$_MINCURRENCY
EXTERN	TC_$SYSUTILS_$$_MAXCURRENCY
EXTERN	_$VARUTILS$_Ld7
EXTERN	_$VARUTILS$_Ld1
