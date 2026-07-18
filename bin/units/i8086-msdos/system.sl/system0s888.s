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
	GLOBAL SYSTEM_$$_REMOVE_FROM_LIST_FIXED$PMEMCHUNK_FIXED$PPMEMCHUNK_FIXED
SYSTEM_$$_REMOVE_FROM_LIST_FIXED$PMEMCHUNK_FIXED$PPMEMCHUNK_FIXED:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		cmp	word [bx+2],0
		jne	..@j18544
		jmp	..@j18545
..@j18544:
		mov	bx,word [bp+6]
		mov	si,word [bx+2]
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	word [si+4],ax
..@j18545:
		mov	bx,word [bp+6]
		cmp	word [bx+4],0
		jne	..@j18548
		jmp	..@j18549
..@j18548:
		mov	bx,word [bp+6]
		mov	si,word [bx+4]
		mov	bx,word [bp+6]
		mov	ax,word [bx+2]
		mov	word [si+2],ax
		jmp	..@j18552
..@j18549:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	ax,word [bx+2]
		mov	word [si],ax
..@j18552:
		mov	sp,bp
		pop	bp
		ret	4
