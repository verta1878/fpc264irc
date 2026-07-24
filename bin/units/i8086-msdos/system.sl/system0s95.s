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
	GLOBAL fpc_div_longint
fpc_div_longint:
	GLOBAL FPC_DIV_LONGINT
FPC_DIV_LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,14
		mov	dx,word [bp+8]
		mov	ax,word [bp+10]
		cmp	ax,0
		jne	..@j1560
		cmp	dx,0
		jne	..@j1560
		jmp	..@j1559
..@j1559:
		mov	ax,0
		push	ax
		mov	ax,200
		push	ax
		call	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
		push	ax
		push	bp
		call	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
..@j1560:
		mov	byte [bp-5],0
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		jl	..@j1569
		jg	..@j1570
		cmp	ax,0
		jb	..@j1569
		jmp	..@j1570
..@j1569:
		cmp	byte [bp-5],0
		mov	al,0
		jne	..@j1573
		inc	ax
..@j1573:
		mov	byte [bp-5],al
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		not	dx
		neg	ax
		sbb	dx,-1
		mov	word [bp-10],ax
		mov	word [bp-8],dx
		jmp	..@j1576
..@j1570:
		mov	ax,word [bp+4]
		mov	word [bp-10],ax
		mov	ax,word [bp+6]
		mov	word [bp-8],ax
..@j1576:
		mov	dx,word [bp+8]
		mov	ax,word [bp+10]
		cmp	ax,0
		jl	..@j1579
		jg	..@j1580
		cmp	dx,0
		jb	..@j1579
		jmp	..@j1580
..@j1579:
		cmp	byte [bp-5],0
		mov	al,0
		jne	..@j1583
		inc	ax
..@j1583:
		mov	byte [bp-5],al
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		not	dx
		neg	ax
		sbb	dx,-1
		mov	word [bp-14],ax
		mov	word [bp-12],dx
		jmp	..@j1586
..@j1580:
		mov	ax,word [bp+8]
		mov	word [bp-14],ax
		mov	ax,word [bp+10]
		mov	word [bp-12],ax
..@j1586:
		cmp	byte [bp-5],0
		jne	..@j1589
		jmp	..@j1590
..@j1589:
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-8]
		push	word [bp-10]
		call	fpc_div_dword
		not	dx
		neg	ax
		sbb	dx,-1
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j1597
..@j1590:
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-8]
		push	word [bp-10]
		call	fpc_div_dword
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j1597:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_div_dword
EXTERN	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
EXTERN	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
