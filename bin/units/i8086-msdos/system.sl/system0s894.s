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
	GLOBAL SYSTEM_$$_MODIFY_OSCHUNK_FREELISTS$POSCHUNK$PFREELISTS
SYSTEM_$$_MODIFY_OSCHUNK_FREELISTS$POSCHUNK$PFREELISTS:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+6]
		mov	ax,word [bp+4]
		mov	word [bx+10],ax
		mov	bx,word [bp+6]
		cmp	word [bx+8],-1
		jne	..@j18654
		jmp	..@j18655
..@j18654:
		jmp	..@j18650
..@j18655:
		mov	ax,word [bp+6]
		add	ax,26
		mov	word [bp-2],ax
	ALIGN 2
..@j18658:
		mov	bx,word [bp-2]
		mov	ax,word [bp+4]
		mov	word [bx+2],ax
		mov	bx,word [bp-2]
		mov	ax,word [bx+4]
		and	ax,4
		test	ax,ax
		jne	..@j18663
		jmp	..@j18664
..@j18663:
		jmp	..@j18660
..@j18664:
		mov	bx,word [bp-2]
		mov	ax,word [bx+4]
		and	ax,-16
		mov	dx,word [bp-2]
		add	dx,ax
		mov	word [bp-2],dx
		jmp	..@j18658
..@j18660:
..@j18650:
		mov	sp,bp
		pop	bp
		ret	4
