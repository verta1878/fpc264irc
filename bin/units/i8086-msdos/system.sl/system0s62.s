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
	GLOBAL SYSTEM_$$_FILLQWORD$formal$SMALLINT$QWORD
SYSTEM_$$_FILLQWORD$formal$SMALLINT$QWORD:
		push	bp
		mov	bp,sp
		sub	sp,4
		cmp	word [bp+12],0
		jle	..@j458
		jmp	..@j459
..@j458:
		jmp	..@j456
..@j459:
		mov	ax,word [bp+14]
		mov	word [bp-2],ax
		mov	ax,word [bp+12]
		mov	cl,3
		shl	ax,cl
		mov	dx,word [bp-2]
		add	dx,ax
		mov	word [bp-4],dx
		jmp	..@j465
	ALIGN 2
..@j464:
		mov	di,word [bp-2]
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
		add	word [bp-2],8
..@j465:
		mov	ax,word [bp-2]
		cmp	ax,word [bp-4]
		jb	..@j464
		jmp	..@j466
..@j466:
..@j456:
		mov	sp,bp
		pop	bp
		ret	12
