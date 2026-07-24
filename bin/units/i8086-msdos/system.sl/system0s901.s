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
	GLOBAL SYSTEM_$$_ALLOC_OSCHUNK$PFREELISTS$WORD$WORD$$POINTER
SYSTEM_$$_ALLOC_OSCHUNK$PFREELISTS$WORD$WORD$$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	ax,word [bp+4]
		add	ax,26
		mov	word [bp-12],ax
		cmp	word [bp+6],0
		jne	..@j18841
		jmp	..@j18842
..@j18841:
		mov	word [bp-14],0
		jmp	..@j18845
..@j18842:
		mov	word [bp-14],-1
..@j18845:
		mov	word [bp-10],0
		mov	bx,word [bp+8]
		mov	dx,word [bx+68]
		mov	ax,word [bx+70]
		cmp	ax,word [TC_$SYSTEM_$$_MAXKEPTOSCHUNKS+2]
		ja	..@j18850
		jb	..@j18851
		cmp	dx,word [TC_$SYSTEM_$$_MAXKEPTOSCHUNKS]
		jae	..@j18850
		jmp	..@j18851
		jmp	..@j18851
..@j18850:
		push	word [bp+8]
		push	word [bp-12]
		push	word [bp-14]
		lea	ax,[bp+4]
		push	ax
		call	SYSTEM_$$_FIND_FREE_OSCHUNK$PFREELISTS$WORD$WORD$WORD$$POSCHUNK
		mov	word [bp-10],ax
..@j18851:
		cmp	word [bp-10],0
		je	..@j18864
		jmp	..@j18863
..@j18864:
		cmp	word [U_$SYSTEM_$$_ORPHANED_FREELISTS+82],0
		jne	..@j18862
		jmp	..@j18866
..@j18866:
		cmp	word [U_$SYSTEM_$$_ORPHANED_FREELISTS+84],0
		jne	..@j18862
		jmp	..@j18865
..@j18865:
		mov	ax,word [U_$SYSTEM_$$_ORPHANED_FREELISTS+68]
		mov	dx,word [U_$SYSTEM_$$_ORPHANED_FREELISTS+70]
		cmp	dx,0
		ja	..@j18862
		jb	..@j18863
		cmp	ax,0
		ja	..@j18862
		jmp	..@j18863
..@j18862:
		mov	ax,word U_$SYSTEM_$$_HEAP_LOCK
		push	ax
		call	SYSTEM_$$_ENTERCRITICALSECTION$TRTLCRITICALSECTION
		mov	ax,word U_$SYSTEM_$$_ORPHANED_FREELISTS
		push	ax
		call	SYSTEM_$$_FINISH_WAITFIXEDLIST$PFREELISTS
		mov	ax,word U_$SYSTEM_$$_ORPHANED_FREELISTS
		push	ax
		call	SYSTEM_$$_FINISH_WAITVARLIST$PFREELISTS
		mov	ax,word [U_$SYSTEM_$$_ORPHANED_FREELISTS+68]
		mov	dx,word [U_$SYSTEM_$$_ORPHANED_FREELISTS+70]
		cmp	dx,0
		ja	..@j18873
		jb	..@j18874
		cmp	ax,0
		ja	..@j18873
		jmp	..@j18874
..@j18873:
		mov	ax,word U_$SYSTEM_$$_ORPHANED_FREELISTS
		push	ax
		push	word [bp-12]
		push	word [bp-14]
		lea	ax,[bp+4]
		push	ax
		call	SYSTEM_$$_FIND_FREE_OSCHUNK$PFREELISTS$WORD$WORD$WORD$$POSCHUNK
		mov	word [bp-10],ax
		cmp	word [bp-10],0
		jne	..@j18885
		jmp	..@j18886
..@j18885:
		mov	bx,word [bp-10]
		mov	ax,word [bp+8]
		mov	word [bx+10],ax
		mov	bx,word [bp-10]
		cmp	word [bx+4],0
		jne	..@j18889
		jmp	..@j18890
..@j18889:
		mov	bx,word [bp-10]
		mov	si,word [bx+4]
		mov	bx,word [bp-10]
		mov	ax,word [bx+6]
		mov	word [si+6],ax
		jmp	..@j18893
..@j18890:
		mov	bx,word [bp-10]
		mov	ax,word [bx+6]
		mov	word [U_$SYSTEM_$$_ORPHANED_FREELISTS+78],ax
..@j18893:
		mov	bx,word [bp-10]
		cmp	word [bx+6],0
		jne	..@j18896
		jmp	..@j18897
..@j18896:
		mov	bx,word [bp-10]
		mov	si,word [bx+6]
		mov	bx,word [bp-10]
		mov	ax,word [bx+4]
		mov	word [si+4],ax
..@j18897:
		mov	si,word [bp-10]
		mov	bx,word [bp+8]
		mov	ax,word [bx+78]
		mov	word [si+6],ax
		mov	bx,word [bp+8]
		cmp	word [bx+78],0
		jne	..@j18902
		jmp	..@j18903
..@j18902:
		mov	bx,word [bp+8]
		mov	bx,word [bx+78]
		mov	ax,word [bp-10]
		mov	word [bx+4],ax
..@j18903:
		mov	bx,word [bp-10]
		mov	word [bx+4],0
		mov	bx,word [bp+8]
		mov	ax,word [bp-10]
		mov	word [bx+78],ax
..@j18886:
..@j18874:
		mov	ax,word U_$SYSTEM_$$_HEAP_LOCK
		push	ax
		call	SYSTEM_$$_LEAVECRITICALSECTION$TRTLCRITICALSECTION
..@j18863:
		cmp	word [bp-10],0
		je	..@j18912
		jmp	..@j18913
..@j18912:
		mov	word [bp+4],0
		cmp	word [bp+6],0
		jne	..@j18916
		jmp	..@j18917
..@j18916:
		mov	bx,word [bp+8]
		push	word [bx+76]
		call	SYSTEM_$$_SYSOSALLOC$WORD$$POINTER
		mov	word [bp-10],ax
		cmp	word [bp-10],0
		jne	..@j18922
		jmp	..@j18923
..@j18922:
		mov	bx,word [bp+8]
		mov	ax,word [bx+76]
		mov	word [bp+4],ax
..@j18923:
		jmp	..@j18926
..@j18917:
		mov	ax,word [bp+4]
		cmp	ax,word [TC_$SYSTEM_$$_GROWHEAPSIZE1]
		jbe	..@j18927
		jmp	..@j18928
..@j18927:
		push	word [TC_$SYSTEM_$$_GROWHEAPSIZE1]
		call	SYSTEM_$$_SYSOSALLOC$WORD$$POINTER
		mov	word [bp-10],ax
		cmp	word [bp-10],0
		jne	..@j18933
		jmp	..@j18934
..@j18933:
		mov	ax,word [TC_$SYSTEM_$$_GROWHEAPSIZE1]
		mov	word [bp+4],ax
..@j18934:
		jmp	..@j18937
..@j18928:
		mov	ax,word [bp+4]
		cmp	ax,word [TC_$SYSTEM_$$_GROWHEAPSIZE2]
		jbe	..@j18938
		jmp	..@j18939
..@j18938:
		push	word [TC_$SYSTEM_$$_GROWHEAPSIZE2]
		call	SYSTEM_$$_SYSOSALLOC$WORD$$POINTER
		mov	word [bp-10],ax
		cmp	word [bp-10],0
		jne	..@j18944
		jmp	..@j18945
..@j18944:
		mov	ax,word [TC_$SYSTEM_$$_GROWHEAPSIZE2]
		mov	word [bp+4],ax
..@j18945:
		jmp	..@j18948
..@j18939:
		push	word [bp+4]
		call	SYSTEM_$$_SYSOSALLOC$WORD$$POINTER
		mov	word [bp-10],ax
..@j18948:
..@j18937:
..@j18926:
		cmp	word [bp-10],0
		je	..@j18953
		jmp	..@j18954
..@j18953:
		push	word [bp+4]
		call	SYSTEM_$$_SYSOSALLOC$WORD$$POINTER
		mov	word [bp-10],ax
		cmp	word [bp-10],0
		je	..@j18959
		jmp	..@j18960
..@j18959:
		cmp	byte [U_$SYSTEM_$$_RETURNNILIFGROWHEAPFAILS],0
		jne	..@j18961
		jmp	..@j18962
..@j18961:
		mov	word [bp-2],0
		jmp	..@j18837
		jmp	..@j18965
..@j18962:
		mov	ax,0
		push	ax
		mov	ax,203
		push	ax
		call	FPC_HANDLEERROR
..@j18965:
..@j18960:
..@j18954:
		mov	bx,word [bp-10]
		mov	ax,word [bp+8]
		mov	word [bx+10],ax
		mov	bx,word [bp-10]
		mov	word [bx+4],0
		mov	si,word [bp-10]
		mov	bx,word [bp+8]
		mov	ax,word [bx+78]
		mov	word [si+6],ax
		mov	bx,word [bp+8]
		cmp	word [bx+78],0
		jne	..@j18974
		jmp	..@j18975
..@j18974:
		mov	bx,word [bp+8]
		mov	bx,word [bx+78]
		mov	ax,word [bp-10]
		mov	word [bx+4],ax
..@j18975:
		mov	bx,word [bp+8]
		mov	ax,word [bp-10]
		mov	word [bx+78],ax
		mov	bx,word [bp+8]
		lea	ax,[bx+86]
		mov	word [bp-20],ax
		mov	bx,word [bp-20]
		mov	ax,word [bp+4]
		add	word [bx+4],ax
		mov	bx,word [bp-20]
		mov	si,word [bp-20]
		mov	ax,word [bx+4]
		cmp	ax,word [si]
		ja	..@j18982
		jmp	..@j18983
..@j18982:
		mov	si,word [bp-20]
		mov	bx,word [bp-20]
		mov	ax,word [bx+4]
		mov	word [si],ax
..@j18983:
..@j18913:
		mov	bx,word [bp-10]
		mov	ax,word [bp+4]
		mov	word [bx],ax
		cmp	word [bp+6],0
		jne	..@j18988
		jmp	..@j18989
..@j18988:
		mov	bx,word [bp-10]
		mov	word [bx+8],0
		mov	ax,word [bp+6]
		mov	cl,4
		shl	ax,cl
		mov	word [bp-18],ax
		mov	ax,word [bp+4]
		mov	dx,0
		mov	cx,word [bp-18]
		mov	bx,0
		sub	ax,cx
		sbb	dx,bx
		cmp	ax,word [bp-14]
		ja	..@j18994
		jmp	..@j18995
..@j18994:
		mov	ax,0
		push	ax
		mov	ax,204
		push	ax
		call	FPC_HANDLEERROR
..@j18995:
		mov	word [bp-16],14
		mov	dx,word [bp-10]
		mov	ax,word [bp-16]
		add	ax,dx
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	word [bp-4],ax
		mov	bx,word [bp-4]
		mov	word [bx+4],0
	ALIGN 2
..@j19006:
		mov	ax,word [bp-18]
		or	ax,1
		mov	dx,word [bp-16]
		mov	cl,12
		shl	dx,cl
		or	dx,ax
		mov	bx,word [bp-4]
		mov	word [bx],dx
		mov	ax,word [bp-18]
		add	word [bp-16],ax
		mov	ax,word [bp+4]
		mov	dx,0
		mov	bx,word [bp-18]
		mov	cx,0
		sub	ax,bx
		sbb	dx,cx
		cmp	ax,word [bp-16]
		jb	..@j19011
		jmp	..@j19012
..@j19011:
		jmp	..@j19008
..@j19012:
		mov	dx,word [bp-4]
		mov	ax,word [bp-18]
		add	ax,dx
		mov	word [bp-6],ax
		mov	bx,word [bp-4]
		mov	ax,word [bp-6]
		mov	word [bx+2],ax
		mov	bx,word [bp-6]
		mov	ax,word [bp-4]
		mov	word [bx+4],ax
		mov	ax,word [bp-6]
		mov	word [bp-4],ax
		jmp	..@j19006
..@j19008:
		mov	bx,word [bp+8]
		mov	ax,word [bp+6]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		mov	word [bp-6],ax
		mov	bx,word [bp-4]
		mov	ax,word [bp-6]
		mov	word [bx+2],ax
		cmp	word [bp-6],0
		jne	..@j19025
		jmp	..@j19026
..@j19025:
		mov	bx,word [bp-6]
		mov	ax,word [bp-4]
		mov	word [bx+4],ax
..@j19026:
		mov	bx,word [bp+8]
		mov	ax,word [bp+6]
		mov	si,ax
		shl	si,1
		mov	ax,word [bp-2]
		mov	word [bx+si],ax
		mov	bx,word [bp+8]
		add	word [bx+72],1
		adc	word [bx+74],0
		mov	bx,word [bp+8]
		mov	dx,word [bx+72]
		mov	ax,word [bx+74]
		cmp	ax,0
		ja	..@j19031
		jb	..@j19032
		cmp	dx,264
		ja	..@j19031
		jmp	..@j19032
..@j19031:
		mov	bx,word [bp+8]
		mov	si,word [bp+8]
		mov	ax,word [bx+76]
		add	word [si+76],ax
		mov	bx,word [bp+8]
		mov	word [bx+72],0
		mov	word [bx+74],0
..@j19032:
		jmp	..@j19035
..@j18989:
		mov	bx,word [bp-10]
		mov	word [bx+8],-1
		mov	ax,word [bp-10]
		add	ax,26
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	word [bp-8],ax
		mov	ax,word [bp+4]
		mov	dx,0
		sub	ax,26
		sbb	dx,0
		and	ax,-16
		or	ax,12
		mov	bx,word [bp-8]
		mov	word [bx+4],ax
		mov	bx,word [bp-8]
		mov	word [bx],0
		mov	bx,word [bp-8]
		mov	ax,word [bp+8]
		mov	word [bx+2],ax
		mov	bx,word [bp-8]
		mov	bx,word [bx+2]
		lea	ax,[bx+80]
		mov	word [bp-22],ax
		mov	bx,word [bp-8]
		mov	word [bx+8],0
		mov	si,word [bp-8]
		mov	bx,word [bp-22]
		mov	ax,word [bx]
		mov	word [si+6],ax
		mov	bx,word [bp-22]
		cmp	word [bx],0
		jne	..@j19055
		jmp	..@j19056
..@j19055:
		mov	bx,word [bp-22]
		mov	bx,word [bx]
		mov	ax,word [bp-8]
		mov	word [bx+8],ax
..@j19056:
		mov	bx,word [bp-22]
		mov	ax,word [bp-8]
		mov	word [bx],ax
..@j19035:
..@j18837:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_HANDLEERROR
EXTERN	U_$SYSTEM_$$_RETURNNILIFGROWHEAPFAILS
EXTERN	TC_$SYSTEM_$$_GROWHEAPSIZE2
EXTERN	TC_$SYSTEM_$$_GROWHEAPSIZE1
EXTERN	SYSTEM_$$_SYSOSALLOC$WORD$$POINTER
EXTERN	SYSTEM_$$_LEAVECRITICALSECTION$TRTLCRITICALSECTION
EXTERN	SYSTEM_$$_FINISH_WAITVARLIST$PFREELISTS
EXTERN	SYSTEM_$$_FINISH_WAITFIXEDLIST$PFREELISTS
EXTERN	SYSTEM_$$_ENTERCRITICALSECTION$TRTLCRITICALSECTION
EXTERN	U_$SYSTEM_$$_HEAP_LOCK
EXTERN	U_$SYSTEM_$$_ORPHANED_FREELISTS
EXTERN	SYSTEM_$$_FIND_FREE_OSCHUNK$PFREELISTS$WORD$WORD$WORD$$POSCHUNK
EXTERN	TC_$SYSTEM_$$_MAXKEPTOSCHUNKS
