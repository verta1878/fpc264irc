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
	GLOBAL fpc_mod_longint
fpc_mod_longint:
	GLOBAL FPC_MOD_LONGINT
FPC_MOD_LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,18
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		cmp	dx,0
		jne	..@j1607
		cmp	ax,0
		jne	..@j1607
		jmp	..@j1606
..@j1606:
		mov	ax,0
		push	ax
		mov	ax,200
		push	ax
		call	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
		push	ax
		push	bp
		call	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
..@j1607:
		mov	dx,word [bp+8]
		mov	si,word [bp+10]
		mov	ax,dx
		mov	bx,si
		mov	cl,15
		sar	bx,cl
		mov	ax,bx
		mov	cx,ax
		mov	di,bx
		xor	cx,dx
		xor	di,si
		sub	cx,ax
		sbb	di,bx
		mov	word [bp-14],cx
		mov	word [bp-12],di
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		jl	..@j1616
		jg	..@j1617
		cmp	ax,0
		jb	..@j1616
		jmp	..@j1617
..@j1616:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		not	dx
		neg	ax
		sbb	dx,-1
		mov	word [bp-18],ax
		mov	word [bp-16],dx
		mov	byte [bp-5],1
		jmp	..@j1622
..@j1617:
		mov	ax,word [bp+4]
		mov	word [bp-18],ax
		mov	ax,word [bp+6]
		mov	word [bp-16],ax
		mov	byte [bp-5],0
..@j1622:
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-18]
		call	fpc_mod_dword
		mov	word [bp-10],ax
		mov	word [bp-8],dx
		cmp	byte [bp-5],0
		jne	..@j1633
		jmp	..@j1634
..@j1633:
		mov	ax,word [bp-10]
		mov	dx,word [bp-8]
		not	dx
		neg	ax
		sbb	dx,-1
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j1637
..@j1634:
		mov	ax,word [bp-10]
		mov	word [bp-4],ax
		mov	ax,word [bp-8]
		mov	word [bp-2],ax
..@j1637:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_mod_dword
EXTERN	SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
EXTERN	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
