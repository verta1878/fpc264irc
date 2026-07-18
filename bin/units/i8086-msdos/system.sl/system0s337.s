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
	GLOBAL fpc_val_word_shortstr
fpc_val_word_shortstr:
	GLOBAL FPC_VAL_WORD_SHORTSTR
FPC_VAL_WORD_SHORTSTR:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	word [bp-2],0
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-8]
		push	ax
		lea	ax,[bp-7]
		push	ax
		call	SYSTEM_$$_INITVAL$SHORTSTRING$BOOLEAN$BYTE$$SMALLINT
		mov	bx,word [bp+4]
		mov	word [bx],ax
		cmp	byte [bp-8],0
		jne	..@j7892
		jmp	..@j7894
..@j7894:
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,word [bp+4]
		cmp	ax,word [bx]
		jl	..@j7892
		jmp	..@j7893
..@j7892:
		jmp	..@j7880
..@j7893:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-20],al
		mov	byte [bp-19],0
		mov	si,word [bp-20]
		cmp	byte [bx+si],0
		je	..@j7895
		jmp	..@j7896
..@j7895:
		mov	bx,word [bp+4]
		cmp	word [bx],1
		jg	..@j7899
		jmp	..@j7898
..@j7899:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	ax,word [si]
		dec	ax
		mov	byte [bp-18],al
		mov	byte [bp-17],0
		mov	si,word [bp-18]
		cmp	byte [bx+si],48
		je	..@j7897
		jmp	..@j7898
..@j7897:
		mov	bx,word [bp+4]
		mov	word [bx],0
..@j7898:
		jmp	..@j7880
..@j7896:
		jmp	..@j7903
	ALIGN 2
..@j7902:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-10],al
		mov	byte [bp-9],0
		mov	si,word [bp-10]
		mov	al,byte [bx+si]
		test	al,al
		je	..@j7910
		sub	al,48
		jb	..@j7906
		sub	al,9
		jbe	..@j7907
		sub	al,8
		jb	..@j7906
		sub	al,5
		jbe	..@j7908
		sub	al,27
		jb	..@j7906
		sub	al,5
		jbe	..@j7909
		jmp	..@j7906
..@j7907:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-14],al
		mov	byte [bp-13],0
		mov	si,word [bp-14]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,48
		mov	word [bp-4],ax
		jmp	..@j7905
..@j7908:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-16],al
		mov	byte [bp-15],0
		mov	si,word [bp-16]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,55
		mov	word [bp-4],ax
		jmp	..@j7905
..@j7909:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-12],al
		mov	byte [bp-11],0
		mov	si,word [bp-12]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,87
		mov	word [bp-4],ax
		jmp	..@j7905
..@j7910:
		jmp	..@j7904
		jmp	..@j7905
..@j7906:
		mov	word [bp-4],16
..@j7905:
		mov	ax,word [bp-2]
		mov	word [bp-6],ax
		mov	al,byte [bp-7]
		mov	ah,0
		cmp	ax,word [bp-4]
		jbe	..@j7921
		jmp	..@j7923
..@j7923:
		mov	ax,0
		mov	dl,byte [bp-7]
		mov	dh,0
		push	ax
		push	dx
		mov	bx,word [bp-4]
		mov	cx,0
		mov	ax,-1
		mov	dx,-1
		sub	ax,bx
		sbb	dx,cx
		push	dx
		push	ax
		call	fpc_div_dword
		mov	cx,word [bp-6]
		mov	bx,0
		cmp	dx,bx
		jb	..@j7921
		ja	..@j7922
		cmp	ax,cx
		jb	..@j7921
		jmp	..@j7922
..@j7921:
		mov	word [bp-2],0
		jmp	..@j7880
..@j7922:
		mov	dx,word [bp-2]
		mov	ax,0
		push	ax
		push	dx
		mov	ax,0
		mov	dl,byte [bp-7]
		mov	dh,0
		push	ax
		push	dx
		mov	ax,0
		push	ax
		call	fpc_mul_dword
		mov	bx,word [bp-4]
		mov	cx,0
		add	bx,ax
		adc	cx,dx
		mov	word [bp-2],bx
		mov	bx,word [bp+4]
		inc	word [bx]
..@j7903:
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,word [bp+4]
		cmp	ax,word [bx]
		jge	..@j7902
		jmp	..@j7904
..@j7904:
		mov	bx,word [bp+4]
		mov	word [bx],0
..@j7880:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_mul_dword
EXTERN	fpc_div_dword
EXTERN	SYSTEM_$$_INITVAL$SHORTSTRING$BOOLEAN$BYTE$$SMALLINT
