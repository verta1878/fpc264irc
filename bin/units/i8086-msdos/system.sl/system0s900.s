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
	GLOBAL SYSTEM_$$_FIND_FREE_OSCHUNK$PFREELISTS$WORD$WORD$WORD$$POSCHUNK
SYSTEM_$$_FIND_FREE_OSCHUNK$PFREELISTS$WORD$WORD$WORD$$POSCHUNK:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+10]
		mov	ax,word [bx]
		mov	word [bp-6],ax
		mov	word [bp-4],0
		jmp	..@j18800
	ALIGN 2
..@j18799:
		mov	bx,word [bp-6]
		mov	ax,word [bx]
		and	ax,1
		test	ax,ax
		jne	..@j18802
		jmp	..@j18803
..@j18802:
		mov	bx,word [bp-6]
		mov	ax,word [bx]
		and	ax,-2
		mov	bx,word [bp-6]
		mov	word [bx],ax
		mov	bx,word [bp-6]
		mov	ax,word [bx+2]
		mov	word [bp-6],ax
		cmp	word [bp-4],0
		je	..@j18808
		jmp	..@j18809
..@j18808:
		mov	bx,word [bp+10]
		mov	ax,word [bp-6]
		mov	word [bx],ax
		jmp	..@j18812
..@j18809:
		mov	bx,word [bp-4]
		mov	ax,word [bp-6]
		mov	word [bx+2],ax
..@j18812:
		jmp	..@j18800
..@j18803:
		mov	bx,word [bp-6]
		mov	ax,word [bx]
		and	ax,-16
		mov	word [bp-8],ax
		mov	ax,word [bp-8]
		cmp	ax,word [bp+8]
		jae	..@j18819
		jmp	..@j18818
..@j18819:
		mov	ax,word [bp-8]
		cmp	ax,word [bp+6]
		jbe	..@j18817
		jmp	..@j18818
..@j18817:
		mov	bx,word [bp+4]
		mov	ax,word [bp-8]
		mov	word [bx],ax
		cmp	word [bp-4],0
		je	..@j18822
		jmp	..@j18823
..@j18822:
		mov	si,word [bp+10]
		mov	bx,word [bp-6]
		mov	ax,word [bx+2]
		mov	word [si],ax
		jmp	..@j18826
..@j18823:
		mov	si,word [bp-4]
		mov	bx,word [bp-6]
		mov	ax,word [bx+2]
		mov	word [si+2],ax
..@j18826:
		mov	bx,word [bp+10]
		sub	word [bx+68],1
		sbb	word [bx+70],0
		push	word [bp-6]
		call	SYSTEM_$$_REMOVE_FREED_FIXED_CHUNKS$POSCHUNK
		jmp	..@j18801
..@j18818:
		mov	ax,word [bp-6]
		mov	word [bp-4],ax
		mov	bx,word [bp-6]
		mov	ax,word [bx+2]
		mov	word [bp-6],ax
..@j18800:
		cmp	word [bp-6],0
		jne	..@j18799
		jmp	..@j18801
..@j18801:
		mov	ax,word [bp-6]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_REMOVE_FREED_FIXED_CHUNKS$POSCHUNK
