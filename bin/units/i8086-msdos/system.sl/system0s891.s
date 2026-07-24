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
	GLOBAL SYSTEM_$$_FREE_OSCHUNK$PFREELISTS$POSCHUNK
SYSTEM_$$_FREE_OSCHUNK$PFREELISTS$POSCHUNK:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+4]
		call	SYSTEM_$$_REMOVE_FREED_FIXED_CHUNKS$POSCHUNK
		mov	bx,word [bp+4]
		cmp	word [bx+4],0
		jne	..@j18601
		jmp	..@j18602
..@j18601:
		mov	bx,word [bp+4]
		mov	si,word [bx+4]
		mov	bx,word [bp+4]
		mov	ax,word [bx+6]
		mov	word [si+6],ax
		jmp	..@j18605
..@j18602:
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		mov	ax,word [bx+6]
		mov	word [si+78],ax
..@j18605:
		mov	bx,word [bp+4]
		cmp	word [bx+6],0
		jne	..@j18608
		jmp	..@j18609
..@j18608:
		mov	bx,word [bp+4]
		mov	si,word [bx+6]
		mov	bx,word [bp+4]
		mov	ax,word [bx+4]
		mov	word [si+4],ax
..@j18609:
		mov	bx,word [bp+4]
		cmp	word [bx+8],0
		jge	..@j18612
		jmp	..@j18613
..@j18612:
		mov	bx,word [bp+6]
		sub	word [bx+72],1
		sbb	word [bx+74],0
..@j18613:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,-16
		mov	word [bp-2],ax
		mov	bx,word [bp+6]
		mov	ax,word [bp-2]
		sub	word [bx+90],ax
		push	word [bp+4]
		push	word [bp-2]
		call	SYSTEM_$$_SYSOSFREE$POINTER$WORD
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_SYSOSFREE$POINTER$WORD
EXTERN	SYSTEM_$$_REMOVE_FREED_FIXED_CHUNKS$POSCHUNK
