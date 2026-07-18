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
	GLOBAL fpc_val_longword_shortstr
fpc_val_longword_shortstr:
	GLOBAL FPC_VAL_LONGWORD_SHORTSTR
FPC_VAL_LONGWORD_SHORTSTR:
		push	bp
		mov	bp,sp
		sub	sp,26
		mov	word [bp-4],0
		mov	word [bp-2],0
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-13]
		push	ax
		call	SYSTEM_$$_INITVAL$SHORTSTRING$BOOLEAN$BYTE$$SMALLINT
		mov	bx,word [bp+4]
		mov	word [bx],ax
		cmp	byte [bp-14],0
		jne	..@j7751
		jmp	..@j7753
..@j7753:
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,word [bp+4]
		cmp	ax,word [bx]
		jl	..@j7751
		jmp	..@j7752
..@j7751:
		jmp	..@j7739
..@j7752:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-26],al
		mov	byte [bp-25],0
		mov	si,word [bp-26]
		cmp	byte [bx+si],0
		je	..@j7754
		jmp	..@j7755
..@j7754:
		mov	bx,word [bp+4]
		cmp	word [bx],1
		jg	..@j7758
		jmp	..@j7757
..@j7758:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	ax,word [si]
		dec	ax
		mov	byte [bp-24],al
		mov	byte [bp-23],0
		mov	si,word [bp-24]
		cmp	byte [bx+si],48
		je	..@j7756
		jmp	..@j7757
..@j7756:
		mov	bx,word [bp+4]
		mov	word [bx],0
..@j7757:
		jmp	..@j7739
..@j7755:
		jmp	..@j7762
	ALIGN 2
..@j7761:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-16],al
		mov	byte [bp-15],0
		mov	si,word [bp-16]
		mov	al,byte [bx+si]
		test	al,al
		je	..@j7769
		sub	al,48
		jb	..@j7765
		sub	al,9
		jbe	..@j7766
		sub	al,8
		jb	..@j7765
		sub	al,5
		jbe	..@j7767
		sub	al,27
		jb	..@j7765
		sub	al,5
		jbe	..@j7768
		jmp	..@j7765
..@j7766:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-20],al
		mov	byte [bp-19],0
		mov	si,word [bp-20]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,48
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-8],cx
		mov	word [bp-6],ax
		jmp	..@j7764
..@j7767:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-22],al
		mov	byte [bp-21],0
		mov	si,word [bp-22]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,55
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-8],cx
		mov	word [bp-6],ax
		jmp	..@j7764
..@j7768:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-18],al
		mov	byte [bp-17],0
		mov	si,word [bp-18]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,87
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-8],cx
		mov	word [bp-6],ax
		jmp	..@j7764
..@j7769:
		jmp	..@j7763
		jmp	..@j7764
..@j7765:
		mov	word [bp-8],16
		mov	word [bp-6],0
..@j7764:
		mov	ax,word [bp-4]
		mov	word [bp-12],ax
		mov	ax,word [bp-2]
		mov	word [bp-10],ax
		mov	ax,0
		mov	dl,byte [bp-13]
		mov	dh,0
		cmp	ax,word [bp-6]
		jb	..@j7780
		ja	..@j7782
		cmp	dx,word [bp-8]
		jbe	..@j7780
		jmp	..@j7782
		jmp	..@j7782
..@j7782:
		mov	ax,0
		mov	dl,byte [bp-13]
		mov	dh,0
		push	ax
		push	dx
		mov	cx,word [bp-8]
		mov	bx,word [bp-6]
		mov	ax,-1
		mov	dx,-1
		sub	ax,cx
		sbb	dx,bx
		push	dx
		push	ax
		call	fpc_div_dword
		cmp	dx,word [bp-10]
		jb	..@j7780
		ja	..@j7781
		cmp	ax,word [bp-12]
		jb	..@j7780
		jmp	..@j7781
		jmp	..@j7781
..@j7780:
		mov	word [bp-4],0
		mov	word [bp-2],0
		jmp	..@j7739
..@j7781:
		push	word [bp-2]
		push	word [bp-4]
		mov	ax,0
		mov	dl,byte [bp-13]
		mov	dh,0
		push	ax
		push	dx
		mov	ax,0
		push	ax
		call	fpc_mul_dword
		mov	bx,word [bp-8]
		mov	cx,word [bp-6]
		add	bx,ax
		adc	cx,dx
		mov	word [bp-4],bx
		mov	word [bp-2],cx
		mov	bx,word [bp+4]
		inc	word [bx]
..@j7762:
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,word [bp+4]
		cmp	ax,word [bx]
		jge	..@j7761
		jmp	..@j7763
..@j7763:
		mov	bx,word [bp+4]
		mov	word [bx],0
..@j7739:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_mul_dword
EXTERN	fpc_div_dword
EXTERN	SYSTEM_$$_INITVAL$SHORTSTRING$BOOLEAN$BYTE$$SMALLINT
