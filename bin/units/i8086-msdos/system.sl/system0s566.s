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
	GLOBAL fpc_intf_assign
fpc_intf_assign:
	GLOBAL FPC_INTF_ASSIGN
FPC_INTF_ASSIGN:
		push	bp
		mov	bp,sp
		sub	sp,4
		cmp	word [bp+4],0
		jne	..@j14260
		jmp	..@j14261
..@j14260:
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		call	[bx+2]
		pop	word [bp-4]
..@j14261:
		mov	bx,word [bp+6]
		cmp	word [bx],0
		jne	..@j14264
		jmp	..@j14265
..@j14264:
		mov	bx,word [bp+6]
		push	word [bx]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	bx,word [bx]
		call	[bx+4]
		pop	word [bp-2]
..@j14265:
		mov	bx,word [bp+6]
		mov	ax,word [bp+4]
		mov	word [bx],ax
		mov	sp,bp
		pop	bp
		ret	4
