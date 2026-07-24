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
	GLOBAL fpc_mul_longint
fpc_mul_longint:
	GLOBAL FPC_MUL_LONGINT
FPC_MUL_LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,18
		cmp	byte [bp+4],0
		je	..@j1494
		jmp	..@j1495
..@j1494:
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	fpc_mul_dword
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j1504
..@j1495:
		mov	byte [bp-5],0
		mov	dx,word [bp+10]
		mov	ax,word [bp+12]
		cmp	ax,0
		jl	..@j1507
		jg	..@j1508
		cmp	dx,0
		jb	..@j1507
		jmp	..@j1508
..@j1507:
		cmp	byte [bp-5],0
		mov	al,0
		jne	..@j1511
		inc	ax
..@j1511:
		mov	byte [bp-5],al
		mov	ax,word [bp+10]
		mov	dx,word [bp+12]
		not	dx
		neg	ax
		sbb	dx,-1
		mov	word [bp-10],ax
		mov	word [bp-8],dx
		jmp	..@j1514
..@j1508:
		mov	ax,word [bp+10]
		mov	word [bp-10],ax
		mov	ax,word [bp+12]
		mov	word [bp-8],ax
..@j1514:
		mov	dx,word [bp+6]
		mov	ax,word [bp+8]
		cmp	ax,0
		jl	..@j1517
		jg	..@j1518
		cmp	dx,0
		jb	..@j1517
		jmp	..@j1518
..@j1517:
		cmp	byte [bp-5],0
		mov	al,0
		jne	..@j1521
		inc	ax
..@j1521:
		mov	byte [bp-5],al
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		not	dx
		neg	ax
		sbb	dx,-1
		mov	word [bp-14],ax
		mov	word [bp-12],dx
		jmp	..@j1524
..@j1518:
		mov	ax,word [bp+6]
		mov	word [bp-14],ax
		mov	ax,word [bp+8]
		mov	word [bp-12],ax
..@j1524:
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		mov	ax,0
		push	ax
		call	fpc_mul_dword
		mov	word [bp-18],ax
		mov	word [bp-16],dx
		mov	ax,word [bp-10]
		mov	dx,word [bp-8]
		cmp	dx,0
		jne	..@j1538
		cmp	ax,0
		jne	..@j1538
		jmp	..@j1536
..@j1538:
		mov	ax,word [bp-14]
		mov	dx,word [bp-12]
		cmp	dx,0
		jne	..@j1537
		cmp	ax,0
		jne	..@j1537
		jmp	..@j1536
..@j1537:
		mov	ax,word [bp-10]
		mov	dx,word [bp-8]
		cmp	dx,word [bp-16]
		ja	..@j1535
		jb	..@j1540
		cmp	ax,word [bp-18]
		ja	..@j1535
		jmp	..@j1540
		jmp	..@j1540
..@j1540:
		mov	dx,word [bp-14]
		mov	ax,word [bp-12]
		cmp	ax,word [bp-16]
		ja	..@j1535
		jb	..@j1539
		cmp	dx,word [bp-18]
		ja	..@j1535
		jmp	..@j1539
		jmp	..@j1539
..@j1539:
		mov	ax,word [bp-18]
		mov	dx,word [bp-16]
		mov	cx,15
..@j1542:
		shr	dx,1
		rcr	ax,1
		loop	..@j1542
		cmp	dx,0
		jne	..@j1541
		cmp	ax,0
		jne	..@j1541
		jmp	..@j1536
..@j1541:
		mov	ax,word [bp-18]
		mov	dx,word [bp-16]
		cmp	dx,-32768
		jne	..@j1535
		cmp	ax,0
		jne	..@j1535
		jmp	..@j1543
..@j1543:
		cmp	byte [bp-5],0
		je	..@j1535
		jmp	..@j1536
..@j1535:
		mov	ax,0
		push	ax
		mov	ax,215
		push	ax
		call	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
		push	ax
		push	bp
		call	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
..@j1536:
		cmp	byte [bp-5],0
		jne	..@j1550
		jmp	..@j1551
..@j1550:
		mov	ax,word [bp-18]
		mov	dx,word [bp-16]
		not	dx
		neg	ax
		sbb	dx,-1
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j1554
..@j1551:
		mov	ax,word [bp-18]
		mov	word [bp-4],ax
		mov	ax,word [bp-16]
		mov	word [bp-2],ax
..@j1554:
..@j1504:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
EXTERN	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
EXTERN	fpc_mul_dword
