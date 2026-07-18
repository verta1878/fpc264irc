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
	GLOBAL OBJECTS$_$TMEMORYSTREAM_$__$$_CHANGELISTSIZE$LONGINT$$BOOLEAN
OBJECTS$_$TMEMORYSTREAM_$__$$_CHANGELISTSIZE$LONGINT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	bx,word [bp+8]
		mov	dx,word [bx+15]
		mov	ax,word [bx+17]
		cmp	ax,word [bp+6]
		jne	..@j1492
		cmp	dx,word [bp+4]
		jne	..@j1492
		jmp	..@j1493
		jmp	..@j1493
..@j1492:
		mov	byte [bp-1],0
		mov	dx,word [bp+4]
		mov	ax,word [bp+6]
		cmp	ax,0
		jg	..@j1496
		jl	..@j1497
		cmp	dx,8192
		ja	..@j1496
		jmp	..@j1497
..@j1496:
		jmp	..@j1490
..@j1497:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		jne	..@j1498
		cmp	ax,0
		jne	..@j1498
		jmp	..@j1499
..@j1498:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		shl	ax,1
		rcl	dx,1
		mov	word [bp-10],ax
		mov	word [bp-8],dx
		lea	ax,[bp-12]
		push	ax
		push	word [bp-10]
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		mov	ax,word [bp-12]
		push	ax
		push	word [bp-10]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
		mov	bx,word [bp+8]
		mov	dx,word [bx+15]
		mov	ax,word [bx+17]
		cmp	ax,0
		jne	..@j1514
		cmp	dx,0
		jne	..@j1514
		jmp	..@j1513
..@j1514:
		mov	bx,word [bp+8]
		cmp	word [bx+25],0
		jne	..@j1512
		jmp	..@j1513
..@j1512:
		mov	bx,word [bp+8]
		mov	dx,word [bx+15]
		mov	ax,word [bx+17]
		cmp	ax,word [bp+6]
		jl	..@j1515
		jg	..@j1516
		cmp	dx,word [bp+4]
		jbe	..@j1515
		jmp	..@j1516
		jmp	..@j1516
..@j1515:
		mov	bx,word [bp+8]
		mov	ax,word [bx+25]
		push	ax
		mov	ax,word [bp-12]
		push	ax
		mov	bx,word [bp+8]
		mov	dx,word [bx+15]
		mov	ax,word [bx+17]
		shl	dx,1
		rcl	ax,1
		push	dx
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		jmp	..@j1523
..@j1516:
		mov	bx,word [bp+8]
		mov	ax,word [bx+25]
		push	ax
		mov	ax,word [bp-12]
		push	ax
		push	word [bp-10]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j1523:
..@j1513:
		jmp	..@j1530
..@j1499:
		mov	word [bp-12],0
..@j1530:
		mov	bx,word [bp+8]
		mov	dx,word [bx+15]
		mov	ax,word [bx+17]
		cmp	ax,word [bp+6]
		jg	..@j1533
		jl	..@j1534
		cmp	dx,word [bp+4]
		ja	..@j1533
		jmp	..@j1534
		jmp	..@j1534
..@j1533:
		mov	ax,word [bp+4]
		mov	word [bp-20],ax
		mov	ax,word [bp+6]
		mov	word [bp-18],ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+15]
		mov	dx,word [bx+17]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-6],ax
		mov	word [bp-4],dx
		mov	ax,word [bp-18]
		cmp	ax,word [bp-4]
		jg	..@j1538
		jl	..@j1540
		mov	ax,word [bp-20]
		cmp	ax,word [bp-6]
		ja	..@j1538
..@j1540:
		add	word [bp-6],1
		adc	word [bp-4],0
	ALIGN 2
..@j1539:
		sub	word [bp-6],1
		sbb	word [bp-4],0
		mov	bx,word [bp+8]
		mov	bx,word [bx+25]
		mov	ax,word [bp-6]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		mov	bx,word [bp+8]
		push	word [bx+19]
		call	SYSTEM_$$_FREEMEM$POINTER$WORD
		mov	ax,word [bp-18]
		cmp	ax,word [bp-4]
		jl	..@j1539
		jg	..@j1545
		mov	ax,word [bp-20]
		cmp	ax,word [bp-6]
		jb	..@j1539
..@j1545:
..@j1538:
..@j1534:
		cmp	word [bp-12],0
		jne	..@j1548
		jmp	..@j1547
..@j1548:
		mov	bx,word [bp+8]
		mov	dx,word [bx+15]
		mov	ax,word [bx+17]
		cmp	ax,word [bp+6]
		jl	..@j1546
		jg	..@j1547
		cmp	dx,word [bp+4]
		jb	..@j1546
		jmp	..@j1547
		jmp	..@j1547
..@j1546:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-16],ax
		mov	word [bp-14],dx
		mov	bx,word [bp+8]
		mov	dx,word [bx+15]
		mov	ax,word [bx+17]
		mov	word [bp-6],dx
		mov	word [bp-4],ax
		mov	ax,word [bp-14]
		cmp	ax,word [bp-4]
		jl	..@j1552
		jg	..@j1554
		mov	ax,word [bp-16]
		cmp	ax,word [bp-6]
		jb	..@j1552
..@j1554:
		sub	word [bp-6],1
		sbb	word [bp-4],0
	ALIGN 2
..@j1553:
		add	word [bp-6],1
		adc	word [bp-4],0
		mov	bx,word [bp-12]
		mov	ax,word [bp-6]
		mov	si,ax
		shl	si,1
		lea	ax,[bx+si]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx+19]
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		mov	ax,word [bp-14]
		cmp	ax,word [bp-4]
		jg	..@j1553
		jl	..@j1559
		mov	ax,word [bp-16]
		cmp	ax,word [bp-6]
		ja	..@j1553
..@j1559:
..@j1552:
..@j1547:
		mov	bx,word [bp+8]
		mov	dx,word [bx+15]
		mov	ax,word [bx+17]
		cmp	ax,0
		jne	..@j1562
		cmp	dx,0
		jne	..@j1562
		jmp	..@j1561
..@j1562:
		mov	bx,word [bp+8]
		cmp	word [bx+25],0
		jne	..@j1560
		jmp	..@j1561
..@j1560:
		mov	bx,word [bp+8]
		push	word [bx+25]
		mov	bx,word [bp+8]
		mov	ax,word [bx+15]
		mov	dx,word [bx+17]
		shl	ax,1
		rcl	dx,1
		push	ax
		call	SYSTEM_$$_FREEMEM$POINTER$WORD
..@j1561:
		mov	bx,word [bp+8]
		mov	ax,word [bp-12]
		mov	word [bx+25],ax
		mov	bx,word [bp+8]
		mov	ax,word [bp+4]
		mov	word [bx+15],ax
		mov	ax,word [bp+6]
		mov	word [bx+17],ax
		mov	bx,word [bp+8]
		mov	si,word [bp+8]
		mov	ax,word [si+15]
		mov	word [bx+21],ax
		mov	ax,word [si+17]
		mov	word [bx+23],ax
		mov	bx,word [bp+8]
		push	word [bx+23]
		push	word [bx+21]
		mov	bx,word [bp+8]
		mov	dx,word [bx+19]
		mov	ax,0
		push	ax
		push	dx
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		mov	bx,word [bp+8]
		mov	word [bx+21],ax
		mov	word [bx+23],dx
..@j1493:
		mov	byte [bp-1],1
..@j1490:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_mul_longint
EXTERN	SYSTEM_$$_FREEMEM$POINTER$WORD
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
