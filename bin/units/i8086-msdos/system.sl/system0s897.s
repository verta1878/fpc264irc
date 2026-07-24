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
	GLOBAL SYSTEM_$$_CONCAT_TWO_BLOCKS$PMEMCHUNK_VAR$PMEMCHUNK_VAR
SYSTEM_$$_CONCAT_TWO_BLOCKS$PMEMCHUNK_VAR$PMEMCHUNK_VAR:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		mov	ax,word [bx+4]
		and	ax,1
		test	ax,ax
		jne	..@j18732
		jmp	..@j18733
..@j18732:
		mov	ax,0
		push	ax
		mov	ax,204
		push	ax
		call	FPC_HANDLEERROR
..@j18733:
		mov	bx,word [bp+4]
		mov	ax,word [bx+4]
		and	ax,-16
		mov	word [bp-4],ax
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		add	word [bx+4],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+4]
		and	ax,4
		test	ax,ax
		jne	..@j18738
		jmp	..@j18739
..@j18738:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		or	ax,4
		mov	bx,word [bp+6]
		mov	word [bx+4],ax
		jmp	..@j18742
..@j18739:
		mov	dx,word [bp+4]
		mov	ax,word [bp-4]
		add	ax,dx
		mov	word [bp-2],ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		and	ax,-16
		mov	bx,word [bp-2]
		mov	word [bx],ax
..@j18742:
		mov	bx,word [bp+4]
		cmp	word [bx+6],0
		jne	..@j18748
		jmp	..@j18749
..@j18748:
		mov	bx,word [bp+4]
		mov	si,word [bx+6]
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [si+8],ax
..@j18749:
		mov	bx,word [bp+4]
		cmp	word [bx+8],0
		jne	..@j18752
		jmp	..@j18753
..@j18752:
		mov	bx,word [bp+4]
		mov	si,word [bx+8]
		mov	bx,word [bp+4]
		mov	ax,word [bx+6]
		mov	word [si+6],ax
		jmp	..@j18756
..@j18753:
		mov	bx,word [bp+4]
		mov	si,word [bx+2]
		mov	bx,word [bp+4]
		mov	ax,word [bx+6]
		mov	word [si+80],ax
..@j18756:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_HANDLEERROR
