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
	GLOBAL SYSTEM_$$_APPEND_TO_OSLIST_VAR$PMEMCHUNK_VAR
SYSTEM_$$_APPEND_TO_OSLIST_VAR$PMEMCHUNK_VAR:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+4]
		sub	ax,26
		mov	word [bp-2],ax
		mov	bx,word [bp+4]
		cmp	word [bx+6],0
		jne	..@j18637
		jmp	..@j18638
..@j18637:
		mov	bx,word [bp+4]
		mov	si,word [bx+6]
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [si+8],ax
..@j18638:
		mov	bx,word [bp+4]
		cmp	word [bx+8],0
		jne	..@j18641
		jmp	..@j18642
..@j18641:
		mov	bx,word [bp+4]
		mov	si,word [bx+8]
		mov	bx,word [bp+4]
		mov	ax,word [bx+6]
		mov	word [si+6],ax
		jmp	..@j18645
..@j18642:
		mov	bx,word [bp+4]
		mov	si,word [bx+2]
		mov	bx,word [bp+4]
		mov	ax,word [bx+6]
		mov	word [si+80],ax
..@j18645:
		push	word [bp-2]
		call	SYSTEM_$$_APPEND_TO_OSLIST$POSCHUNK
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_APPEND_TO_OSLIST$POSCHUNK
