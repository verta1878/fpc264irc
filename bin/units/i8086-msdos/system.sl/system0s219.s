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
	GLOBAL SYSTEM_$$_K_REM_PIO2$TDA02$TDA02$SMALLINT$SMALLINT$SMALLINT$$SMALLINT
SYSTEM_$$_K_REM_PIO2$TDA02$TDA02$SMALLINT$SMALLINT$SMALLINT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,654
		mov	ax,word [bp+4]
		mov	bx,ax
		shl	bx,1
		mov	ax,word [TC_$SYSTEM_$$_INIT_JK+bx]
		cwd
		mov	word [bp-34],ax
		mov	word [bp-32],dx
		mov	ax,word [bp-34]
		mov	word [bp-30],ax
		mov	ax,word [bp-32]
		mov	word [bp-28],ax
		mov	ax,word [bp+6]
		dec	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-22],cx
		mov	word [bp-20],ax
		mov	cx,word [bp+8]
		sub	cx,3
		mov	ax,10923
		imul	cx
		mov	ax,cx
		mov	cl,2
		sar	dx,cl
		mov	cl,15
		shr	ax,cl
		add	dx,ax
		mov	ax,dx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-26],cx
		mov	word [bp-24],ax
		mov	ax,word [bp-26]
		mov	dx,word [bp-24]
		cmp	dx,0
		jl	..@j2722
		jg	..@j2723
		cmp	ax,0
		jb	..@j2722
		jmp	..@j2723
..@j2722:
		mov	word [bp-26],0
		mov	word [bp-24],0
..@j2723:
		mov	ax,word [bp+8]
		cwd
		mov	word [bp-644],ax
		mov	word [bp-646],dx
		mov	ax,0
		push	ax
		mov	ax,24
		push	ax
		mov	ax,word [bp-26]
		mov	dx,word [bp-24]
		add	ax,1
		adc	dx,0
		push	dx
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		mov	cx,word [bp-644]
		mov	bx,word [bp-646]
		sub	cx,ax
		sbb	bx,dx
		mov	word [bp-50],cx
		mov	word [bp-48],bx
		mov	ax,word [bp-26]
		mov	dx,word [bp-24]
		mov	cx,word [bp-22]
		mov	bx,word [bp-20]
		sub	ax,cx
		sbb	dx,bx
		mov	word [bp-14],ax
		mov	word [bp-12],dx
		mov	dx,word [bp-22]
		mov	cx,word [bp-20]
		mov	ax,word [bp-34]
		mov	di,word [bp-32]
		add	ax,dx
		adc	di,cx
		mov	word [bp-6],0
		mov	word [bp-4],0
		cmp	di,word [bp-4]
		jl	..@j2739
		jg	..@j2741
		cmp	ax,word [bp-6]
		jb	..@j2739
..@j2741:
		sub	word [bp-6],1
		sbb	word [bp-4],0
	ALIGN 2
..@j2740:
		add	word [bp-6],1
		adc	word [bp-4],0
		mov	cx,word [bp-14]
		mov	dx,word [bp-12]
		cmp	dx,0
		jl	..@j2742
		jg	..@j2743
		cmp	cx,0
		jb	..@j2742
		jmp	..@j2743
..@j2742:
		mov	dx,word [bp-6]
		mov	si,dx
		mov	cl,3
		shl	si,cl
		wait fldz
		wait fstp	qword [bp+si-294]
		DB	09bh
		jmp	..@j2746
..@j2743:
		mov	bx,word [bp-14]
		mov	cl,2
		shl	bx,cl
		wait fild	dword [TC_$SYSTEM_$$_IPIO2+bx]
		mov	dx,word [bp-6]
		mov	si,dx
		mov	cl,3
		shl	si,cl
		wait fstp	qword [bp+si-294]
		DB	09bh
..@j2746:
		add	word [bp-14],1
		adc	word [bp-12],0
		cmp	di,word [bp-4]
		jg	..@j2740
		jl	..@j2749
		cmp	ax,word [bp-6]
		ja	..@j2740
..@j2749:
..@j2739:
		mov	ax,word [bp-34]
		mov	word [bp-650],ax
		mov	ax,word [bp-32]
		mov	word [bp-648],ax
		mov	word [bp-6],0
		mov	word [bp-4],0
		mov	ax,word [bp-648]
		cmp	ax,word [bp-4]
		jl	..@j2753
		jg	..@j2755
		mov	ax,word [bp-650]
		cmp	ax,word [bp-6]
		jb	..@j2753
..@j2755:
		sub	word [bp-6],1
		sbb	word [bp-4],0
	ALIGN 2
..@j2754:
		add	word [bp-6],1
		adc	word [bp-4],0
		wait fldz
		wait fstp	qword [bp-630]
		DB	09bh
		mov	ax,word [bp-22]
		mov	dx,word [bp-20]
		mov	word [bp-14],0
		mov	word [bp-12],0
		cmp	dx,word [bp-12]
		jl	..@j2761
		jg	..@j2763
		cmp	ax,word [bp-14]
		jb	..@j2761
..@j2763:
		sub	word [bp-14],1
		sbb	word [bp-12],0
	ALIGN 2
..@j2762:
		add	word [bp-14],1
		adc	word [bp-12],0
		mov	bx,word [bp-22]
		mov	si,word [bp-20]
		mov	cx,word [bp-6]
		mov	di,word [bp-4]
		add	cx,bx
		adc	di,si
		mov	bx,word [bp-14]
		mov	si,word [bp-12]
		sub	cx,bx
		sbb	di,si
		mov	di,cx
		mov	cl,3
		shl	di,cl
		mov	bx,word [bp+12]
		mov	cx,word [bp-14]
		mov	si,cx
		mov	cl,3
		shl	si,cl
		wait fld	qword [bx+si]
		wait fmul	qword [bp+di-294]
		wait fadd	qword [bp-630]
		wait fstp	qword [bp-630]
		DB	09bh
		cmp	dx,word [bp-12]
		jg	..@j2762
		jl	..@j2766
		cmp	ax,word [bp-14]
		ja	..@j2762
..@j2766:
..@j2761:
		mov	ax,word [bp-6]
		mov	si,ax
		mov	cl,3
		shl	si,cl
		lea	di,[bp+si-614]
		push	ss
		pop	es
		lea	si,[bp-630]
		cld
		mov	cx,4
		rep
		movsw
		mov	ax,word [bp-648]
		cmp	ax,word [bp-4]
		jg	..@j2754
		jl	..@j2769
		mov	ax,word [bp-650]
		cmp	ax,word [bp-6]
		ja	..@j2754
..@j2769:
..@j2753:
		mov	ax,word [bp-34]
		mov	word [bp-18],ax
		mov	ax,word [bp-32]
		mov	word [bp-16],ax
	ALIGN 2
..@j2772:
		mov	word [bp-6],0
		mov	word [bp-4],0
		mov	ax,word [bp-18]
		mov	si,ax
		mov	cl,3
		shl	si,cl
		lea	di,[bp-622]
		push	ss
		pop	es
		lea	si,[bp+si-614]
		cld
		mov	cx,4
		rep
		movsw
		mov	dx,word [bp-18]
		mov	ax,word [bp-16]
		mov	word [bp-14],dx
		mov	word [bp-12],ax
		cmp	word [bp-12],0
		jl	..@j2780
		jg	..@j2782
		cmp	word [bp-14],1
		jb	..@j2780
..@j2782:
		add	word [bp-14],1
		adc	word [bp-12],0
	ALIGN 2
..@j2781:
		sub	word [bp-14],1
		sbb	word [bp-12],0
		fstcw	[bp-634]
		fstcw	[bp-632]
		DB	09bh
		or	word [bp-634],3840
		wait fld	qword [bp-622]
		wait fmul	qword [TC_$SYSTEM_$$_TWON24]
		wait fldcw	[bp-634]
		wait fistp	qword [bp-642]
		wait fldcw	[bp-632]
		DB	09bh
		wait fild	qword [bp-642]
		wait fstp	qword [bp-630]
		DB	09bh
		fstcw	[bp-634]
		fstcw	[bp-632]
		DB	09bh
		or	word [bp-634],3840
		wait fld	qword [bp-630]
		wait fmul	qword [TC_$SYSTEM_$$_TWO24]
		wait fsubr	qword [bp-622]
		wait fldcw	[bp-634]
		wait fistp	qword [bp-642]
		wait fldcw	[bp-632]
		DB	09bh
		mov	si,word [bp-6]
		mov	cl,2
		shl	si,cl
		mov	ax,word [bp-642]
		mov	word [bp+si-134],ax
		mov	ax,word [bp-640]
		mov	word [bp+si-132],ax
		mov	si,word [bp-14]
		mov	ax,word [bp-12]
		sub	si,1
		sbb	ax,0
		mov	cl,3
		shl	si,cl
		wait fld	qword [bp-630]
		wait fadd	qword [bp+si-614]
		wait fstp	qword [bp-622]
		DB	09bh
		add	word [bp-6],1
		adc	word [bp-4],0
		cmp	word [bp-12],0
		jg	..@j2781
		jl	..@j2789
		cmp	word [bp-14],1
		ja	..@j2781
..@j2789:
..@j2780:
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp-622]
		cld
		mov	cx,4
		rep
		movsw
		push	word [bp-50]
		call	SYSTEM_$$_LDEXP$REAL$SMALLINT$$REAL
		wait fstp	qword [bp-622]
		DB	09bh
		wait fld	qword [bp-622]
		wait fld	tword [_$SYSTEM$_Ld9]
		wait fmulp	st1,st0
		wait fstp	qword [bp-638]
		DB	09bh
		wait fld	qword [bp-638]
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		call	SYSTEM_$$_FLOORD$DOUBLE$$DOUBLE
		wait fld	tword [_$SYSTEM$_Ld8]
		wait fmulp	st1,st0
		wait fld	qword [bp-622]
		wait fsubrp	st1,st0
		wait fstp	qword [bp-622]
		DB	09bh
		fstcw	[bp-634]
		fstcw	[bp-632]
		DB	09bh
		or	word [bp-634],3840
		wait fld	qword [bp-622]
		wait fldcw	[bp-634]
		wait fistp	qword [bp-642]
		wait fldcw	[bp-632]
		DB	09bh
		mov	ax,word [bp-642]
		mov	word [bp-46],ax
		mov	ax,word [bp-640]
		mov	word [bp-44],ax
		wait fild	dword [bp-46]
		wait fsubr	qword [bp-622]
		wait fstp	qword [bp-622]
		DB	09bh
		mov	word [bp-10],0
		mov	word [bp-8],0
		mov	dx,word [bp-50]
		mov	ax,word [bp-48]
		cmp	ax,0
		jg	..@j2806
		jl	..@j2807
		cmp	dx,0
		ja	..@j2806
		jmp	..@j2807
..@j2806:
		mov	si,word [bp-18]
		mov	ax,word [bp-16]
		sub	si,1
		sbb	ax,0
		mov	cl,2
		shl	si,cl
		mov	bx,word [bp-50]
		mov	ax,word [bp-48]
		mov	cx,24
		mov	dx,0
		sub	cx,bx
		sbb	dx,ax
		mov	ax,word [bp+si-134]
		mov	dx,word [bp+si-132]
		and	cx,31
		jz	..@j2810
..@j2811:
		shr	dx,1
		rcr	ax,1
		loop	..@j2811
..@j2810:
		mov	word [bp-54],ax
		mov	word [bp-52],dx
		mov	ax,word [bp-54]
		mov	dx,word [bp-52]
		add	word [bp-46],ax
		adc	word [bp-44],dx
		mov	ax,word [bp-50]
		mov	dx,word [bp-48]
		mov	cx,24
		mov	bx,0
		sub	cx,ax
		sbb	bx,dx
		mov	bx,word [bp-54]
		mov	dx,word [bp-52]
		and	cx,31
		jz	..@j2812
..@j2813:
		shl	bx,1
		rcl	dx,1
		loop	..@j2813
..@j2812:
		mov	si,word [bp-18]
		mov	ax,word [bp-16]
		sub	si,1
		sbb	ax,0
		mov	cl,2
		shl	si,cl
		sub	word [bp+si-134],bx
		sbb	word [bp+si-132],dx
		mov	si,word [bp-18]
		mov	ax,word [bp-16]
		sub	si,1
		sbb	ax,0
		mov	cl,2
		shl	si,cl
		mov	bx,word [bp-50]
		mov	ax,word [bp-48]
		mov	cx,23
		mov	dx,0
		sub	cx,bx
		sbb	dx,ax
		mov	ax,word [bp+si-134]
		mov	dx,word [bp+si-132]
		and	cx,31
		jz	..@j2816
..@j2817:
		shr	dx,1
		rcr	ax,1
		loop	..@j2817
..@j2816:
		mov	word [bp-10],ax
		mov	word [bp-8],dx
		jmp	..@j2818
..@j2807:
		mov	ax,word [bp-50]
		mov	dx,word [bp-48]
		cmp	dx,0
		jne	..@j2820
		cmp	ax,0
		jne	..@j2820
		jmp	..@j2819
..@j2819:
		mov	si,word [bp-18]
		mov	ax,word [bp-16]
		sub	si,1
		sbb	ax,0
		mov	cl,2
		shl	si,cl
		mov	ax,word [bp+si-134]
		mov	dx,word [bp+si-132]
		mov	ax,dx
		mov	dx,0
		mov	cl,7
		shr	ax,cl
		mov	word [bp-10],ax
		mov	word [bp-8],dx
		jmp	..@j2823
..@j2820:
		wait fld	qword [bp-622]
		wait fld	tword [_$SYSTEM$_Ld3]
		wait fcompp
		fstsw	[bp-632]
		mov	ah,byte [bp-631]
		sahf
		jp	..@j2826
		jbe	..@j2824
..@j2826:
		jmp	..@j2825
..@j2824:
		mov	word [bp-10],2
		mov	word [bp-8],0
..@j2825:
..@j2823:
..@j2818:
		mov	ax,word [bp-10]
		mov	dx,word [bp-8]
		cmp	dx,0
		jg	..@j2829
		jl	..@j2830
		cmp	ax,0
		ja	..@j2829
		jmp	..@j2830
..@j2829:
		add	word [bp-46],1
		adc	word [bp-44],0
		mov	word [bp-38],0
		mov	word [bp-36],0
		mov	ax,word [bp-18]
		mov	dx,word [bp-16]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-6],0
		mov	word [bp-4],0
		cmp	dx,word [bp-4]
		jl	..@j2836
		jg	..@j2838
		cmp	ax,word [bp-6]
		jb	..@j2836
..@j2838:
		sub	word [bp-6],1
		sbb	word [bp-4],0
	ALIGN 2
..@j2837:
		add	word [bp-6],1
		adc	word [bp-4],0
		mov	cx,word [bp-6]
		mov	si,cx
		mov	cl,2
		shl	si,cl
		mov	cx,word [bp+si-134]
		mov	word [bp-54],cx
		mov	cx,word [bp+si-132]
		mov	word [bp-52],cx
		mov	cx,word [bp-38]
		mov	bx,word [bp-36]
		cmp	bx,0
		jne	..@j2842
		cmp	cx,0
		jne	..@j2842
		jmp	..@j2841
..@j2841:
		mov	cx,word [bp-54]
		mov	bx,word [bp-52]
		cmp	bx,0
		jne	..@j2843
		cmp	cx,0
		jne	..@j2843
		jmp	..@j2844
..@j2843:
		mov	word [bp-38],1
		mov	word [bp-36],0
		mov	cx,word [bp-54]
		mov	si,word [bp-52]
		mov	di,0
		mov	bx,256
		sub	di,cx
		sbb	bx,si
		mov	cx,word [bp-6]
		mov	si,cx
		mov	cl,2
		shl	si,cl
		mov	word [bp+si-134],di
		mov	word [bp+si-132],bx
..@j2844:
		jmp	..@j2849
..@j2842:
		mov	cx,word [bp-54]
		mov	si,word [bp-52]
		mov	di,-1
		mov	bx,255
		sub	di,cx
		sbb	bx,si
		mov	cx,word [bp-6]
		mov	si,cx
		mov	cl,2
		shl	si,cl
		mov	word [bp+si-134],di
		mov	word [bp+si-132],bx
..@j2849:
		cmp	dx,word [bp-4]
		jg	..@j2837
		jl	..@j2852
		cmp	ax,word [bp-6]
		ja	..@j2837
..@j2852:
..@j2836:
		mov	ax,word [bp-50]
		mov	dx,word [bp-48]
		cmp	dx,0
		jg	..@j2853
		jl	..@j2854
		cmp	ax,0
		ja	..@j2853
		jmp	..@j2854
..@j2853:
		mov	dx,word [bp-50]
		mov	ax,word [bp-48]
		test	ax,ax
		jne	..@j2859
		cmp	dx,1
		je	..@j2857
..@j2859:
		test	ax,ax
		jne	..@j2860
		cmp	dx,2
		je	..@j2858
..@j2860:
		jmp	..@j2856
..@j2857:
		mov	si,word [bp-18]
		mov	ax,word [bp-16]
		sub	si,1
		sbb	ax,0
		mov	cl,2
		shl	si,cl
		mov	ax,word [bp+si-134]
		mov	dx,word [bp+si-132]
		and	dx,127
		mov	si,word [bp-18]
		mov	cx,word [bp-16]
		sub	si,1
		sbb	cx,0
		mov	cl,2
		shl	si,cl
		mov	word [bp+si-134],ax
		mov	word [bp+si-132],dx
		jmp	..@j2855
..@j2858:
		mov	si,word [bp-18]
		mov	ax,word [bp-16]
		sub	si,1
		sbb	ax,0
		mov	cl,2
		shl	si,cl
		mov	ax,word [bp+si-134]
		mov	dx,word [bp+si-132]
		and	dx,63
		mov	si,word [bp-18]
		mov	cx,word [bp-16]
		sub	si,1
		sbb	cx,0
		mov	cl,2
		shl	si,cl
		mov	word [bp+si-134],ax
		mov	word [bp+si-132],dx
		jmp	..@j2855
..@j2856:
..@j2855:
..@j2854:
		mov	dx,word [bp-10]
		mov	ax,word [bp-8]
		cmp	ax,0
		jne	..@j2866
		cmp	dx,2
		jne	..@j2866
		jmp	..@j2865
..@j2865:
		wait fld1
		wait fld	qword [bp-622]
		wait fsubp	st1,st0
		wait fstp	qword [bp-622]
		DB	09bh
		mov	ax,word [bp-38]
		mov	dx,word [bp-36]
		cmp	dx,0
		jne	..@j2869
		cmp	ax,0
		jne	..@j2869
		jmp	..@j2870
..@j2869:
		wait fld1
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		push	word [bp-50]
		call	SYSTEM_$$_LDEXP$REAL$SMALLINT$$REAL
		wait fsubr	qword [bp-622]
		wait fstp	qword [bp-622]
		DB	09bh
..@j2870:
..@j2866:
..@j2830:
		wait fld	qword [bp-622]
		wait fldz
		wait fcompp
		fstsw	[bp-632]
		mov	ah,byte [bp-631]
		sahf
		jp	..@j2877
		jne	..@j2877
		jmp	..@j2878
..@j2877:
		jmp	..@j2774
..@j2878:
		mov	word [bp-54],0
		mov	word [bp-52],0
		mov	bx,word [bp-34]
		mov	ax,word [bp-32]
		mov	dx,word [bp-18]
		mov	cx,word [bp-16]
		sub	dx,1
		sbb	cx,0
		mov	word [bp-6],dx
		mov	word [bp-4],cx
		cmp	ax,word [bp-4]
		jg	..@j2884
		jl	..@j2886
		cmp	bx,word [bp-6]
		ja	..@j2884
..@j2886:
		add	word [bp-6],1
		adc	word [bp-4],0
	ALIGN 2
..@j2885:
		sub	word [bp-6],1
		sbb	word [bp-4],0
		mov	si,word [bp-6]
		mov	cl,2
		shl	si,cl
		mov	dx,word [bp+si-134]
		mov	cx,word [bp+si-132]
		mov	di,word [bp-54]
		mov	si,word [bp-52]
		or	di,dx
		or	si,cx
		mov	word [bp-54],di
		mov	word [bp-52],si
		cmp	ax,word [bp-4]
		jl	..@j2885
		jg	..@j2889
		cmp	bx,word [bp-6]
		jb	..@j2885
..@j2889:
..@j2884:
		mov	dx,word [bp-54]
		mov	ax,word [bp-52]
		cmp	ax,0
		jne	..@j2890
		cmp	dx,0
		jne	..@j2890
		jmp	..@j2891
..@j2890:
		jmp	..@j2774
..@j2891:
		mov	word [bp-42],1
		mov	word [bp-40],0
		jmp	..@j2895
	ALIGN 2
..@j2894:
		add	word [bp-42],1
		adc	word [bp-40],0
..@j2895:
		mov	si,word [bp-34]
		mov	ax,word [bp-32]
		mov	dx,word [bp-42]
		mov	cx,word [bp-40]
		sub	si,dx
		sbb	ax,cx
		mov	cl,2
		shl	si,cl
		mov	dx,word [bp+si-134]
		mov	ax,word [bp+si-132]
		cmp	ax,0
		jne	..@j2896
		cmp	dx,0
		jne	..@j2896
		jmp	..@j2894
..@j2896:
		mov	bx,word [bp-18]
		mov	cx,word [bp-16]
		mov	ax,word [bp-42]
		mov	dx,word [bp-40]
		add	ax,bx
		adc	dx,cx
		mov	word [bp-654],ax
		mov	word [bp-652],dx
		mov	ax,word [bp-18]
		mov	dx,word [bp-16]
		add	ax,1
		adc	dx,0
		mov	word [bp-6],ax
		mov	word [bp-4],dx
		mov	ax,word [bp-652]
		cmp	ax,word [bp-4]
		jl	..@j2900
		jg	..@j2902
		mov	ax,word [bp-654]
		cmp	ax,word [bp-6]
		jb	..@j2900
..@j2902:
		sub	word [bp-6],1
		sbb	word [bp-4],0
	ALIGN 2
..@j2901:
		add	word [bp-6],1
		adc	word [bp-4],0
		mov	cx,word [bp-26]
		mov	dx,word [bp-24]
		mov	bx,word [bp-6]
		mov	ax,word [bp-4]
		add	bx,cx
		adc	ax,dx
		mov	cl,2
		shl	bx,cl
		wait fild	dword [TC_$SYSTEM_$$_IPIO2+bx]
		mov	cx,word [bp-22]
		mov	bx,word [bp-20]
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		add	ax,cx
		adc	dx,bx
		mov	si,ax
		mov	cl,3
		shl	si,cl
		wait fstp	qword [bp+si-294]
		DB	09bh
		wait fldz
		wait fstp	qword [bp-630]
		DB	09bh
		mov	ax,word [bp-22]
		mov	dx,word [bp-20]
		mov	word [bp-14],0
		mov	word [bp-12],0
		cmp	dx,word [bp-12]
		jl	..@j2910
		jg	..@j2912
		cmp	ax,word [bp-14]
		jb	..@j2910
..@j2912:
		sub	word [bp-14],1
		sbb	word [bp-12],0
	ALIGN 2
..@j2911:
		add	word [bp-14],1
		adc	word [bp-12],0
		mov	bx,word [bp-22]
		mov	si,word [bp-20]
		mov	cx,word [bp-6]
		mov	di,word [bp-4]
		add	cx,bx
		adc	di,si
		mov	bx,word [bp-14]
		mov	si,word [bp-12]
		sub	cx,bx
		sbb	di,si
		mov	di,cx
		mov	cl,3
		shl	di,cl
		mov	bx,word [bp+12]
		mov	cx,word [bp-14]
		mov	si,cx
		mov	cl,3
		shl	si,cl
		wait fld	qword [bx+si]
		wait fmul	qword [bp+di-294]
		wait fadd	qword [bp-630]
		wait fstp	qword [bp-630]
		DB	09bh
		cmp	dx,word [bp-12]
		jg	..@j2911
		jl	..@j2915
		cmp	ax,word [bp-14]
		ja	..@j2911
..@j2915:
..@j2910:
		mov	ax,word [bp-6]
		mov	si,ax
		mov	cl,3
		shl	si,cl
		lea	di,[bp+si-614]
		push	ss
		pop	es
		lea	si,[bp-630]
		cld
		mov	cx,4
		rep
		movsw
		mov	ax,word [bp-652]
		cmp	ax,word [bp-4]
		jg	..@j2901
		jl	..@j2918
		mov	ax,word [bp-654]
		cmp	ax,word [bp-6]
		ja	..@j2901
..@j2918:
..@j2900:
		mov	dx,word [bp-42]
		mov	ax,word [bp-40]
		add	word [bp-18],dx
		adc	word [bp-16],ax
		jmp	..@j2772
..@j2774:
		wait fld	qword [bp-622]
		wait fldz
		wait fcompp
		fstsw	[bp-632]
		mov	ah,byte [bp-631]
		sahf
		jp	..@j2921
		je	..@j2919
..@j2921:
		jmp	..@j2920
..@j2919:
	ALIGN 2
..@j2922:
		sub	word [bp-18],1
		sbb	word [bp-16],0
		sub	word [bp-50],24
		sbb	word [bp-48],0
		mov	si,word [bp-18]
		mov	cl,2
		shl	si,cl
		mov	dx,word [bp+si-134]
		mov	ax,word [bp+si-132]
		cmp	ax,0
		jne	..@j2924
		cmp	dx,0
		jne	..@j2924
		jmp	..@j2922
..@j2924:
		jmp	..@j2925
..@j2920:
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp-622]
		cld
		mov	cx,4
		rep
		movsw
		mov	ax,word [bp-50]
		mov	dx,word [bp-48]
		not	dx
		neg	ax
		sbb	dx,-1
		push	ax
		call	SYSTEM_$$_LDEXP$REAL$SMALLINT$$REAL
		wait fstp	qword [bp-622]
		DB	09bh
		wait fld	qword [TC_$SYSTEM_$$_TWO24]
		wait fld	qword [bp-622]
		wait fcompp
		fstsw	[bp-632]
		mov	ah,byte [bp-631]
		sahf
		jp	..@j2934
		jae	..@j2932
..@j2934:
		jmp	..@j2933
..@j2932:
		fstcw	[bp-634]
		fstcw	[bp-632]
		DB	09bh
		or	word [bp-634],3840
		wait fld	qword [bp-622]
		wait fmul	qword [TC_$SYSTEM_$$_TWON24]
		wait fldcw	[bp-634]
		wait fistp	qword [bp-642]
		wait fldcw	[bp-632]
		DB	09bh
		wait fild	qword [bp-642]
		wait fstp	qword [bp-630]
		DB	09bh
		fstcw	[bp-634]
		fstcw	[bp-632]
		DB	09bh
		or	word [bp-634],3840
		wait fld	qword [bp-630]
		wait fmul	qword [TC_$SYSTEM_$$_TWO24]
		wait fsubr	qword [bp-622]
		wait fldcw	[bp-634]
		wait fistp	qword [bp-642]
		wait fldcw	[bp-632]
		DB	09bh
		mov	si,word [bp-18]
		mov	cl,2
		shl	si,cl
		mov	ax,word [bp-642]
		mov	word [bp+si-134],ax
		mov	ax,word [bp-640]
		mov	word [bp+si-132],ax
		add	word [bp-18],1
		adc	word [bp-16],0
		add	word [bp-50],24
		adc	word [bp-48],0
		fstcw	[bp-634]
		fstcw	[bp-632]
		DB	09bh
		or	word [bp-634],3840
		wait fld	qword [bp-630]
		wait fldcw	[bp-634]
		wait fistp	qword [bp-642]
		wait fldcw	[bp-632]
		DB	09bh
		mov	si,word [bp-18]
		mov	cl,2
		shl	si,cl
		mov	ax,word [bp-642]
		mov	word [bp+si-134],ax
		mov	ax,word [bp-640]
		mov	word [bp+si-132],ax
		jmp	..@j2941
..@j2933:
		fstcw	[bp-634]
		fstcw	[bp-632]
		DB	09bh
		or	word [bp-634],3840
		wait fld	qword [bp-622]
		wait fldcw	[bp-634]
		wait fistp	qword [bp-642]
		wait fldcw	[bp-632]
		DB	09bh
		mov	si,word [bp-18]
		mov	cl,2
		shl	si,cl
		mov	ax,word [bp-642]
		mov	word [bp+si-134],ax
		mov	ax,word [bp-640]
		mov	word [bp+si-132],ax
..@j2941:
..@j2925:
		wait fld1
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		push	word [bp-50]
		call	SYSTEM_$$_LDEXP$REAL$SMALLINT$$REAL
		wait fstp	qword [bp-630]
		DB	09bh
		mov	ax,word [bp-18]
		mov	dx,word [bp-16]
		mov	word [bp-6],ax
		mov	word [bp-4],dx
		cmp	word [bp-4],0
		jl	..@j2951
		jg	..@j2953
		cmp	word [bp-6],0
		jb	..@j2951
..@j2953:
		add	word [bp-6],1
		adc	word [bp-4],0
	ALIGN 2
..@j2952:
		sub	word [bp-6],1
		sbb	word [bp-4],0
		mov	si,word [bp-6]
		mov	cl,2
		shl	si,cl
		wait fild	dword [bp+si-134]
		wait fmul	qword [bp-630]
		mov	si,word [bp-6]
		mov	cl,3
		shl	si,cl
		wait fstp	qword [bp+si-614]
		DB	09bh
		wait fld	qword [TC_$SYSTEM_$$_TWON24]
		wait fmul	qword [bp-630]
		wait fstp	qword [bp-630]
		DB	09bh
		cmp	word [bp-4],0
		jg	..@j2952
		jl	..@j2958
		cmp	word [bp-6],0
		ja	..@j2952
..@j2958:
..@j2951:
		mov	ax,word [bp-18]
		mov	dx,word [bp-16]
		mov	word [bp-6],ax
		mov	word [bp-4],dx
		cmp	word [bp-4],0
		jl	..@j2960
		jg	..@j2962
		cmp	word [bp-6],0
		jb	..@j2960
..@j2962:
		add	word [bp-6],1
		adc	word [bp-4],0
	ALIGN 2
..@j2961:
		sub	word [bp-6],1
		sbb	word [bp-4],0
		wait fldz
		wait fstp	qword [bp-630]
		DB	09bh
		mov	word [bp-42],0
		mov	word [bp-40],0
		jmp	..@j2968
	ALIGN 2
..@j2967:
		mov	dx,word [bp-6]
		mov	cx,word [bp-4]
		mov	si,word [bp-42]
		mov	ax,word [bp-40]
		add	si,dx
		adc	ax,cx
		mov	cl,3
		shl	si,cl
		mov	bx,word [bp-42]
		mov	cl,3
		shl	bx,cl
		wait fld	qword [TC_$SYSTEM_$$_PIO2CHUNKED+bx]
		wait fmul	qword [bp+si-614]
		wait fadd	qword [bp-630]
		wait fstp	qword [bp-630]
		DB	09bh
		add	word [bp-42],1
		adc	word [bp-40],0
..@j2968:
		mov	dx,word [bp-42]
		mov	ax,word [bp-40]
		cmp	ax,word [bp-28]
		jl	..@j2972
		jg	..@j2969
		cmp	dx,word [bp-30]
		jbe	..@j2972
		jmp	..@j2969
		jmp	..@j2969
..@j2972:
		mov	ax,word [bp-18]
		mov	dx,word [bp-16]
		mov	cx,word [bp-6]
		mov	bx,word [bp-4]
		sub	ax,cx
		sbb	dx,bx
		cmp	dx,word [bp-40]
		jg	..@j2967
		jl	..@j2969
		cmp	ax,word [bp-42]
		jae	..@j2967
		jmp	..@j2969
		jmp	..@j2969
..@j2969:
		mov	si,word [bp-18]
		mov	ax,word [bp-16]
		mov	dx,word [bp-6]
		mov	cx,word [bp-4]
		sub	si,dx
		sbb	ax,cx
		mov	cl,3
		shl	si,cl
		lea	di,[bp+si-454]
		push	ss
		pop	es
		lea	si,[bp-630]
		cld
		mov	cx,4
		rep
		movsw
		cmp	word [bp-4],0
		jg	..@j2961
		jl	..@j2975
		cmp	word [bp-6],0
		ja	..@j2961
..@j2975:
..@j2960:
		mov	ax,word [bp+4]
		test	ax,ax
		jl	..@j2977
		test	ax,ax
		je	..@j2978
		dec	ax
		jl	..@j2977
		dec	ax
		jle	..@j2979
		dec	ax
		je	..@j2980
		jmp	..@j2977
..@j2978:
		wait fldz
		wait fstp	qword [bp-630]
		DB	09bh
		mov	dx,word [bp-18]
		mov	ax,word [bp-16]
		mov	word [bp-6],dx
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		jl	..@j2984
		jg	..@j2986
		cmp	word [bp-6],0
		jb	..@j2984
..@j2986:
		add	word [bp-6],1
		adc	word [bp-4],0
	ALIGN 2
..@j2985:
		sub	word [bp-6],1
		sbb	word [bp-4],0
		mov	si,word [bp-6]
		mov	cl,3
		shl	si,cl
		wait fld	qword [bp-630]
		wait fadd	qword [bp+si-454]
		wait fstp	qword [bp-630]
		DB	09bh
		cmp	word [bp-4],0
		jg	..@j2985
		jl	..@j2989
		cmp	word [bp-6],0
		ja	..@j2985
..@j2989:
..@j2984:
		mov	ax,word [bp-10]
		mov	dx,word [bp-8]
		cmp	dx,0
		jne	..@j2991
		cmp	ax,0
		jne	..@j2991
		jmp	..@j2990
..@j2990:
		mov	di,word [bp+10]
		push	ds
		pop	es
		lea	si,[bp-630]
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j2994
..@j2991:
		wait fld	qword [bp-630]
		wait fchs
		mov	bx,word [bp+10]
		wait fstp	qword [bx]
		DB	09bh
..@j2994:
		jmp	..@j2976
..@j2979:
		wait fldz
		wait fstp	qword [bp-630]
		DB	09bh
		mov	dx,word [bp-18]
		mov	ax,word [bp-16]
		mov	word [bp-6],dx
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		jl	..@j3000
		jg	..@j3002
		cmp	word [bp-6],0
		jb	..@j3000
..@j3002:
		add	word [bp-6],1
		adc	word [bp-4],0
	ALIGN 2
..@j3001:
		sub	word [bp-6],1
		sbb	word [bp-4],0
		mov	si,word [bp-6]
		mov	cl,3
		shl	si,cl
		wait fld	qword [bp-630]
		wait fadd	qword [bp+si-454]
		wait fstp	qword [bp-630]
		DB	09bh
		cmp	word [bp-4],0
		jg	..@j3001
		jl	..@j3005
		cmp	word [bp-6],0
		ja	..@j3001
..@j3005:
..@j3000:
		mov	ax,word [bp-10]
		mov	dx,word [bp-8]
		cmp	dx,0
		jne	..@j3007
		cmp	ax,0
		jne	..@j3007
		jmp	..@j3006
..@j3006:
		mov	di,word [bp+10]
		push	ds
		pop	es
		lea	si,[bp-630]
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j3010
..@j3007:
		wait fld	qword [bp-630]
		wait fchs
		mov	bx,word [bp+10]
		wait fstp	qword [bx]
		DB	09bh
..@j3010:
		wait fld	qword [bp-630]
		wait fsubr	qword [bp-454]
		wait fstp	qword [bp-630]
		DB	09bh
		mov	dx,word [bp-18]
		mov	ax,word [bp-16]
		mov	word [bp-6],1
		mov	word [bp-4],0
		cmp	ax,word [bp-4]
		jl	..@j3018
		jg	..@j3020
		cmp	dx,word [bp-6]
		jb	..@j3018
..@j3020:
		sub	word [bp-6],1
		sbb	word [bp-4],0
	ALIGN 2
..@j3019:
		add	word [bp-6],1
		adc	word [bp-4],0
		mov	si,word [bp-6]
		mov	cl,3
		shl	si,cl
		wait fld	qword [bp-630]
		wait fadd	qword [bp+si-454]
		wait fstp	qword [bp-630]
		DB	09bh
		cmp	ax,word [bp-4]
		jg	..@j3019
		jl	..@j3023
		cmp	dx,word [bp-6]
		ja	..@j3019
..@j3023:
..@j3018:
		mov	dx,word [bp-10]
		mov	ax,word [bp-8]
		cmp	ax,0
		jne	..@j3025
		cmp	dx,0
		jne	..@j3025
		jmp	..@j3024
..@j3024:
		mov	bx,word [bp+10]
		lea	di,[bx+8]
		push	ds
		pop	es
		lea	si,[bp-630]
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j3028
..@j3025:
		wait fld	qword [bp-630]
		wait fchs
		mov	bx,word [bp+10]
		wait fstp	qword [bx+8]
		DB	09bh
..@j3028:
		jmp	..@j2976
..@j2980:
		mov	dx,word [bp-18]
		mov	ax,word [bp-16]
		mov	word [bp-6],dx
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		jl	..@j3032
		jg	..@j3034
		cmp	word [bp-6],1
		jb	..@j3032
..@j3034:
		add	word [bp-6],1
		adc	word [bp-4],0
	ALIGN 2
..@j3033:
		sub	word [bp-6],1
		sbb	word [bp-4],0
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		sub	ax,1
		sbb	dx,0
		mov	di,ax
		mov	cl,3
		shl	di,cl
		mov	ax,word [bp-6]
		mov	si,ax
		mov	cl,3
		shl	si,cl
		wait fld	qword [bp+si-454]
		wait fadd	qword [bp+di-454]
		wait fstp	qword [bp-630]
		DB	09bh
		mov	ax,word [bp-6]
		mov	di,ax
		mov	cl,3
		shl	di,cl
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		sub	ax,1
		sbb	dx,0
		mov	si,ax
		mov	cl,3
		shl	si,cl
		wait fld	qword [bp-630]
		wait fsubr	qword [bp+si-454]
		wait fadd	qword [bp+di-454]
		mov	si,word [bp-6]
		mov	cl,3
		shl	si,cl
		wait fstp	qword [bp+si-454]
		DB	09bh
		mov	si,word [bp-6]
		mov	ax,word [bp-4]
		sub	si,1
		sbb	ax,0
		mov	cl,3
		shl	si,cl
		lea	di,[bp+si-454]
		push	ss
		pop	es
		lea	si,[bp-630]
		cld
		mov	cx,4
		rep
		movsw
		cmp	word [bp-4],0
		jg	..@j3033
		jl	..@j3041
		cmp	word [bp-6],1
		ja	..@j3033
..@j3041:
..@j3032:
		mov	ax,word [bp-18]
		mov	dx,word [bp-16]
		mov	word [bp-6],ax
		mov	word [bp-4],dx
		cmp	word [bp-4],0
		jl	..@j3043
		jg	..@j3045
		cmp	word [bp-6],2
		jb	..@j3043
..@j3045:
		add	word [bp-6],1
		adc	word [bp-4],0
	ALIGN 2
..@j3044:
		sub	word [bp-6],1
		sbb	word [bp-4],0
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		sub	ax,1
		sbb	dx,0
		mov	di,ax
		mov	cl,3
		shl	di,cl
		mov	ax,word [bp-6]
		mov	si,ax
		mov	cl,3
		shl	si,cl
		wait fld	qword [bp+si-454]
		wait fadd	qword [bp+di-454]
		wait fstp	qword [bp-630]
		DB	09bh
		mov	ax,word [bp-6]
		mov	di,ax
		mov	cl,3
		shl	di,cl
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		sub	ax,1
		sbb	dx,0
		mov	si,ax
		mov	cl,3
		shl	si,cl
		wait fld	qword [bp-630]
		wait fsubr	qword [bp+si-454]
		wait fadd	qword [bp+di-454]
		mov	si,word [bp-6]
		mov	cl,3
		shl	si,cl
		wait fstp	qword [bp+si-454]
		DB	09bh
		mov	si,word [bp-6]
		mov	ax,word [bp-4]
		sub	si,1
		sbb	ax,0
		mov	cl,3
		shl	si,cl
		lea	di,[bp+si-454]
		push	ss
		pop	es
		lea	si,[bp-630]
		cld
		mov	cx,4
		rep
		movsw
		cmp	word [bp-4],0
		jg	..@j3044
		jl	..@j3052
		cmp	word [bp-6],2
		ja	..@j3044
..@j3052:
..@j3043:
		wait fldz
		wait fstp	qword [bp-630]
		DB	09bh
		mov	dx,word [bp-18]
		mov	ax,word [bp-16]
		mov	word [bp-6],dx
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		jl	..@j3056
		jg	..@j3058
		cmp	word [bp-6],2
		jb	..@j3056
..@j3058:
		add	word [bp-6],1
		adc	word [bp-4],0
	ALIGN 2
..@j3057:
		sub	word [bp-6],1
		sbb	word [bp-4],0
		mov	si,word [bp-6]
		mov	cl,3
		shl	si,cl
		wait fld	qword [bp-630]
		wait fadd	qword [bp+si-454]
		wait fstp	qword [bp-630]
		DB	09bh
		cmp	word [bp-4],0
		jg	..@j3057
		jl	..@j3061
		cmp	word [bp-6],2
		ja	..@j3057
..@j3061:
..@j3056:
		mov	ax,word [bp-10]
		mov	dx,word [bp-8]
		cmp	dx,0
		jne	..@j3063
		cmp	ax,0
		jne	..@j3063
		jmp	..@j3062
..@j3062:
		mov	di,word [bp+10]
		push	ds
		pop	es
		lea	si,[bp-454]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+10]
		lea	di,[bx+8]
		push	ds
		pop	es
		lea	si,[bp-446]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+10]
		lea	di,[bx+16]
		push	ds
		pop	es
		lea	si,[bp-630]
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j3070
..@j3063:
		wait fld	qword [bp-454]
		wait fchs
		mov	bx,word [bp+10]
		wait fstp	qword [bx]
		DB	09bh
		wait fld	qword [bp-446]
		wait fchs
		mov	bx,word [bp+10]
		wait fstp	qword [bx+8]
		DB	09bh
		wait fld	qword [bp-630]
		wait fchs
		mov	bx,word [bp+10]
		wait fstp	qword [bx+16]
		DB	09bh
..@j3070:
		jmp	..@j2976
..@j2977:
..@j2976:
		mov	ax,word [bp-46]
		mov	dx,word [bp-44]
		and	ax,7
		mov	dx,0
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	TC_$SYSTEM_$$_PIO2CHUNKED
EXTERN	_$SYSTEM$_Ld3
EXTERN	_$SYSTEM$_Ld8
EXTERN	SYSTEM_$$_FLOORD$DOUBLE$$DOUBLE
EXTERN	_$SYSTEM$_Ld9
EXTERN	SYSTEM_$$_LDEXP$REAL$SMALLINT$$REAL
EXTERN	TC_$SYSTEM_$$_TWO24
EXTERN	TC_$SYSTEM_$$_TWON24
EXTERN	TC_$SYSTEM_$$_IPIO2
EXTERN	fpc_mul_longint
EXTERN	TC_$SYSTEM_$$_INIT_JK
