BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TSTREAMADAPTER_$__$$_CLONE$ISTREAM$$HRESULT
CLASSES$_$TSTREAMADAPTER_$__$$_CLONE$ISTREAM$$HRESULT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+6]
		mov	word [bx],0
		mov	bx,word [bp+4]
		cmp	byte [bx+14],0
		jne	..@j2760
		jmp	..@j2761
..@j2760:
		mov	word [bp-4],258
		mov	word [bp-2],-32765
		jmp	..@j2758
..@j2761:
		mov	word [bp-4],254
		mov	word [bp-2],-32765
..@j2758:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
