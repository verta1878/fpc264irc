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
	GLOBAL SYSUTILS$_$FLOATTOSTRFINTL$crcBE2DB201_$$_REMOVELEADINGNEGATIVESIGN$ANSISTRING$$BOOLEAN
SYSUTILS$_$FLOATTOSTRFINTL$crcBE2DB201_$$_REMOVELEADINGNEGATIVESIGN$ANSISTRING$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,78
		mov	byte [bp-1],0
		mov	bx,word [bp+6]
		cmp	word [bx+14],4
		je	..@j6701
		jmp	..@j6702
..@j6701:
		mov	word [bp-8],1
		jmp	..@j6705
..@j6702:
		mov	word [bp-8],2
..@j6705:
		mov	bx,word [bp+6]
		mov	bx,word [bx+4]
		mov	al,byte [bx+2]
		mov	byte [bp-5],al
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j6712
		mov	bx,word [bx-2]
..@j6712:
		mov	word [bp-78],bx
		mov	ax,word [bp-8]
		mov	word [bp-4],ax
		mov	ax,word [bp-78]
		cmp	ax,word [bp-4]
		jl	..@j6714
		dec	word [bp-4]
	ALIGN 2
..@j6715:
		inc	word [bp-4]
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-74],ax
		mov	ax,word [bp-4]
		mov	word [bp-76],ax
		mov	ax,word _$SYSUTILS$_Ld634
		push	ax
		lea	ax,[bp-72]
		push	ax
		mov	bx,word [bp+6]
		mov	al,byte [bx-10]
		mov	ah,0
		push	ax
		mov	ax,32
		push	ax
		call	fpc_varset_set
		lea	ax,[bp-72]
		push	ax
		lea	ax,[bp-40]
		push	ax
		mov	al,byte [bp-5]
		mov	ah,0
		push	ax
		mov	ax,32
		push	ax
		call	fpc_varset_set
		mov	bx,word [bp-74]
		mov	si,word [bp-76]
		mov	al,byte [bx+si-1]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		mov	ax,1
		shl	ax,cl
		test	word [bp+si-40],ax
		mov	al,0
		je	..@j6734
		inc	ax
..@j6734:
		mov	byte [bp-1],al
		cmp	byte [bp-1],0
		je	..@j6735
		jmp	..@j6736
..@j6735:
		jmp	..@j6714
..@j6736:
		mov	ax,word [bp-78]
		cmp	ax,word [bp-4]
		jg	..@j6715
..@j6714:
		cmp	byte [bp-1],0
		jne	..@j6739
		jmp	..@j6738
..@j6739:
		mov	bx,word [bp+6]
		cmp	word [bx+14],4
		jne	..@j6737
		jmp	..@j6738
..@j6737:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,1
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
..@j6738:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
EXTERN	fpc_varset_set
EXTERN	_$SYSUTILS$_Ld634
