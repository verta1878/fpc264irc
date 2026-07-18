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
	GLOBAL fpc_intf_as
fpc_intf_as:
	GLOBAL FPC_INTF_AS
FPC_INTF_AS:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+6],0
		jne	..@j14448
		jmp	..@j14449
..@j14448:
		mov	word [bp-2],0
		lea	ax,[bp-2]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		call	[bx]
		add	sp,6
		cmp	dx,0
		jne	..@j14452
		cmp	ax,0
		jne	..@j14452
		jmp	..@j14453
..@j14452:
		mov	ax,0
		push	ax
		mov	ax,219
		push	ax
		call	FPC_HANDLEERROR
..@j14453:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_intf_assign
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		mov	word [bx],ax
		jmp	..@j14468
..@j14449:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_intf_assign
..@j14468:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_intf_assign
EXTERN	FPC_HANDLEERROR
