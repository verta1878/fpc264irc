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
	GLOBAL SYSTEM$_$STR_REAL$crcEDBAA446_$$_GEN_DIGITS_64$TASCIIDIGITS$SMALLINT$QWORD$BOOLEAN$$SMALLINT
SYSTEM$_$STR_REAL$crcEDBAA446_$$_GEN_DIGITS_64$TASCIIDIGITS$SMALLINT$QWORD$BOOLEAN$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,24
		mov	bx,word [bp+6]
		mov	dx,word [bp+8]
		mov	cx,word [bp+10]
		mov	ax,word [bp+12]
		cmp	ax,0
		jb	..@j5806
		ja	..@j5807
		cmp	cx,0
		jb	..@j5806
		ja	..@j5807
		cmp	dx,15258
		jb	..@j5806
		ja	..@j5807
		cmp	bx,-13824
		jb	..@j5806
		jmp	..@j5807
..@j5806:
		mov	word [bp-24],0
		mov	word [bp-22],0
		mov	word [bp-20],0
		mov	word [bp-18],0
		mov	ax,word [bp+6]
		mov	word [bp-16],ax
		mov	ax,word [bp+8]
		mov	word [bp-14],ax
		jmp	..@j5814
..@j5807:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,15258
		push	ax
		mov	ax,-13824
		push	ax
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		call	fpc_div_qword
		mov	word [bp-12],dx
		mov	word [bp-10],cx
		mov	word [bp-8],bx
		mov	word [bp-6],ax
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,15258
		push	ax
		mov	ax,-13824
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_qword
		mov	si,word [bp+6]
		mov	di,word [bp+8]
		sub	si,dx
		sbb	di,cx
		mov	dx,si
		mov	cx,di
		mov	si,word [bp+10]
		mov	di,word [bp+12]
		sbb	si,bx
		sbb	di,ax
		mov	bx,si
		mov	ax,di
		mov	word [bp-16],dx
		mov	word [bp-14],cx
		mov	bx,word [bp-12]
		mov	dx,word [bp-10]
		mov	cx,word [bp-8]
		mov	ax,word [bp-6]
		cmp	ax,0
		jb	..@j5829
		ja	..@j5830
		cmp	cx,0
		jb	..@j5829
		ja	..@j5830
		cmp	dx,15258
		jb	..@j5829
		ja	..@j5830
		cmp	bx,-13824
		jb	..@j5829
		jmp	..@j5830
..@j5829:
		mov	word [bp-24],0
		mov	word [bp-22],0
		mov	ax,word [bp-12]
		mov	word [bp-20],ax
		mov	ax,word [bp-10]
		mov	word [bp-18],ax
		jmp	..@j5835
..@j5830:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,15258
		push	ax
		mov	ax,-13824
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		call	fpc_div_qword
		mov	word [bp-24],dx
		mov	word [bp-22],cx
		push	word [bp-22]
		push	word [bp-24]
		mov	ax,15258
		push	ax
		mov	ax,-13824
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		mov	cx,word [bp-12]
		mov	bx,word [bp-10]
		sub	cx,ax
		sbb	bx,dx
		mov	word [bp-20],cx
		mov	word [bp-18],bx
..@j5835:
..@j5814:
		mov	ax,word [bp+18]
		push	ax
		mov	ax,word [bp+16]
		push	ax
		push	word [bp+14]
		push	word [bp-22]
		push	word [bp-24]
		mov	ax,0
		push	ax
		call	SYSTEM$_$STR_REAL$crcEDBAA446_$$_GEN_DIGITS_32$TASCIIDIGITS$SMALLINT$LONGWORD$BOOLEAN$$SMALLINT
		mov	word [bp-4],ax
		cmp	byte [bp+4],0
		jne	..@j5864
		jmp	..@j5863
..@j5864:
		cmp	word [bp-4],0
		je	..@j5862
		jmp	..@j5863
..@j5862:
		mov	bx,word [bp+16]
		mov	si,word [bp+14]
		mov	byte [bx+si],0
		mov	word [bp-4],1
..@j5863:
		mov	ax,word [bp+18]
		push	ax
		mov	ax,word [bp+16]
		push	ax
		mov	dx,word [bp+14]
		mov	ax,word [bp-4]
		add	ax,dx
		push	ax
		push	word [bp-18]
		push	word [bp-20]
		cmp	word [bp-4],0
		mov	al,0
		je	..@j5879
		inc	ax
..@j5879:
		push	ax
		call	SYSTEM$_$STR_REAL$crcEDBAA446_$$_GEN_DIGITS_32$TASCIIDIGITS$SMALLINT$LONGWORD$BOOLEAN$$SMALLINT
		add	word [bp-4],ax
		mov	ax,word [bp+18]
		push	ax
		mov	ax,word [bp+16]
		push	ax
		mov	dx,word [bp+14]
		mov	ax,word [bp-4]
		add	ax,dx
		push	ax
		push	word [bp-14]
		push	word [bp-16]
		cmp	word [bp-4],0
		mov	al,0
		je	..@j5890
		inc	ax
..@j5890:
		push	ax
		call	SYSTEM$_$STR_REAL$crcEDBAA446_$$_GEN_DIGITS_32$TASCIIDIGITS$SMALLINT$LONGWORD$BOOLEAN$$SMALLINT
		add	word [bp-4],ax
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	SYSTEM$_$STR_REAL$crcEDBAA446_$$_GEN_DIGITS_32$TASCIIDIGITS$SMALLINT$LONGWORD$BOOLEAN$$SMALLINT
EXTERN	fpc_mul_longint
EXTERN	fpc_mul_qword
EXTERN	fpc_div_qword
