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
	GLOBAL STRUTILS_$$_ISMATCH$crcE1A8BADC
STRUTILS_$$_ISMATCH$crcE1A8BADC:
		push	bp
		mov	bp,sp
		sub	sp,6
		push	word [bp+16]
		call	fpc_ansistr_incr_ref
		push	word [bp+14]
		call	fpc_ansistr_incr_ref
		mov	bx,word [bp+4]
		mov	byte [bx],0
		mov	byte [bp-1],1
	ALIGN 2
..@j3926:
		mov	bx,word [bp+14]
		mov	si,word [bp+12]
		cmp	byte [bx+si-1],42
		je	..@j3929
		jmp	..@j3930
..@j3929:
		inc	word [bp+12]
		jmp	..@j3932
	ALIGN 2
..@j3931:
		inc	word [bp+12]
		inc	word [bp+10]
..@j3932:
		mov	bx,word [bp+14]
		mov	si,word [bp+12]
		cmp	byte [bx+si-1],63
		je	..@j3931
		jmp	..@j3933
..@j3933:
	ALIGN 2
..@j3934:
		jmp	..@j3938
	ALIGN 2
..@j3937:
		inc	word [bp+10]
..@j3938:
		mov	bx,word [bp+16]
		mov	si,word [bp+10]
		mov	ax,word [bp+14]
		mov	word [bp-4],ax
		mov	di,word [bp+12]
		mov	al,byte [bx+si-1]
		mov	bx,word [bp-4]
		cmp	al,byte [bx+di-1]
		jne	..@j3940
		jmp	..@j3939
..@j3940:
		mov	ax,word [bp+10]
		cmp	ax,word [bp+8]
		jle	..@j3937
		jmp	..@j3939
..@j3939:
		mov	ax,word [bp+18]
		inc	ax
		push	ax
		push	word [bp+16]
		push	word [bp+14]
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		mov	ax,word [bp+4]
		push	ax
		call	STRUTILS_$$_ISMATCH$crcE1A8BADC
		mov	byte [bp-1],al
		cmp	byte [bp-1],0
		je	..@j3959
		jmp	..@j3960
..@j3959:
		inc	word [bp+10]
..@j3960:
		cmp	byte [bp-1],0
		jne	..@j3936
		jmp	..@j3961
..@j3961:
		mov	ax,word [bp+10]
		cmp	ax,word [bp+8]
		jge	..@j3936
		jmp	..@j3934
..@j3936:
		cmp	byte [bp-1],0
		jne	..@j3964
		jmp	..@j3963
..@j3964:
		mov	bx,word [bp+4]
		cmp	byte [bx],0
		jne	..@j3962
		jmp	..@j3963
..@j3962:
		jmp	..@j3920
..@j3963:
		jmp	..@j3927
..@j3930:
		mov	bx,word [bp+14]
		mov	si,word [bp+12]
		cmp	byte [bx+si-1],63
		je	..@j3965
		jmp	..@j3966
..@j3965:
		inc	word [bp+12]
		inc	word [bp+10]
		jmp	..@j3927
..@j3966:
		mov	bx,word [bp+16]
		mov	si,word [bp+10]
		mov	ax,word [bp+14]
		mov	word [bp-6],ax
		mov	di,word [bp+12]
		mov	al,byte [bx+si-1]
		mov	bx,word [bp-6]
		cmp	al,byte [bx+di-1]
		je	..@j3967
		jmp	..@j3968
..@j3967:
		inc	word [bp+12]
		inc	word [bp+10]
		jmp	..@j3927
..@j3968:
		mov	byte [bp-1],0
		jmp	..@j3920
..@j3927:
		mov	ax,word [bp+10]
		cmp	ax,word [bp+8]
		jg	..@j3928
		jmp	..@j3971
..@j3971:
		mov	ax,word [bp+12]
		cmp	ax,word [bp+6]
		jg	..@j3928
		jmp	..@j3926
..@j3928:
		mov	ax,word [bp+10]
		cmp	ax,word [bp+8]
		jle	..@j3972
		jmp	..@j3974
..@j3974:
		mov	ax,word [bp+12]
		cmp	ax,word [bp+6]
		jl	..@j3972
		jmp	..@j3973
..@j3972:
		mov	byte [bp-1],0
		jmp	..@j3977
..@j3973:
		mov	ax,word [bp+12]
		cmp	ax,word [bp+6]
		jg	..@j3978
		jmp	..@j3979
..@j3978:
		mov	bx,word [bp+4]
		mov	byte [bx],0
		jmp	..@j3982
..@j3979:
		mov	di,word [bp+4]
		mov	bx,word [bp+14]
		mov	si,word [bp+12]
		cmp	byte [bx+si-1],42
		mov	al,0
		jne	..@j3985
		inc	ax
..@j3985:
		mov	byte [di],al
		mov	bx,word [bp+4]
		cmp	byte [bx],0
		je	..@j3986
		jmp	..@j3987
..@j3986:
		mov	byte [bp-1],0
..@j3987:
..@j3982:
..@j3977:
..@j3920:
		lea	ax,[bp+16]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp+14]
		push	ax
		call	fpc_ansistr_decr_ref
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	fpc_ansistr_decr_ref
EXTERN	fpc_ansistr_incr_ref
