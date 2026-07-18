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
	GLOBAL fpc_unicodestr_setlength
fpc_unicodestr_setlength:
	GLOBAL FPC_UNICODESTR_SETLENGTH
FPC_UNICODESTR_SETLENGTH:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	ax,word [bp+4]
		mov	word [bp-6],ax
		cmp	word [bp+4],0
		jg	..@j11826
		jmp	..@j11827
..@j11826:
		mov	bx,word [bp+6]
		cmp	word [bx],0
		je	..@j11828
		jmp	..@j11829
..@j11828:
		push	word [bp-6]
		call	SYSTEM_$$_NEWUNICODESTRING$SMALLINT$$POINTER
		mov	bx,word [bp+6]
		mov	word [bx],ax
		jmp	..@j11834
..@j11829:
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		cmp	word [bx-4],1
		je	..@j11835
		jmp	..@j11836
..@j11835:
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		sub	ax,8
		mov	word [bp-2],ax
		push	word [bp-2]
		call	SYSTEM_$$_MEMSIZE$POINTER$$WORD
		mov	word [bp-8],ax
		mov	ax,word [bp+4]
		shl	ax,1
		add	ax,10
		mov	word [bp-10],ax
		mov	ax,word [bp-10]
		cmp	ax,word [bp-8]
		ja	..@j11845
		jmp	..@j11847
..@j11847:
		cmp	word [bp-8],32
		ja	..@j11848
		jmp	..@j11846
..@j11848:
		mov	ax,word [bp-8]
		shr	ax,1
		cmp	ax,word [bp-10]
		jae	..@j11845
		jmp	..@j11846
..@j11845:
		lea	ax,[bp-2]
		push	ax
		push	word [bp-10]
		call	SYSTEM_$$_REALLOCMEM$POINTER$WORD$$POINTER
		mov	ax,word [bp-2]
		add	ax,8
		mov	bx,word [bp+6]
		mov	word [bx],ax
..@j11846:
		jmp	..@j11855
..@j11836:
		push	word [bp-6]
		call	SYSTEM_$$_NEWUNICODESTRING$SMALLINT$$POINTER
		mov	word [bp-2],ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j11862
		mov	bx,word [bx-2]
..@j11862:
		cmp	bx,0
		jg	..@j11860
		jmp	..@j11861
..@j11860:
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j11865
		mov	bx,word [bx-2]
..@j11865:
		inc	bx
		cmp	bx,word [bp+4]
		jg	..@j11863
		jmp	..@j11864
..@j11863:
		mov	ax,word [bp+4]
		mov	word [bp-4],ax
		jmp	..@j11868
..@j11864:
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j11871
		mov	bx,word [bx-2]
..@j11871:
		inc	bx
		mov	word [bp-4],bx
..@j11868:
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		push	ax
		mov	ax,word [bp-2]
		push	ax
		mov	ax,word [bp-4]
		shl	ax,1
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j11861:
		mov	ax,word [bp+6]
		push	ax
		call	FPC_UNICODESTR_DECR_REF
		mov	bx,word [bp+6]
		mov	ax,word [bp-2]
		mov	word [bx],ax
..@j11855:
..@j11834:
		mov	ax,word [bp+4]
		shl	ax,1
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		add	bx,ax
		mov	word [bx],0
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bp-6]
		mov	word [bx-2],ax
		jmp	..@j11886
..@j11827:
		mov	ax,word [bp+6]
		push	ax
		call	FPC_UNICODESTR_DECR_REF
..@j11886:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_UNICODESTR_DECR_REF
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	SYSTEM_$$_REALLOCMEM$POINTER$WORD$$POINTER
EXTERN	SYSTEM_$$_MEMSIZE$POINTER$$WORD
EXTERN	SYSTEM_$$_NEWUNICODESTRING$SMALLINT$$POINTER
