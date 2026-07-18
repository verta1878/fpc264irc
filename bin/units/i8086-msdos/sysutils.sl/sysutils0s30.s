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
	GLOBAL SYSUTILS_$$_DODIRSEPARATORS$RAWBYTESTRING
SYSUTILS_$$_DODIRSEPARATORS$RAWBYTESTRING:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j1679
		mov	bx,word [bx-2]
..@j1679:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-8],cx
		mov	word [bp-6],ax
		mov	word [bp-4],1
		mov	word [bp-2],0
		mov	ax,word [bp-6]
		cmp	ax,word [bp-2]
		jl	..@j1681
		jg	..@j1683
		mov	ax,word [bp-8]
		cmp	ax,word [bp-4]
		jb	..@j1681
..@j1683:
		sub	word [bp-4],1
		sbb	word [bp-2],0
	ALIGN 2
..@j1682:
		add	word [bp-4],1
		adc	word [bp-2],0
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	si,word [bp-4]
		lea	ax,[bx+si-1]
		mov	si,ax
		mov	al,byte [si]
		mov	ah,0
		mov	bx,ax
		mov	cl,4
		shr	bx,cl
		shl	bx,1
		mov	cx,ax
		and	cl,15
		test	ax,ax
		jbe	..@j1690
		test	al,0
		jmp	..@j1691
..@j1690:
		mov	ax,1
		shl	ax,cl
		test	word [TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS+bx],ax
..@j1691:
		mov	al,0
		je	..@j1692
		inc	ax
..@j1692:
		test	al,al
		jne	..@j1684
		jmp	..@j1685
..@j1684:
		mov	ax,word [bp+4]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	si,word [bp-4]
		mov	byte [bx+si-1],92
..@j1685:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-2]
		jg	..@j1682
		jl	..@j1697
		mov	ax,word [bp-8]
		cmp	ax,word [bp-4]
		ja	..@j1682
..@j1697:
..@j1681:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_ansistr_unique
EXTERN	TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS
