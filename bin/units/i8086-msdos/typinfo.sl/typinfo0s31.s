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
	GLOBAL TYPINFO_$$_GETORDPROP$TOBJECT$PPROPINFO$$INT64
TYPINFO_$$_GETORDPROP$TOBJECT$PPROPINFO$$INT64:
		push	bp
		mov	bp,sp
		sub	sp,18
		mov	word [bp-8],0
		mov	word [bp-6],0
		mov	word [bp-4],0
		mov	word [bp-2],0
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-10],ax
		mov	byte [bp-18],0
		mov	word [bp-16],4
		mov	bx,word [bp-10]
		mov	al,byte [bx]
		cmp	al,1
		jb	..@j770
		dec	al
		je	..@j773
		dec	al
		je	..@j771
		dec	al
		je	..@j773
		sub	al,2
		je	..@j773
		sub	al,12
		je	..@j772
		dec	al
		je	..@j771
		dec	al
		je	..@j774
		dec	al
		je	..@j775
		jmp	..@j770
..@j771:
		mov	word [bp-16],1
		jmp	..@j769
..@j772:
		mov	word [bp-16],2
		jmp	..@j769
..@j773:
		push	word [bp-10]
		call	TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
		mov	bx,ax
		mov	al,byte [bx]
		mov	byte [bp-17],al
		mov	al,byte [bp-17]
		sub	al,1
		jbe	..@j786
		sub	al,1
		sub	al,1
		jbe	..@j787
		jmp	..@j785
..@j786:
		mov	word [bp-16],1
		jmp	..@j784
..@j787:
		mov	word [bp-16],2
		jmp	..@j784
..@j785:
..@j784:
		mov	al,byte [bp-17]
		mov	ah,0
		cmp	ax,0
		je	..@j794
		cmp	ax,2
		je	..@j794
		cmp	ax,4
		je	..@j794
..@j794:
		mov	al,0
		jne	..@j795
		inc	ax
..@j795:
		mov	byte [bp-18],al
		jmp	..@j769
..@j774:
		mov	word [bp-16],8
		mov	byte [bp-18],1
		jmp	..@j769
..@j775:
		mov	word [bp-16],8
		mov	byte [bp-18],0
		jmp	..@j769
..@j770:
..@j769:
		mov	bx,word [bp+4]
		mov	al,byte [bx+16]
		mov	ah,0
		and	ax,3
		test	ax,ax
		jl	..@j805
		test	ax,ax
		je	..@j806
		dec	ax
		jl	..@j805
		dec	ax
		jle	..@j807
		jmp	..@j805
..@j806:
		cmp	byte [bp-18],0
		jne	..@j808
		jmp	..@j809
..@j808:
		mov	ax,word [bp-16]
		cmp	ax,1
		jl	..@j811
		dec	ax
		je	..@j812
		dec	ax
		je	..@j813
		sub	ax,2
		je	..@j814
		sub	ax,4
		je	..@j815
		jmp	..@j811
..@j812:
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		mov	bx,word [bp+6]
		add	bx,ax
		mov	al,byte [bx]
		cbw
		cwd
		mov	bx,ax
		mov	ax,dx
		mov	dx,bx
		mov	si,ax
		mov	cl,15
		sar	si,cl
		mov	dx,si
		mov	word [bp-8],bx
		mov	word [bp-6],ax
		mov	word [bp-4],dx
		mov	word [bp-2],si
		jmp	..@j810
..@j813:
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		mov	bx,word [bp+6]
		add	bx,ax
		mov	ax,word [bx]
		cwd
		mov	bx,ax
		mov	si,dx
		mov	cl,15
		sar	si,cl
		mov	bx,si
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		mov	word [bp-4],bx
		mov	word [bp-2],si
		jmp	..@j810
..@j814:
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		mov	bx,word [bp+6]
		add	bx,ax
		mov	dx,word [bx]
		mov	si,word [bx+2]
		mov	ax,dx
		mov	bx,si
		mov	cl,15
		sar	bx,cl
		mov	ax,bx
		mov	word [bp-8],dx
		mov	word [bp-6],si
		mov	word [bp-4],ax
		mov	word [bp-2],bx
		jmp	..@j810
..@j815:
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		mov	si,word [bp+6]
		add	si,ax
		lea	di,[bp-8]
		push	ss
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j810
..@j811:
..@j810:
		jmp	..@j824
..@j809:
		mov	ax,word [bp-16]
		cmp	ax,1
		jl	..@j826
		dec	ax
		je	..@j827
		dec	ax
		je	..@j828
		sub	ax,2
		je	..@j829
		sub	ax,4
		je	..@j830
		jmp	..@j826
..@j827:
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		mov	bx,word [bp+6]
		add	bx,ax
		mov	si,0
		mov	cl,byte [bx]
		mov	ch,0
		mov	dx,0
		mov	ax,0
		mov	word [bp-8],cx
		mov	word [bp-6],si
		mov	word [bp-4],dx
		mov	word [bp-2],ax
		jmp	..@j825
..@j828:
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		mov	bx,word [bp+6]
		add	bx,ax
		mov	bx,word [bx]
		mov	ax,0
		mov	dx,0
		mov	cx,0
		mov	word [bp-8],bx
		mov	word [bp-6],ax
		mov	word [bp-4],dx
		mov	word [bp-2],cx
		jmp	..@j825
..@j829:
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		mov	bx,word [bp+6]
		add	bx,ax
		mov	dx,word [bx]
		mov	si,word [bx+2]
		mov	ax,dx
		mov	bx,si
		mov	cl,15
		sar	bx,cl
		mov	ax,bx
		mov	word [bp-8],dx
		mov	word [bp-6],si
		mov	word [bp-4],ax
		mov	word [bp-2],bx
		jmp	..@j825
..@j830:
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		mov	si,word [bp+6]
		add	si,ax
		lea	di,[bp-8]
		push	ss
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j825
..@j826:
..@j825:
..@j824:
		jmp	..@j804
..@j807:
		mov	bx,word [bp+4]
		mov	al,byte [bx+16]
		mov	ah,0
		and	ax,3
		cmp	ax,1
		je	..@j839
		jmp	..@j840
..@j839:
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		mov	word [bp-14],ax
		jmp	..@j843
..@j840:
		mov	si,word [bp+4]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [si+2]
		add	bx,ax
		mov	ax,word [bx]
		mov	word [bp-14],ax
..@j843:
		mov	ax,word [bp+6]
		mov	word [bp-12],ax
		mov	bx,word [bp+4]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,6
		shr	ax,cl
		and	ax,1
		test	ax,ax
		jne	..@j850
		jmp	..@j851
..@j850:
		mov	ax,word [bp-16]
		cmp	ax,1
		jl	..@j853
		dec	ax
		je	..@j854
		dec	ax
		je	..@j855
		sub	ax,2
		je	..@j856
		sub	ax,4
		je	..@j857
		jmp	..@j853
..@j854:
		push	word [bp-12]
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		cwd
		push	dx
		push	ax
		mov	ax,word [bp-14]
		call	ax
		mov	bx,0
		mov	dl,al
		mov	dh,0
		mov	bx,0
		mov	dl,al
		mov	dh,0
		mov	ax,0
		mov	cx,0
		mov	word [bp-8],dx
		mov	word [bp-6],bx
		mov	word [bp-4],ax
		mov	word [bp-2],cx
		jmp	..@j852
..@j855:
		push	word [bp-12]
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		cwd
		push	dx
		push	ax
		mov	ax,word [bp-14]
		call	ax
		mov	dx,ax
		mov	bx,0
		mov	dx,ax
		mov	bx,0
		mov	ax,0
		mov	cx,0
		mov	word [bp-8],dx
		mov	word [bp-6],bx
		mov	word [bp-4],ax
		mov	word [bp-2],cx
		jmp	..@j852
..@j856:
		push	word [bp-12]
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		cwd
		push	dx
		push	ax
		mov	ax,word [bp-14]
		call	ax
		mov	bx,ax
		mov	si,dx
		mov	bx,ax
		mov	si,dx
		mov	ax,bx
		mov	dx,si
		mov	cl,15
		sar	dx,cl
		mov	ax,dx
		mov	word [bp-8],bx
		mov	word [bp-6],si
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j852
..@j857:
		push	word [bp-12]
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		cwd
		push	dx
		push	ax
		mov	ax,word [bp-14]
		call	ax
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
		jmp	..@j852
..@j853:
..@j852:
		jmp	..@j882
..@j851:
		mov	ax,word [bp-16]
		cmp	ax,1
		jl	..@j884
		dec	ax
		je	..@j885
		dec	ax
		je	..@j886
		sub	ax,2
		je	..@j887
		sub	ax,4
		je	..@j888
		jmp	..@j884
..@j885:
		push	word [bp-12]
		mov	ax,word [bp-14]
		call	ax
		mov	bx,0
		mov	dl,al
		mov	dh,0
		mov	bx,0
		mov	dl,al
		mov	dh,0
		mov	cx,0
		mov	ax,0
		mov	word [bp-8],dx
		mov	word [bp-6],bx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		jmp	..@j883
..@j886:
		push	word [bp-12]
		mov	ax,word [bp-14]
		call	ax
		mov	dx,ax
		mov	bx,0
		mov	dx,ax
		mov	bx,0
		mov	cx,0
		mov	ax,0
		mov	word [bp-8],dx
		mov	word [bp-6],bx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		jmp	..@j883
..@j887:
		push	word [bp-12]
		mov	ax,word [bp-14]
		call	ax
		mov	bx,ax
		mov	si,dx
		mov	bx,ax
		mov	si,dx
		mov	ax,bx
		mov	dx,si
		mov	cl,15
		sar	dx,cl
		mov	ax,dx
		mov	word [bp-8],bx
		mov	word [bp-6],si
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j883
..@j888:
		push	word [bp-12]
		mov	ax,word [bp-14]
		call	ax
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
		jmp	..@j883
..@j884:
..@j883:
..@j882:
		cmp	byte [bp-18],0
		jne	..@j905
		jmp	..@j906
..@j905:
		mov	ax,word [bp-16]
		cmp	ax,1
		jl	..@j908
		dec	ax
		je	..@j909
		dec	ax
		je	..@j910
		jmp	..@j908
..@j909:
		mov	al,byte [bp-8]
		cbw
		cwd
		mov	bx,ax
		mov	ax,dx
		mov	dx,bx
		mov	si,ax
		mov	cl,15
		sar	si,cl
		mov	dx,si
		mov	word [bp-8],bx
		mov	word [bp-6],ax
		mov	word [bp-4],dx
		mov	word [bp-2],si
		jmp	..@j907
..@j910:
		mov	ax,word [bp-8]
		cwd
		mov	bx,ax
		mov	si,dx
		mov	cl,15
		sar	si,cl
		mov	bx,si
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		mov	word [bp-4],bx
		mov	word [bp-2],si
		jmp	..@j907
..@j908:
..@j907:
..@j906:
		jmp	..@j804
..@j805:
..@j804:
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
