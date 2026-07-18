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
	GLOBAL fpc_shortstr_currency
fpc_shortstr_currency:
	GLOBAL FPC_SHORTSTR_CURRENCY
FPC_SHORTSTR_CURRENCY:
		push	bp
		mov	bp,sp
		sub	sp,80
		lea	ax,[bp-19]
		push	ax
		mov	ax,19
		push	ax
		mov	ax,48
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
		cmp	word [bp+10],-32767
		je	..@j6751
		jmp	..@j6752
..@j6751:
		mov	word [bp+10],25
..@j6752:
		lea	bx,[bp+12]
		mov	cx,word [bx]
		mov	dx,word [bx+2]
		mov	si,word [bx+4]
		mov	ax,word [bx+6]
		cmp	ax,0
		jg	..@j6755
		jl	..@j6756
		cmp	si,0
		ja	..@j6755
		jb	..@j6756
		cmp	dx,0
		ja	..@j6755
		jb	..@j6756
		cmp	cx,0
		jae	..@j6755
		jmp	..@j6756
..@j6755:
		lea	si,[bp+12]
		lea	di,[bp-60]
		push	ss
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		mov	word [bp-44],0
		mov	word [bp-42],0
		jmp	..@j6761
..@j6756:
		mov	word [bp-44],1
		mov	word [bp-42],0
		lea	bx,[bp+12]
		mov	si,word [bx]
		mov	cx,word [bx+2]
		mov	dx,word [bx+4]
		mov	ax,word [bx+6]
		not	dx
		not	ax
		not	cx
		neg	si
		sbb	cx,-1
		sbb	dx,-1
		sbb	ax,-1
		mov	word [bp-60],si
		mov	word [bp-58],cx
		mov	word [bp-56],dx
		mov	word [bp-54],ax
..@j6761:
		mov	word [bp-40],0
		mov	word [bp-38],0
	ALIGN 2
..@j6768:
		add	word [bp-40],1
		adc	word [bp-38],0
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,10
		push	ax
		push	word [bp-54]
		push	word [bp-56]
		push	word [bp-58]
		push	word [bp-60]
		call	fpc_mod_qword
		add	dx,48
		adc	cx,0
		adc	bx,0
		adc	ax,0
		mov	si,word [bp-40]
		mov	byte [bp+si-20],dl
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,10
		push	ax
		push	word [bp-54]
		push	word [bp-56]
		push	word [bp-58]
		push	word [bp-60]
		call	fpc_div_qword
		mov	word [bp-60],dx
		mov	word [bp-58],cx
		mov	word [bp-56],bx
		mov	word [bp-54],ax
		mov	cx,word [bp-60]
		mov	ax,word [bp-58]
		mov	dx,word [bp-56]
		mov	bx,word [bp-54]
		cmp	bx,0
		jne	..@j6768
		cmp	dx,0
		jne	..@j6768
		cmp	ax,0
		jne	..@j6768
		cmp	cx,0
		jne	..@j6768
		jmp	..@j6770
..@j6770:
		mov	ax,word [bp-40]
		mov	word [bp-36],ax
		mov	ax,word [bp-38]
		mov	word [bp-34],ax
		cmp	word [bp+8],0
		jne	..@j6785
		jmp	..@j6786
..@j6785:
		add	word [bp-36],1
		adc	word [bp-34],0
..@j6786:
		cmp	word [bp+8],0
		jl	..@j6787
		jmp	..@j6788
..@j6787:
		add	word [bp-36],5
		adc	word [bp-34],0
		cmp	word [bp+10],8
		jl	..@j6789
		jmp	..@j6790
..@j6789:
		mov	word [bp+10],8
..@j6790:
		mov	ax,word [bp+10]
		cwd
		mov	bx,word [bp-36]
		mov	cx,word [bp-34]
		sub	bx,ax
		sbb	cx,dx
		mov	word [bp-48],bx
		mov	word [bp-46],cx
		mov	ax,word [bp+10]
		cwd
		cmp	dx,word [bp-34]
		jg	..@j6795
		jl	..@j6796
		cmp	ax,word [bp-36]
		ja	..@j6795
		jmp	..@j6796
		jmp	..@j6796
..@j6795:
		mov	ax,word [bp+10]
		cwd
		mov	word [bp-36],ax
		mov	word [bp-34],dx
..@j6796:
		mov	ax,word [bp-48]
		mov	dx,word [bp-46]
		cmp	dx,0
		jg	..@j6799
		jl	..@j6800
		cmp	ax,0
		ja	..@j6799
		jmp	..@j6800
..@j6799:
		mov	ax,word [bp+10]
		cwd
		mov	word [bp-36],ax
		mov	word [bp-34],dx
		mov	ax,word [bp-40]
		mov	dx,word [bp-38]
		mov	bx,word [bp-48]
		mov	cx,word [bp-46]
		sub	ax,bx
		sbb	dx,cx
		mov	word [bp-52],ax
		mov	word [bp-50],dx
		jmp	..@j6805
..@j6800:
		mov	ax,word [bp-40]
		mov	word [bp-52],ax
		mov	ax,word [bp-38]
		mov	word [bp-50],ax
..@j6805:
		jmp	..@j6808
..@j6788:
		mov	dx,word [bp-44]
		mov	ax,word [bp-42]
		add	word [bp-36],dx
		adc	word [bp-34],ax
		jmp	..@j6810
	ALIGN 2
..@j6809:
		add	word [bp-36],1
		adc	word [bp-34],0
		add	word [bp-40],1
		adc	word [bp-38],0
		mov	si,word [bp-40]
		mov	byte [bp+si-20],48
..@j6810:
		mov	ax,word [bp-40]
		mov	dx,word [bp-38]
		cmp	dx,0
		jl	..@j6809
		jg	..@j6811
		cmp	ax,5
		jb	..@j6809
		jmp	..@j6811
..@j6811:
		mov	dx,word [bp+8]
		mov	ax,4
		sub	ax,dx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-48],cx
		mov	word [bp-46],ax
		mov	ax,word [bp+8]
		cwd
		mov	word [bp-52],ax
		mov	word [bp-50],dx
		mov	ax,word [bp-52]
		mov	dx,word [bp-50]
		cmp	dx,0
		jne	..@j6818
		cmp	ax,0
		jne	..@j6818
		jmp	..@j6819
..@j6818:
		mov	ax,word [bp-52]
		mov	dx,word [bp-50]
		cmp	dx,0
		jg	..@j6820
		jl	..@j6821
		cmp	ax,4
		ja	..@j6820
		jmp	..@j6821
..@j6820:
		mov	word [bp-52],4
		mov	word [bp-50],0
..@j6821:
		add	word [bp-52],1
		adc	word [bp-50],0
..@j6819:
		mov	ax,word [bp-48]
		mov	dx,word [bp-46]
		sub	word [bp-36],ax
		sbb	word [bp-34],dx
..@j6808:
		mov	ax,word [bp-48]
		mov	dx,word [bp-46]
		cmp	dx,0
		jg	..@j6824
		jl	..@j6825
		cmp	ax,0
		ja	..@j6824
		jmp	..@j6825
..@j6824:
		mov	word [bp-32],0
		mov	word [bp-30],0
		mov	ax,word [bp-48]
		mov	dx,word [bp-46]
		add	ax,2
		adc	dx,0
		mov	word [bp-24],ax
		mov	word [bp-22],dx
		mov	ax,word [bp-24]
		mov	dx,word [bp-22]
		cmp	dx,word [bp-38]
		jg	..@j6830
		jl	..@j6831
		cmp	ax,word [bp-40]
		ja	..@j6830
		jmp	..@j6831
		jmp	..@j6831
..@j6830:
		mov	ax,word [bp-40]
		mov	dx,word [bp-38]
		add	ax,1
		adc	dx,0
		mov	word [bp-24],ax
		mov	word [bp-22],dx
..@j6831:
		mov	si,word [bp-24]
		mov	ax,word [bp-22]
		sub	si,2
		sbb	ax,0
		cmp	byte [bp+si-20],53
		jae	..@j6834
		jmp	..@j6835
..@j6834:
		mov	si,word [bp-24]
		mov	ax,word [bp-22]
		sub	si,1
		sbb	ax,0
		cmp	byte [bp+si-20],57
		jb	..@j6836
		jmp	..@j6837
..@j6836:
		mov	si,word [bp-24]
		mov	ax,word [bp-22]
		sub	si,1
		sbb	ax,0
		mov	al,byte [bp+si-20]
		mov	ah,0
		inc	ax
		mov	si,word [bp-24]
		mov	dx,word [bp-22]
		sub	si,1
		sbb	dx,0
		mov	byte [bp+si-20],al
		jmp	..@j6840
..@j6837:
		mov	si,word [bp-24]
		mov	ax,word [bp-22]
		sub	si,1
		sbb	ax,0
		mov	byte [bp+si-20],48
		mov	word [bp-32],1
		mov	word [bp-30],0
..@j6840:
..@j6835:
		mov	dx,word [bp-32]
		mov	ax,word [bp-30]
		cmp	ax,0
		jne	..@j6846
		cmp	dx,1
		jne	..@j6846
		jmp	..@j6847
..@j6847:
		mov	si,word [bp-24]
		mov	ax,word [bp-22]
		sub	si,1
		sbb	ax,0
		cmp	byte [bp+si-20],48
		je	..@j6845
		jmp	..@j6846
..@j6845:
		jmp	..@j6849
	ALIGN 2
..@j6848:
		mov	si,word [bp-24]
		mov	byte [bp+si-20],48
		add	word [bp-24],1
		adc	word [bp-22],0
..@j6849:
		mov	si,word [bp-24]
		cmp	byte [bp+si-20],57
		je	..@j6848
		jmp	..@j6850
..@j6850:
		mov	si,word [bp-24]
		mov	al,byte [bp+si-20]
		mov	ah,0
		inc	ax
		mov	si,word [bp-24]
		mov	byte [bp+si-20],al
		mov	ax,word [bp-24]
		mov	dx,word [bp-22]
		cmp	dx,word [bp-38]
		jg	..@j6855
		jl	..@j6856
		cmp	ax,word [bp-40]
		ja	..@j6855
		jmp	..@j6856
		jmp	..@j6856
..@j6855:
		add	word [bp-36],1
		adc	word [bp-34],0
		add	word [bp-40],1
		adc	word [bp-38],0
..@j6856:
..@j6846:
..@j6825:
		mov	ax,word [bp+10]
		cwd
		cmp	dx,word [bp-34]
		jg	..@j6857
		jl	..@j6858
		cmp	ax,word [bp-36]
		ja	..@j6857
		jmp	..@j6858
		jmp	..@j6858
..@j6857:
		mov	ax,word [bp+10]
		cwd
		mov	word [bp-36],ax
		mov	word [bp-34],dx
..@j6858:
		mov	ax,word [bp+4]
		cwd
		cmp	dx,word [bp-34]
		jl	..@j6861
		jg	..@j6862
		cmp	ax,word [bp-36]
		jb	..@j6861
		jmp	..@j6862
		jmp	..@j6862
..@j6861:
		mov	ax,word [bp-48]
		mov	dx,word [bp-46]
		cmp	dx,0
		jl	..@j6863
		jg	..@j6864
		cmp	ax,0
		jb	..@j6863
		jmp	..@j6864
..@j6863:
		mov	ax,word [bp+4]
		cwd
		mov	bx,word [bp-36]
		mov	cx,word [bp-34]
		sub	bx,ax
		sbb	cx,dx
		add	word [bp-48],bx
		adc	word [bp-46],cx
..@j6864:
		mov	ax,word [bp+4]
		cwd
		mov	word [bp-36],ax
		mov	word [bp-34],dx
..@j6862:
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		push	word [bp-36]
		call	fpc_shortstr_setlength
		mov	ax,word [bp-36]
		mov	word [bp-28],ax
		mov	ax,word [bp-34]
		mov	word [bp-26],ax
		cmp	word [bp+8],0
		jl	..@j6875
		jmp	..@j6876
..@j6875:
		lea	bx,[bp+12]
		mov	dx,word [bx]
		mov	si,word [bx+2]
		mov	cx,word [bx+4]
		mov	ax,word [bx+6]
		cmp	ax,0
		jne	..@j6878
		cmp	cx,0
		jne	..@j6878
		cmp	si,0
		jne	..@j6878
		cmp	dx,0
		jne	..@j6878
		jmp	..@j6877
..@j6877:
		mov	word [bp-32],0
		mov	word [bp-30],0
		jmp	..@j6881
..@j6878:
		mov	ax,word [bp-40]
		mov	dx,word [bp-38]
		sub	ax,5
		sbb	dx,0
		mov	word [bp-32],ax
		mov	word [bp-30],dx
..@j6881:
		mov	dx,word [bp-32]
		mov	ax,word [bp-30]
		cmp	ax,0
		jg	..@j6884
		jl	..@j6885
		cmp	dx,0
		jae	..@j6884
		jmp	..@j6885
..@j6884:
		mov	bx,word [bp+6]
		mov	dx,word [bp-28]
		mov	ax,word [bp-26]
		sub	dx,2
		sbb	ax,0
		mov	byte [bp-72],dl
		mov	byte [bp-71],0
		mov	si,word [bp-72]
		mov	byte [bx+si],43
		jmp	..@j6888
..@j6885:
		mov	bx,word [bp+6]
		mov	dx,word [bp-28]
		mov	ax,word [bp-26]
		sub	dx,2
		sbb	ax,0
		mov	byte [bp-70],dl
		mov	byte [bp-69],0
		mov	si,word [bp-70]
		mov	byte [bx+si],45
		mov	ax,word [bp-32]
		mov	dx,word [bp-30]
		not	dx
		neg	ax
		sbb	dx,-1
		mov	word [bp-32],ax
		mov	word [bp-30],dx
..@j6888:
		mov	ax,0
		push	ax
		mov	ax,10
		push	ax
		push	word [bp-30]
		push	word [bp-32]
		call	fpc_mod_longint
		add	ax,48
		adc	dx,0
		mov	bx,word [bp+6]
		mov	dl,byte [bp-28]
		mov	byte [bp-76],dl
		mov	byte [bp-75],0
		mov	si,word [bp-76]
		mov	byte [bx+si],al
		sub	word [bp-28],1
		sbb	word [bp-26],0
		mov	ax,0
		push	ax
		mov	ax,10
		push	ax
		push	word [bp-30]
		push	word [bp-32]
		call	fpc_div_longint
		add	ax,48
		adc	dx,0
		mov	bx,word [bp+6]
		mov	dl,byte [bp-28]
		mov	byte [bp-78],dl
		mov	byte [bp-77],0
		mov	si,word [bp-78]
		mov	byte [bx+si],al
		sub	word [bp-28],2
		sbb	word [bp-26],0
		mov	bx,word [bp+6]
		mov	al,byte [bp-28]
		mov	byte [bp-66],al
		mov	byte [bp-65],0
		mov	si,word [bp-66]
		mov	byte [bx+si],69
		sub	word [bp-28],1
		sbb	word [bp-26],0
..@j6876:
		jmp	..@j6908
	ALIGN 2
..@j6907:
		mov	bx,word [bp+6]
		mov	al,byte [bp-28]
		mov	byte [bp-62],al
		mov	byte [bp-61],0
		mov	si,word [bp-62]
		mov	byte [bx+si],48
		sub	word [bp-28],1
		sbb	word [bp-26],0
		add	word [bp-48],1
		adc	word [bp-46],0
..@j6908:
		mov	ax,word [bp-48]
		mov	dx,word [bp-46]
		cmp	dx,0
		jl	..@j6907
		jg	..@j6909
		cmp	ax,0
		jb	..@j6907
		jmp	..@j6909
..@j6909:
		mov	cx,word [bp-40]
		mov	dx,word [bp-38]
		mov	ax,word [bp-48]
		mov	bx,word [bp-46]
		add	ax,1
		adc	bx,0
		mov	word [bp-24],ax
		mov	word [bp-22],bx
		cmp	dx,word [bp-22]
		jl	..@j6915
		jg	..@j6917
		cmp	cx,word [bp-24]
		jb	..@j6915
..@j6917:
		sub	word [bp-24],1
		sbb	word [bp-22],0
	ALIGN 2
..@j6916:
		add	word [bp-24],1
		adc	word [bp-22],0
		sub	word [bp-52],1
		sbb	word [bp-50],0
		mov	bx,word [bp-52]
		mov	ax,word [bp-50]
		cmp	ax,0
		jne	..@j6919
		cmp	bx,0
		jne	..@j6919
		jmp	..@j6918
..@j6918:
		mov	bx,word [bp+6]
		mov	al,byte [bp-28]
		mov	byte [bp-74],al
		mov	byte [bp-73],0
		mov	si,word [bp-74]
		mov	byte [bx+si],46
		sub	word [bp-28],1
		sbb	word [bp-26],0
..@j6919:
		mov	bx,word [bp+6]
		mov	al,byte [bp-28]
		mov	byte [bp-80],al
		mov	byte [bp-79],0
		mov	si,word [bp-24]
		mov	al,byte [bp+si-20]
		mov	si,word [bp-80]
		mov	byte [bx+si],al
		sub	word [bp-28],1
		sbb	word [bp-26],0
		cmp	dx,word [bp-22]
		jg	..@j6916
		jl	..@j6924
		cmp	cx,word [bp-24]
		ja	..@j6916
..@j6924:
..@j6915:
		mov	dx,word [bp-44]
		mov	ax,word [bp-42]
		cmp	ax,0
		jne	..@j6926
		cmp	dx,1
		jne	..@j6926
		jmp	..@j6925
..@j6925:
		mov	bx,word [bp+6]
		mov	al,byte [bp-28]
		mov	byte [bp-68],al
		mov	byte [bp-67],0
		mov	si,word [bp-68]
		mov	byte [bx+si],45
		sub	word [bp-28],1
		sbb	word [bp-26],0
..@j6926:
		jmp	..@j6930
	ALIGN 2
..@j6929:
		mov	bx,word [bp+6]
		mov	al,byte [bp-28]
		mov	byte [bp-64],al
		mov	byte [bp-63],0
		mov	si,word [bp-64]
		mov	byte [bx+si],32
		sub	word [bp-28],1
		sbb	word [bp-26],0
..@j6930:
		mov	dx,word [bp-28]
		mov	ax,word [bp-26]
		cmp	ax,0
		jg	..@j6929
		jl	..@j6931
		cmp	dx,0
		ja	..@j6929
		jmp	..@j6931
..@j6931:
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	fpc_div_longint
EXTERN	fpc_mod_longint
EXTERN	fpc_shortstr_setlength
EXTERN	fpc_div_qword
EXTERN	fpc_mod_qword
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
