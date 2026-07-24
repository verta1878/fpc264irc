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
	GLOBAL SYSTEM_$$_APPEND_TO_LIST_VAR$PMEMCHUNK_VAR
SYSTEM_$$_APPEND_TO_LIST_VAR$PMEMCHUNK_VAR:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		mov	bx,word [bx+2]
		lea	ax,[bx+80]
		mov	word [bp-2],ax
		mov	bx,word [bp+4]
		mov	word [bx+8],0
		mov	si,word [bp+4]
		mov	bx,word [bp-2]
		mov	ax,word [bx]
		mov	word [si+6],ax
		mov	bx,word [bp-2]
		cmp	word [bx],0
		jne	..@j18536
		jmp	..@j18537
..@j18536:
		mov	bx,word [bp-2]
		mov	bx,word [bx]
		mov	ax,word [bp+4]
		mov	word [bx+8],ax
..@j18537:
		mov	bx,word [bp-2]
		mov	ax,word [bp+4]
		mov	word [bx],ax
		mov	sp,bp
		pop	bp
		ret	2
