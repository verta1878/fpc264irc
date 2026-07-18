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
	GLOBAL CHARSET_$$_GETUNICODE$PCHAR$LONGINT$PUNICODEMAP$TUNICODESTRING$$LONGINT
CHARSET_$$_GETUNICODE$PCHAR$LONGINT$PUNICODEMAP$TUNICODESTRING$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,24
		cmp	word [bp+12],0
		je	..@j796
		jmp	..@j798
..@j798:
		mov	dx,word [bp+8]
		mov	ax,word [bp+10]
		cmp	ax,0
		jl	..@j796
		jg	..@j797
		cmp	dx,0
		jbe	..@j796
		jmp	..@j797
..@j796:
		mov	word [bp-4],0
		mov	word [bp-2],0
		jmp	..@j794
..@j797:
		mov	ax,word [bp+12]
		mov	word [bp-22],ax
		cmp	word [bp+4],0
		je	..@j803
		jmp	..@j804
..@j803:
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		mov	word [bp-20],0
		mov	word [bp-18],0
		mov	word [bp-8],0
		mov	word [bp-6],0
		jmp	..@j812
	ALIGN 2
..@j811:
		mov	bx,word [bp-22]
		mov	ax,0
		mov	dl,byte [bx]
		mov	dh,0
		mov	bx,word [bp+6]
		cmp	ax,word [bx+27]
		jl	..@j814
		jg	..@j815
		cmp	dx,word [bx+25]
		jbe	..@j814
		jmp	..@j815
		jmp	..@j815
..@j814:
		mov	bx,word [bp+6]
		mov	bx,word [bx+23]
		mov	si,word [bp-22]
		mov	al,byte [si]
		mov	ah,0
		mov	si,ax
		mov	cl,2
		shl	si,cl
		cmp	byte [bx+si+2],1
		je	..@j818
		jmp	..@j817
..@j818:
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		cmp	dx,word [bp-10]
		jl	..@j816
		jg	..@j817
		cmp	ax,word [bp-12]
		jb	..@j816
		jmp	..@j817
		jmp	..@j817
..@j816:
		inc	word [bp-22]
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		add	ax,1
		adc	dx,0
		mov	word [bp-8],ax
		mov	word [bp-6],dx
..@j817:
..@j815:
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		add	ax,1
		adc	dx,0
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		inc	word [bp-22]
		mov	ax,word [bp-20]
		mov	dx,word [bp-18]
		add	ax,1
		adc	dx,0
		mov	word [bp-20],ax
		mov	word [bp-18],dx
..@j812:
		mov	dx,word [bp-8]
		mov	ax,word [bp-6]
		cmp	ax,word [bp-10]
		jl	..@j811
		jg	..@j813
		cmp	dx,word [bp-12]
		jbe	..@j811
		jmp	..@j813
		jmp	..@j813
..@j813:
		mov	ax,word [bp-20]
		mov	word [bp-4],ax
		mov	ax,word [bp-18]
		mov	word [bp-2],ax
		jmp	..@j794
..@j804:
		mov	ax,word [bp+4]
		mov	word [bp-24],ax
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		mov	word [bp-8],0
		mov	word [bp-6],0
		jmp	..@j834
	ALIGN 2
..@j833:
		mov	bx,word [bp-22]
		mov	ax,0
		mov	dl,byte [bx]
		mov	dh,0
		mov	bx,word [bp+6]
		cmp	ax,word [bx+27]
		jl	..@j836
		jg	..@j837
		cmp	dx,word [bx+25]
		jbe	..@j836
		jmp	..@j837
		jmp	..@j837
..@j836:
		mov	bx,word [bp+6]
		mov	bx,word [bx+23]
		mov	si,word [bp-22]
		mov	al,byte [si]
		mov	ah,0
		mov	si,ax
		mov	cl,2
		shl	si,cl
		cmp	byte [bx+si+2],1
		je	..@j838
		jmp	..@j839
..@j838:
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		cmp	dx,word [bp-10]
		jl	..@j840
		jg	..@j841
		cmp	ax,word [bp-12]
		jb	..@j840
		jmp	..@j841
		jmp	..@j841
..@j840:
		mov	bx,word [bp-22]
		mov	al,byte [bx]
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-16],cx
		mov	word [bp-14],ax
		inc	word [bp-22]
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		add	ax,1
		adc	dx,0
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		mov	si,word [bp-22]
		mov	bx,0
		mov	dl,byte [si]
		mov	dh,0
		mov	ax,word [bp-16]
		mov	cx,word [bp-14]
		add	ax,dx
		adc	cx,bx
		mov	word [bp-16],ax
		mov	word [bp-14],cx
		mov	bx,word [bp+6]
		mov	dx,word [bx+25]
		mov	ax,word [bx+27]
		cmp	ax,word [bp-14]
		jg	..@j848
		jl	..@j849
		cmp	dx,word [bp-16]
		jae	..@j848
		jmp	..@j849
		jmp	..@j849
..@j848:
		mov	bx,word [bp+6]
		mov	bx,word [bx+23]
		mov	ax,word [bp-16]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	di,word [bp-24]
		mov	ax,word [bx+si]
		mov	word [di],ax
		jmp	..@j852
..@j849:
		mov	bx,word [bp-24]
		mov	word [bx],63
..@j852:
		jmp	..@j855
..@j841:
		mov	bx,word [bp-24]
		mov	word [bx],63
..@j855:
		jmp	..@j858
..@j839:
		mov	bx,word [bp+6]
		mov	bx,word [bx+23]
		mov	si,word [bp-22]
		mov	al,byte [si]
		mov	ah,0
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	di,word [bp-24]
		mov	ax,word [bx+si]
		mov	word [di],ax
..@j858:
		jmp	..@j861
..@j837:
		mov	bx,word [bp-24]
		mov	word [bx],63
..@j861:
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		add	ax,1
		adc	dx,0
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		inc	word [bp-22]
		add	word [bp-24],2
..@j834:
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		cmp	dx,word [bp-10]
		jl	..@j833
		jg	..@j835
		cmp	ax,word [bp-12]
		jbe	..@j833
		jmp	..@j835
		jmp	..@j835
..@j835:
		mov	ax,0
		push	ax
		mov	ax,2
		push	ax
		mov	ax,word [bp-24]
		mov	dx,0
		mov	cx,word [bp+4]
		mov	bx,0
		sub	ax,cx
		sbb	dx,bx
		push	dx
		push	ax
		call	fpc_div_longint
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j794:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	fpc_div_longint
