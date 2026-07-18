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
	GLOBAL fpc_intf_incr_ref
fpc_intf_incr_ref:
	GLOBAL FPC_INTF_INCR_REF
FPC_INTF_INCR_REF:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+4],0
		jne	..@j14254
		jmp	..@j14255
..@j14254:
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		call	[bx+2]
		pop	word [bp-2]
..@j14255:
		mov	sp,bp
		pop	bp
		ret	2
