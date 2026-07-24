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
	GLOBAL CLASSES_$$_INVALIDPOINT$SMALLINT$SMALLINT$$BOOLEAN
CLASSES_$$_INVALIDPOINT$SMALLINT$SMALLINT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+6],-1
		je	..@j14596
		jmp	..@j14595
..@j14596:
		cmp	word [bp+4],-1
		je	..@j14594
		jmp	..@j14595
..@j14594:
		mov	byte [bp-1],1
		jmp	..@j14597
..@j14595:
		mov	byte [bp-1],0
..@j14597:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
