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
	GLOBAL VARUTILS_$$_CHECKVARARRAYANDCALCULATEADDRESS$PVARARRAY$PVARARRAYCOORARRAY$POINTER$BOOLEAN$$HRESULT
VARUTILS_$$_CHECKVARARRAYANDCALCULATEADDRESS$PVARARRAY$PVARARRAYCOORARRAY$POINTER$BOOLEAN$$HRESULT:
		push	bp
		mov	bp,sp
		sub	sp,28
		push	word [bp+10]
		call	VARUTILS_$$_CHECKVARARRAY$PVARARRAY$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	bx,word [bp+6]
		mov	word [bx],0
		mov	word [bp-16],0
		mov	word [bp-14],0
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,0
		jne	..@j4660
		cmp	dx,0
		jne	..@j4660
		jmp	..@j4661
..@j4660:
		jmp	..@j4650
..@j4661:
		mov	word [bp-12],0
		mov	word [bp-10],0
		mov	bx,word [bp+10]
		mov	ax,word [bx]
		mov	dx,0
		sub	ax,1
		sbb	dx,0
		mov	word [bp-26],ax
		mov	word [bp-24],dx
		mov	word [bp-8],0
		mov	word [bp-6],0
		mov	ax,word [bp-24]
		cmp	ax,word [bp-6]
		jl	..@j4667
		jg	..@j4669
		mov	ax,word [bp-26]
		cmp	ax,word [bp-8]
		jb	..@j4667
..@j4669:
		sub	word [bp-8],1
		sbb	word [bp-6],0
	ALIGN 2
..@j4668:
		add	word [bp-8],1
		adc	word [bp-6],0
		mov	ax,word [bp+8]
		mov	word [bp-22],ax
		mov	bx,word [bp+10]
		mov	ax,word [bx]
		mov	dx,0
		mov	bx,word [bp-8]
		mov	si,word [bp-6]
		mov	cx,dx
		sub	ax,bx
		sbb	cx,si
		mov	dx,ax
		mov	ax,cx
		sub	dx,1
		sbb	ax,0
		mov	si,dx
		mov	cl,2
		shl	si,cl
		mov	ax,word [bp+10]
		mov	word [bp-28],ax
		mov	ax,word [bp-8]
		mov	di,ax
		mov	cl,3
		shl	di,cl
		mov	bx,word [bp-22]
		mov	ax,word [bx+si]
		mov	bx,word [bp-22]
		mov	dx,word [bx+si+2]
		mov	bx,word [bp-28]
		mov	cx,word [bx+di+18]
		mov	bx,word [bp-28]
		mov	si,word [bx+di+20]
		mov	bx,ax
		mov	ax,dx
		sub	bx,cx
		sbb	ax,si
		mov	word [bp-20],bx
		mov	word [bp-18],ax
		mov	dx,word [bp-20]
		mov	ax,word [bp-18]
		cmp	ax,0
		jl	..@j4672
		jg	..@j4674
		cmp	dx,0
		jb	..@j4672
		jmp	..@j4674
..@j4674:
		mov	bx,word [bp+10]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	cl,3
		shl	si,cl
		mov	dx,word [bx+si+14]
		mov	ax,word [bx+si+16]
		cmp	ax,word [bp-18]
		jl	..@j4672
		jg	..@j4673
		cmp	dx,word [bp-20]
		jbe	..@j4672
		jmp	..@j4673
		jmp	..@j4673
..@j4672:
		mov	word [bp-4],11
		mov	word [bp-2],-32766
		jmp	..@j4650
..@j4673:
		mov	dx,word [bp-8]
		mov	ax,word [bp-6]
		cmp	ax,0
		jne	..@j4678
		cmp	dx,0
		jne	..@j4678
		jmp	..@j4677
..@j4677:
		mov	ax,word [bp-20]
		mov	word [bp-16],ax
		mov	ax,word [bp-18]
		mov	word [bp-14],ax
		jmp	..@j4681
..@j4678:
		push	word [bp-18]
		push	word [bp-20]
		push	word [bp-10]
		push	word [bp-12]
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		add	word [bp-16],ax
		adc	word [bp-14],dx
..@j4681:
		mov	bx,word [bp+10]
		mov	ax,word [bp-8]
		mov	si,ax
		mov	cl,3
		shl	si,cl
		mov	dx,word [bx+si+14]
		mov	ax,word [bx+si+16]
		add	word [bp-12],dx
		adc	word [bp-10],ax
		mov	ax,word [bp-24]
		cmp	ax,word [bp-6]
		jg	..@j4668
		jl	..@j4688
		mov	ax,word [bp-26]
		cmp	ax,word [bp-8]
		ja	..@j4668
..@j4688:
..@j4667:
		push	word [bp+10]
		push	word [bp-16]
		call	VARUTILS_$$_SAFEARRAYCALCULATEELEMENTADDRESS$PVARARRAY$SMALLINT$$POINTER
		mov	bx,word [bp+6]
		mov	word [bx],ax
		cmp	byte [bp+4],0
		jne	..@j4695
		jmp	..@j4696
..@j4695:
		push	word [bp+10]
		call	VARUTILS_$$_SAFEARRAYLOCK$PVARARRAY$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j4696:
..@j4650:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	VARUTILS_$$_SAFEARRAYLOCK$PVARARRAY$$HRESULT
EXTERN	VARUTILS_$$_SAFEARRAYCALCULATEELEMENTADDRESS$PVARARRAY$SMALLINT$$POINTER
EXTERN	fpc_mul_longint
EXTERN	VARUTILS_$$_CHECKVARARRAY$PVARARRAY$$HRESULT
