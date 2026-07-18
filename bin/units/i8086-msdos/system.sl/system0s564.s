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
	GLOBAL fpc_intf_decr_ref
fpc_intf_decr_ref:
	GLOBAL FPC_INTF_DECR_REF
FPC_INTF_DECR_REF:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		cmp	word [bx],0
		jne	..@j14246
		jmp	..@j14247
..@j14246:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	bx,word [bx]
		call	[bx+4]
		pop	word [bp-2]
		mov	bx,word [bp+4]
		mov	word [bx],0
..@j14247:
		mov	sp,bp
		pop	bp
		ret	2
