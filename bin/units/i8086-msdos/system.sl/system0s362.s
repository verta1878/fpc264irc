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
	GLOBAL fpc_ansistr_concat_multi
fpc_ansistr_concat_multi:
		push	bp
		mov	bp,sp
		sub	sp,52
		mov	word [bp-20],0
		mov	word [bp-44],0
		mov	ax,1
		push	ax
		lea	ax,[bp-38]
		push	ax
		lea	ax,[bp-32]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j8849
		cmp	word [bp+6],0
		je	..@j8851
		jmp	..@j8852
..@j8851:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		jmp	..@j8849
..@j8852:
		mov	ax,word [bp+4]
		mov	word [bp-22],ax
		cmp	word [bp-22],-1
		je	..@j8859
		jmp	..@j8860
..@j8859:
		mov	ax,word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		mov	word [bp-22],ax
..@j8860:
		mov	word [bp-2],0
		jmp	..@j8866
	ALIGN 2
..@j8865:
		inc	word [bp-2]
..@j8866:
		mov	ax,word [bp-2]
		cmp	ax,word [bp+6]
		jle	..@j8868
		jmp	..@j8867
..@j8868:
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		mov	si,ax
		shl	si,1
		cmp	word [bx+si],0
		je	..@j8865
		jmp	..@j8867
..@j8867:
		mov	ax,word [bp-2]
		cmp	ax,word [bp+6]
		jg	..@j8869
		jmp	..@j8870
..@j8869:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		jmp	..@j8849
..@j8870:
		mov	dx,word [bp-22]
		mov	ax,word [bp-22]
		sub	ax,1
		jbe	..@j8882
		jmp	..@j8881
..@j8882:
		mov	dx,word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		jmp	..@j8880
..@j8881:
..@j8880:
		mov	word [bp-22],dx
		mov	byte [bp-25],1
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		call	SYSTEM_$$_STRINGCODEPAGE$RAWBYTESTRING$$WORD
		mov	word [bp-42],ax
		mov	ax,word [bp-42]
		mov	dx,word [bp-42]
		sub	dx,1
		jbe	..@j8898
		jmp	..@j8897
..@j8898:
		mov	ax,word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		jmp	..@j8896
..@j8897:
..@j8896:
		mov	word [bp-24],ax
		mov	ax,word [bp+6]
		mov	word [bp-52],ax
		mov	ax,word [bp-2]
		inc	ax
		mov	word [bp-6],ax
		mov	ax,word [bp-52]
		cmp	ax,word [bp-6]
		jl	..@j8904
		dec	word [bp-6]
	ALIGN 2
..@j8905:
		inc	word [bp-6]
		mov	bx,word [bp+8]
		mov	ax,word [bp-6]
		mov	si,ax
		shl	si,1
		cmp	word [bx+si],0
		jne	..@j8908
		jmp	..@j8907
..@j8908:
		mov	bx,word [bp+8]
		mov	ax,word [bp-6]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		call	SYSTEM_$$_STRINGCODEPAGE$RAWBYTESTRING$$WORD
		mov	word [bp-42],ax
		mov	dx,word [bp-42]
		mov	ax,word [bp-42]
		sub	ax,1
		jbe	..@j8918
		jmp	..@j8917
..@j8918:
		mov	dx,word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		jmp	..@j8916
..@j8917:
..@j8916:
		cmp	dx,word [bp-24]
		jne	..@j8906
		jmp	..@j8907
..@j8906:
		mov	byte [bp-25],0
		jmp	..@j8904
..@j8907:
		mov	ax,word [bp-52]
		cmp	ax,word [bp-6]
		jg	..@j8905
..@j8904:
		cmp	byte [bp-25],0
		je	..@j8923
		jmp	..@j8924
..@j8923:
		lea	ax,[bp-20]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_unicodestr_assign
		mov	ax,word [bp+6]
		mov	word [bp-48],ax
		mov	ax,word [bp-2]
		mov	word [bp-6],ax
		mov	ax,word [bp-48]
		cmp	ax,word [bp-6]
		jl	..@j8932
		dec	word [bp-6]
	ALIGN 2
..@j8933:
		inc	word [bp-6]
		mov	bx,word [bp+8]
		mov	ax,word [bp-6]
		mov	si,ax
		shl	si,1
		cmp	word [bx+si],0
		jne	..@j8934
		jmp	..@j8935
..@j8934:
		lea	ax,[bp-20]
		push	ax
		push	word [bp-20]
		lea	ax,[bp-44]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bp-6]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-44]
		call	fpc_unicodestr_concat
..@j8935:
		mov	ax,word [bp-48]
		cmp	ax,word [bp-6]
		jg	..@j8933
..@j8932:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		push	word [bp-20]
		mov	ax,word [bp+10]
		push	ax
		push	word [bp-22]
		mov	bx,word [bp-20]
		test	bx,bx
		je	..@j8958
		mov	bx,word [bx-2]
..@j8958:
		push	bx
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+38]
		call	ax
		jmp	..@j8849
..@j8924:
		cmp	word [bp+4],-1
		je	..@j8959
		jmp	..@j8960
..@j8959:
		mov	ax,word [bp-24]
		mov	word [bp-22],ax
..@j8960:
		mov	word [bp-18],0
		mov	ax,word [bp-2]
		mov	word [bp-4],ax
		mov	bx,word [bp+10]
		cmp	word [bx],0
		jne	..@j8967
		jmp	..@j8968
..@j8967:
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		mov	si,ax
		shl	si,1
		mov	di,word [bp+10]
		mov	ax,word [bx+si]
		cmp	ax,word [di]
		je	..@j8969
		jmp	..@j8970
..@j8969:
		inc	word [bp-2]
..@j8970:
		mov	ax,word [bp+6]
		mov	word [bp-46],ax
		mov	ax,word [bp-2]
		mov	word [bp-6],ax
		mov	ax,word [bp-46]
		cmp	ax,word [bp-6]
		jl	..@j8974
		dec	word [bp-6]
	ALIGN 2
..@j8975:
		inc	word [bp-6]
		mov	bx,word [bp+8]
		mov	ax,word [bp-6]
		mov	si,ax
		shl	si,1
		mov	di,word [bp+10]
		mov	ax,word [bx+si]
		cmp	ax,word [di]
		je	..@j8976
		jmp	..@j8977
..@j8976:
		mov	bx,word [bp+10]
		mov	ax,word [bx]
		mov	word [bp-18],ax
		push	word [bp-18]
		call	FPC_ANSISTR_INCR_REF
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		jmp	..@j8974
..@j8977:
		mov	ax,word [bp-46]
		cmp	ax,word [bp-6]
		jg	..@j8975
..@j8974:
..@j8968:
		mov	ax,word [bp-2]
		cmp	ax,word [bp-4]
		je	..@j8984
		jmp	..@j8985
..@j8984:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
..@j8985:
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j8992
		mov	bx,word [bx-2]
..@j8992:
		mov	word [bp-16],bx
		mov	word [bp-14],0
		mov	dx,word [bp+6]
		mov	ax,word [bp-4]
		mov	word [bp-6],ax
		cmp	dx,word [bp-6]
		jl	..@j8998
		dec	word [bp-6]
	ALIGN 2
..@j8999:
		inc	word [bp-6]
		mov	bx,word [bp+8]
		mov	ax,word [bp-6]
		mov	si,ax
		shl	si,1
		mov	bx,word [bx+si]
		test	bx,bx
		je	..@j9000
		mov	bx,word [bx-2]
..@j9000:
		add	word [bp-14],bx
		cmp	dx,word [bp-6]
		jg	..@j8999
..@j8998:
		mov	ax,word [bp+10]
		push	ax
		push	word [bp-14]
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	bx,word [bp+10]
		mov	dx,word [bx]
		mov	ax,word [bp-16]
		add	ax,dx
		mov	word [bp-10],ax
		mov	ax,word [bp+6]
		mov	word [bp-50],ax
		mov	ax,word [bp-2]
		mov	word [bp-6],ax
		mov	ax,word [bp-50]
		cmp	ax,word [bp-6]
		jl	..@j9012
		dec	word [bp-6]
	ALIGN 2
..@j9013:
		inc	word [bp-6]
		mov	bx,word [bp+8]
		mov	ax,word [bp-6]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		mov	word [bp-8],ax
		cmp	word [bp-8],0
		jne	..@j9016
		jmp	..@j9017
..@j9016:
		mov	bx,word [bp-8]
		test	bx,bx
		je	..@j9020
		mov	bx,word [bx-2]
..@j9020:
		mov	word [bp-12],bx
		mov	ax,word [bp-8]
		push	ax
		mov	ax,word [bp-10]
		push	ax
		mov	ax,word [bp-12]
		inc	ax
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	ax,word [bp-12]
		add	word [bp-10],ax
..@j9017:
		mov	ax,word [bp-50]
		cmp	ax,word [bp-6]
		jg	..@j9013
..@j9012:
		mov	ax,word [bp+10]
		push	ax
		push	word [bp-24]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
		mov	ax,word [bp+10]
		push	ax
		push	word [bp-22]
		mov	ax,1
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
		lea	ax,[bp-18]
		push	ax
		call	FPC_ANSISTR_DECR_REF
..@j8849:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-44]
		push	ax
		call	fpc_unicodestr_decr_ref
		lea	ax,[bp-20]
		push	ax
		call	fpc_unicodestr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j8850
		call	FPC_RERAISE
..@j8850:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_RERAISE
EXTERN	fpc_unicodestr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_ANSISTR_DECR_REF
EXTERN	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	fpc_ansistr_setlength
EXTERN	FPC_ANSISTR_INCR_REF
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	fpc_unicodestr_concat
EXTERN	fpc_ansistr_to_unicodestr
EXTERN	fpc_unicodestr_assign
EXTERN	SYSTEM_$$_STRINGCODEPAGE$RAWBYTESTRING$$WORD
EXTERN	U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
