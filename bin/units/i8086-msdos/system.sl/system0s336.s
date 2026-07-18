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
	GLOBAL fpc_val_smallint_shortstr
fpc_val_smallint_shortstr:
	GLOBAL FPC_VAL_SMALLINT_SHORTSTR
FPC_VAL_SMALLINT_SHORTSTR:
		push	bp
		mov	bp,sp
		sub	sp,26
		mov	word [bp-2],0
		mov	word [bp-6],0
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-13]
		push	ax
		call	SYSTEM_$$_INITVAL$SHORTSTRING$BOOLEAN$BYTE$$SMALLINT
		mov	bx,word [bp+4]
		mov	word [bx],ax
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,word [bp+4]
		cmp	ax,word [bx]
		jl	..@j7813
		jmp	..@j7814
..@j7813:
		jmp	..@j7799
..@j7814:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-26],al
		mov	byte [bp-25],0
		mov	si,word [bp-26]
		cmp	byte [bx+si],0
		je	..@j7815
		jmp	..@j7816
..@j7815:
		mov	bx,word [bp+4]
		cmp	word [bx],1
		jg	..@j7819
		jmp	..@j7818
..@j7819:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	ax,word [si]
		dec	ax
		mov	byte [bp-24],al
		mov	byte [bp-23],0
		mov	si,word [bp-24]
		cmp	byte [bx+si],48
		je	..@j7817
		jmp	..@j7818
..@j7817:
		mov	bx,word [bp+4]
		mov	word [bx],0
..@j7818:
		jmp	..@j7799
..@j7816:
		mov	ax,0
		mov	dl,byte [bp-13]
		mov	dh,0
		push	ax
		push	dx
		mov	ax,-1
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_div_dword
		mov	word [bp-10],ax
		cmp	byte [bp-13],10
		je	..@j7828
		jmp	..@j7829
..@j7828:
		mov	ax,0
		mov	dl,byte [bp-14]
		mov	dh,0
		add	dx,-1
		adc	ax,32767
		mov	word [bp-12],dx
		jmp	..@j7834
..@j7829:
		mov	word [bp-12],-1
..@j7834:
		jmp	..@j7838
	ALIGN 2
..@j7837:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-16],al
		mov	byte [bp-15],0
		mov	si,word [bp-16]
		mov	al,byte [bx+si]
		test	al,al
		je	..@j7845
		sub	al,48
		jb	..@j7841
		sub	al,9
		jbe	..@j7842
		sub	al,8
		jb	..@j7841
		sub	al,5
		jbe	..@j7843
		sub	al,27
		jb	..@j7841
		sub	al,5
		jbe	..@j7844
		jmp	..@j7841
..@j7842:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-20],al
		mov	byte [bp-19],0
		mov	si,word [bp-20]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,48
		mov	word [bp-4],ax
		jmp	..@j7840
..@j7843:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-22],al
		mov	byte [bp-21],0
		mov	si,word [bp-22]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,55
		mov	word [bp-4],ax
		jmp	..@j7840
..@j7844:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-18],al
		mov	byte [bp-17],0
		mov	si,word [bp-18]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,87
		mov	word [bp-4],ax
		jmp	..@j7840
..@j7845:
		jmp	..@j7839
		jmp	..@j7840
..@j7841:
		mov	word [bp-4],16
..@j7840:
		mov	ax,word [bp-6]
		mov	word [bp-8],ax
		mov	ax,word [bp-6]
		mov	dx,0
		push	dx
		push	ax
		mov	ax,0
		mov	dl,byte [bp-13]
		mov	dh,0
		push	ax
		push	dx
		mov	ax,0
		push	ax
		call	fpc_mul_dword
		mov	word [bp-6],ax
		mov	al,byte [bp-13]
		mov	ah,0
		cmp	ax,word [bp-4]
		jbe	..@j7864
		jmp	..@j7867
..@j7867:
		mov	ax,word [bp-12]
		mov	bx,0
		mov	dx,word [bp-4]
		mov	cx,0
		sub	ax,dx
		sbb	bx,cx
		mov	cx,word [bp-6]
		mov	dx,0
		cmp	bx,dx
		jb	..@j7864
		ja	..@j7866
		cmp	ax,cx
		jb	..@j7864
		jmp	..@j7866
..@j7866:
		mov	ax,word [bp-8]
		cmp	ax,word [bp-10]
		ja	..@j7864
		jmp	..@j7865
..@j7864:
		mov	word [bp-2],0
		jmp	..@j7799
..@j7865:
		mov	dx,word [bp-6]
		mov	ax,word [bp-4]
		add	ax,dx
		mov	word [bp-6],ax
		mov	bx,word [bp+4]
		inc	word [bx]
..@j7838:
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,word [bp+4]
		cmp	ax,word [bx]
		jge	..@j7837
		jmp	..@j7839
..@j7839:
		mov	bx,word [bp+4]
		mov	word [bx],0
		mov	dx,word [bp-6]
		mov	ax,0
		mov	word [bp-2],dx
		cmp	byte [bp-14],0
		jne	..@j7876
		jmp	..@j7877
..@j7876:
		mov	ax,word [bp-2]
		neg	ax
		mov	word [bp-2],ax
..@j7877:
..@j7799:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_mul_dword
EXTERN	fpc_div_dword
EXTERN	SYSTEM_$$_INITVAL$SHORTSTRING$BOOLEAN$BYTE$$SMALLINT
