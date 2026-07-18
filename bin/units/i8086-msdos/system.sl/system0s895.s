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
	GLOBAL SYSTEM_$$_MODIFY_FREELISTS$PFREELISTS$PFREELISTS$$POSCHUNK
SYSTEM_$$_MODIFY_FREELISTS$PFREELISTS$PFREELISTS$$POSCHUNK:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+6]
		mov	ax,word [bx+78]
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		jne	..@j18671
		jmp	..@j18672
..@j18671:
	ALIGN 2
..@j18673:
		push	word [bp-4]
		push	word [bp+4]
		call	SYSTEM_$$_MODIFY_OSCHUNK_FREELISTS$POSCHUNK$PFREELISTS
		mov	bx,word [bp-4]
		cmp	word [bx+6],0
		je	..@j18680
		jmp	..@j18681
..@j18680:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		jmp	..@j18667
..@j18681:
		mov	bx,word [bp-4]
		mov	ax,word [bx+6]
		mov	word [bp-4],ax
		jmp	..@j18673
..@j18672:
		mov	word [bp-2],0
..@j18667:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_MODIFY_OSCHUNK_FREELISTS$POSCHUNK$PFREELISTS
