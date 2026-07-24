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
	GLOBAL TYPINFO_$$_SETORDPROP$TOBJECT$PPROPINFO$INT64
TYPINFO_$$_SETORDPROP$TOBJECT$PPROPINFO$INT64:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	al,byte [bx]
		mov	ah,0
		sub	ax,19
		cmp	ax,2
		jb	..@j919
..@j919:
		jc	..@j917
		jmp	..@j918
..@j917:
		mov	word [bp-2],8
		jmp	..@j922
..@j918:
		mov	word [bp-2],4
..@j922:
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	al,byte [bx]
		mov	ah,0
		sub	ax,14
		cmp	ax,2
		jb	..@j927
		sub	ax,5
		cmp	ax,4
		jb	..@j927
..@j927:
		jnc	..@j925
		jmp	..@j926
..@j925:
		mov	bx,word [bp+12]
		push	word [bx]
		call	TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
		mov	bx,ax
		mov	al,byte [bx]
		sub	al,1
		jbe	..@j931
		sub	al,1
		sub	al,1
		jbe	..@j930
		jmp	..@j929
..@j930:
		mov	cx,word [bp+4]
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		mov	bx,word [bp+10]
		mov	ax,0
		mov	dx,0
		mov	bx,0
		mov	word [bp+4],cx
		mov	word [bp+6],ax
		mov	word [bp+8],dx
		mov	word [bp+10],bx
		mov	word [bp-2],2
		jmp	..@j928
..@j931:
		mov	bx,word [bp+4]
		mov	cx,word [bp+6]
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		and	bx,255
		mov	cx,0
		mov	ax,0
		mov	dx,0
		mov	word [bp+4],bx
		mov	word [bp+6],cx
		mov	word [bp+8],ax
		mov	word [bp+10],dx
		mov	word [bp-2],1
		jmp	..@j928
..@j929:
..@j928:
..@j926:
		mov	bx,word [bp+12]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,2
		shr	ax,cl
		and	ax,3
		test	ax,ax
		je	..@j944
		sub	ax,1
		jb	..@j943
		sub	ax,1
		jbe	..@j945
		jmp	..@j943
..@j944:
		mov	ax,word [bp-2]
		cmp	ax,1
		jl	..@j947
		dec	ax
		je	..@j948
		dec	ax
		je	..@j949
		sub	ax,2
		je	..@j950
		sub	ax,4
		je	..@j951
		jmp	..@j947
..@j948:
		mov	bx,word [bp+12]
		mov	ax,word [bx+4]
		mov	bx,word [bp+14]
		add	bx,ax
		mov	al,byte [bp+4]
		mov	byte [bx],al
		jmp	..@j946
..@j949:
		mov	bx,word [bp+12]
		mov	ax,word [bx+4]
		mov	bx,word [bp+14]
		add	bx,ax
		mov	ax,word [bp+4]
		mov	word [bx],ax
		jmp	..@j946
..@j950:
		mov	bx,word [bp+12]
		mov	ax,word [bx+4]
		mov	bx,word [bp+14]
		add	bx,ax
		mov	ax,word [bp+4]
		mov	word [bx],ax
		mov	ax,word [bp+6]
		mov	word [bx+2],ax
		jmp	..@j946
..@j951:
		mov	bx,word [bp+12]
		mov	ax,word [bx+4]
		mov	di,word [bp+14]
		add	di,ax
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j946
..@j947:
..@j946:
		jmp	..@j942
..@j945:
		mov	bx,word [bp+12]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,2
		shr	ax,cl
		and	ax,3
		cmp	ax,1
		je	..@j960
		jmp	..@j961
..@j960:
		mov	bx,word [bp+12]
		mov	ax,word [bx+4]
		mov	word [bp-6],ax
		jmp	..@j964
..@j961:
		mov	si,word [bp+12]
		mov	bx,word [bp+14]
		mov	bx,word [bx]
		mov	ax,word [si+4]
		add	bx,ax
		mov	ax,word [bx]
		mov	word [bp-6],ax
..@j964:
		mov	ax,word [bp+14]
		mov	word [bp-4],ax
		cmp	word [bp-2],8
		je	..@j971
		jmp	..@j972
..@j971:
		mov	bx,word [bp+12]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,6
		shr	ax,cl
		and	ax,1
		test	ax,ax
		jne	..@j973
		jmp	..@j974
..@j973:
		push	word [bp-4]
		mov	bx,word [bp+12]
		mov	ax,word [bx+8]
		cwd
		push	dx
		push	ax
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,word [bp-6]
		call	ax
		jmp	..@j981
..@j974:
		push	word [bp-4]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,word [bp-6]
		call	ax
..@j981:
		jmp	..@j986
..@j972:
		mov	bx,word [bp+12]
		mov	al,byte [bx+16]
		mov	ah,0
		mov	cl,6
		shr	ax,cl
		and	ax,1
		test	ax,ax
		jne	..@j987
		jmp	..@j988
..@j987:
		push	word [bp-4]
		mov	bx,word [bp+12]
		mov	ax,word [bx+8]
		cwd
		push	dx
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,word [bp-6]
		call	ax
		jmp	..@j995
..@j988:
		push	word [bp-4]
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,word [bp-6]
		call	ax
..@j995:
..@j986:
		jmp	..@j942
..@j943:
..@j942:
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
