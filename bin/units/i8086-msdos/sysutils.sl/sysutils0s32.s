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
	GLOBAL SYSUTILS_$$_GETDIRS$RAWBYTESTRING$array_of_PCHAR$$LONGINT
SYSUTILS_$$_GETDIRS$RAWBYTESTRING$array_of_PCHAR$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	word [bp-8],1
		mov	word [bp-6],0
		mov	word [bp-4],-1
		mov	word [bp-2],-1
		jmp	..@j1713
	ALIGN 2
..@j1712:
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	si,word [bp-8]
		lea	bx,[bx+si-1]
		mov	al,byte [bx]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		test	ax,ax
		jbe	..@j1722
		test	al,0
		jmp	..@j1723
..@j1722:
		mov	ax,1
		shl	ax,cl
		test	word [TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS+si],ax
..@j1723:
		mov	al,0
		je	..@j1724
		inc	ax
..@j1724:
		test	al,al
		jne	..@j1717
		jmp	..@j1716
..@j1717:
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j1725
		mov	bx,word [bx-2]
..@j1725:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,word [bp-6]
		jg	..@j1715
		jl	..@j1716
		cmp	cx,word [bp-8]
		ja	..@j1715
		jmp	..@j1716
		jmp	..@j1716
..@j1715:
		mov	ax,word [bp+8]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	si,word [bp-8]
		mov	byte [bx+si-1],0
		add	word [bp-4],1
		adc	word [bp-2],0
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		add	ax,1
		adc	dx,0
		mov	si,ax
		lea	dx,[bx+si-1]
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		mov	word [bx+si],dx
..@j1716:
		add	word [bp-8],1
		adc	word [bp-6],0
..@j1713:
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j1732
		mov	bx,word [bx-2]
..@j1732:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,word [bp-6]
		jg	..@j1712
		jl	..@j1714
		cmp	cx,word [bp-8]
		jae	..@j1712
		jmp	..@j1714
		jmp	..@j1714
..@j1714:
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,-1
		jg	..@j1733
		jl	..@j1734
		cmp	dx,-1
		ja	..@j1733
		jmp	..@j1734
..@j1733:
		add	word [bp-4],1
		adc	word [bp-2],0
..@j1734:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_ansistr_unique
EXTERN	TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS
