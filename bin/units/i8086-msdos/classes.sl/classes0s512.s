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
	GLOBAL CLASSES$_$TUNRESOLVEDREFERENCE_$__$$_ROOTMATCHES$TCOMPONENT$$BOOLEAN
CLASSES$_$TUNRESOLVEDREFERENCE_$__$$_ROOTMATCHES$TCOMPONENT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+4],0
		je	..@j11417
		jmp	..@j11419
..@j11419:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		cmp	ax,word [bp+4]
		je	..@j11417
		jmp	..@j11418
..@j11417:
		mov	byte [bp-1],1
		jmp	..@j11420
..@j11418:
		mov	byte [bp-1],0
..@j11420:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
