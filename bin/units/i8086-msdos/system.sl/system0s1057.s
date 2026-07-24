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
	GLOBAL fpc_write_end
fpc_write_end:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		cmp	word [bx+20],0
		jne	..@j21724
		jmp	..@j21725
..@j21724:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+20]
		call	ax
..@j21725:
		mov	sp,bp
		pop	bp
		ret	2
