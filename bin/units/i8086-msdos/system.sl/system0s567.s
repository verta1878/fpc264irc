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
	GLOBAL fpc_intf_is
fpc_intf_is:
	GLOBAL FPC_INTF_IS
FPC_INTF_IS:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	word [bp-4],0
		cmp	word [bp+6],0
		jne	..@j14276
		jmp	..@j14275
..@j14276:
		lea	ax,[bp-4]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		call	[bx]
		add	sp,6
		cmp	dx,0
		jne	..@j14275
		cmp	ax,0
		jne	..@j14275
		jmp	..@j14274
..@j14274:
		mov	byte [bp-1],1
		jmp	..@j14283
..@j14275:
		mov	byte [bp-1],0
..@j14283:
		cmp	word [bp-4],0
		jne	..@j14284
		jmp	..@j14285
..@j14284:
		push	word [bp-4]
		mov	bx,word [bp-4]
		mov	bx,word [bx]
		call	[bx+4]
		pop	word [bp-6]
..@j14285:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
