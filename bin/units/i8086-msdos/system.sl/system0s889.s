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
	GLOBAL SYSTEM_$$_REMOVE_FROM_LIST_VAR$PMEMCHUNK_VAR
SYSTEM_$$_REMOVE_FROM_LIST_VAR$PMEMCHUNK_VAR:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		cmp	word [bx+6],0
		jne	..@j18557
		jmp	..@j18558
..@j18557:
		mov	bx,word [bp+4]
		mov	si,word [bx+6]
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [si+8],ax
..@j18558:
		mov	bx,word [bp+4]
		cmp	word [bx+8],0
		jne	..@j18561
		jmp	..@j18562
..@j18561:
		mov	bx,word [bp+4]
		mov	si,word [bx+8]
		mov	bx,word [bp+4]
		mov	ax,word [bx+6]
		mov	word [si+6],ax
		jmp	..@j18565
..@j18562:
		mov	bx,word [bp+4]
		mov	si,word [bx+2]
		mov	bx,word [bp+4]
		mov	ax,word [bx+6]
		mov	word [si+80],ax
..@j18565:
		mov	sp,bp
		pop	bp
		ret	2
